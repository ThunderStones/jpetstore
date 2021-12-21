package org.csu.myjpetstore.service;

import org.csu.myjpetstore.domain.Item;
import org.csu.myjpetstore.domain.LineItem;
import org.csu.myjpetstore.domain.Order;
import org.csu.myjpetstore.domain.Sequence;
import org.csu.myjpetstore.persistence.OrderDAO;
import org.csu.myjpetstore.persistence.impl.ItemDAOImpl;
import org.csu.myjpetstore.persistence.impl.LineItemDAOImpl;
import org.csu.myjpetstore.persistence.impl.OrderDAOImpl;
import org.csu.myjpetstore.persistence.impl.SequenceDAOImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderService {
    private final ItemDAOImpl itemDAO = new ItemDAOImpl();
    private final OrderDAOImpl orderDAO = new OrderDAOImpl();
    private final SequenceDAOImpl sequenceDAO = new SequenceDAOImpl();
    private final LineItemDAOImpl lineItemDAO = new LineItemDAOImpl();

    public void insertOrder(Order order){
        order.setOrderId(getNextId("ordernum"));

        int i;
        LineItem lineItem;
        for (i = 0; i < order.getLineItems().size(); ++i) {
            lineItem = (LineItem) order.getLineItems().get(i);
            String itemId = lineItem.getItemId();
            Integer increment = lineItem.getQuantity();
            Map<String, Object> param = new HashMap<>(2);
            param.put("itemId", itemId);
            param.put("increment", increment);
            itemDAO.updateInventoryQuantity(param);
        }
        orderDAO.insertOrder(order);
        orderDAO.insertOrderStatus(order);

        for (i = 0; i < order.getLineItems().size(); i++) {
            lineItem = (LineItem) order.getLineItems().get(i);
            lineItem.setOrderId(order.getOrderId());
            lineItemDAO.insertLineItem(lineItem);
        }
    }

    public Order getOrder(int orderId) {
        Order order = orderDAO.getOrder(orderId);
        order.setLineItems(lineItemDAO.getLineItemsByOrderId(orderId));

        for (int i = 0; i < order.getLineItems().size(); i++) {
            LineItem lineItem = (LineItem) order.getLineItems().get(i);
            Item item = itemDAO.getItem(lineItem.getItemId());
            item.setQuantity(itemDAO.getInventoryQuantity(lineItem.getItemId()));
            lineItem.setItem(item);
        }
        return order;
    }

    public List<Order> getOrderByUsername(String username) {
        return orderDAO.getOrdersByUsername(username);
    }

    public int getNextId(String name) {
        int id = 0;
        Sequence sequence = new Sequence(name, -1);
        sequence = sequenceDAO.getSequence(sequence);
        if (sequence == null) {
            throw new RuntimeException("Error: A null sequence was returned from the database (could not get next " + name + " sequence).");
        } else {
            id = sequence.getNextId();
            sequence.setNextId(id + 1);
            new SequenceDAOImpl().updateSequence(sequence);
        }

        return id + 1;
    }
}
