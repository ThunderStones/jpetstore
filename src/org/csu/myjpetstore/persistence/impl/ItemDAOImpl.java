package org.csu.myjpetstore.persistence.impl;

import org.csu.myjpetstore.domain.Item;
import org.csu.myjpetstore.domain.Product;
import org.csu.myjpetstore.persistence.DBUtil;
import org.csu.myjpetstore.persistence.ItemDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ItemDAOImpl implements ItemDAO {
    private static final String UPDATE_INVENTORY_QUANTITY = "UPDATE INVENTORY SET QTY = QTY - ? WHERE ITEMID = ?";
    private static final String GET_INVENTORY_QUANTITY = "SELECT qty FROM inventory WHERE itemid = ?";
    private static final String GET_ITEM_LIST_BY_PRODUCT = "SELECT I.itemid, listprice, unitcost, supplier AS supplierId, I.productid, name, descn, category, status, attr1, attr2, attr3, attr4, attr5, qty FROM item I, inventory V, product P WHERE P.productid = I.productid AND I.itemid = V.itemid AND I.productid = ?";
    private static final String GET_ITEM = "SELECT I.itemid, listprice, unitcost, supplier AS supplierId, I.productid, name, descn, category, status, attr1, attr2, attr3, attr4, attr5, qty FROM item I, inventory V, product P WHERE P.productid = I.productid AND I.itemid = V.itemid AND I.itemid = ?";
    @Override
    public void updateInventoryQuantity(Map<String, Object> map) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = DBUtil.getConnection();
            preparedStatement = connection.prepareStatement(UPDATE_INVENTORY_QUANTITY);
            String itemId = map.keySet().iterator().next();
            System.out.println(map.get(itemId));
            Integer increment = (Integer) map.get("increment");
            preparedStatement.setInt(1, increment);
            preparedStatement.setString(2, itemId);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            DBUtil.close(connection, preparedStatement, null);
        }
    }

    @Override
    public int getInventoryQuantity(String itemId) {
        int quantity = 0;
        Connection conn = null;
        PreparedStatement pStatement = null;
        ResultSet resultSet = null;
        try {
            conn = DBUtil.getConnection();
            pStatement = conn.prepareStatement(GET_INVENTORY_QUANTITY);
            pStatement.setString(1, itemId);
            resultSet = pStatement.executeQuery();
            if (resultSet.next()) {
                quantity = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pStatement, resultSet);
        }
        return quantity;
    }

    @Override
    public List<Item> getItemListByProduct(String productId) {
        List<Item> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pStatement = null;
        ResultSet resultSet = null;
        try {
            conn = DBUtil.getConnection();
            pStatement = conn.prepareStatement(GET_ITEM_LIST_BY_PRODUCT);
            pStatement.setString(1, productId);
            resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                Item item = new Item();
                setToItem(resultSet, item);
                list.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pStatement, resultSet);
        }
        return list;
    }

    private void setToItem(ResultSet resultSet, Item item) throws SQLException {
        item.setItemId(resultSet.getString(1));
        item.setListPrice(resultSet.getBigDecimal(2));
        item.setUnitCost(resultSet.getBigDecimal(3));
        item.setSupplierId(resultSet.getInt(4));
        Product product = new Product();
        product.setProductId(resultSet.getString(5));
        product.setName(resultSet.getString(6));
        product.setDescription(resultSet.getString(7));
        product.setCategoryId(resultSet.getString(8));
        item.setStatus(resultSet.getString(9));
        item.setAttribute1(resultSet.getString(10));
        item.setAttribute2(resultSet.getString(11));
        item.setAttribute3(resultSet.getString(12));
        item.setAttribute4(resultSet.getString(13));
        item.setAttribute5(resultSet.getString(14));
        item.setQuantity(resultSet.getInt(15));
        item.setProduct(product);
//        item.setProductId(product.getProductId());
    }

    @Override
    public Item getItem(String itemId) {
        Item item = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = DBUtil.getConnection();
            preparedStatement = connection.prepareStatement(GET_ITEM);
            preparedStatement.setString(1, itemId);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                item = new Item();
                setToItem(resultSet, item);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            DBUtil.close(connection, preparedStatement, resultSet);
        }

        return item;
    }
}
