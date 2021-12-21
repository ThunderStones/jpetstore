package org.csu.myjpetstore.persistence.impl;

import org.csu.myjpetstore.domain.Order;
import org.csu.myjpetstore.persistence.DBUtil;
import org.csu.myjpetstore.persistence.OrderDAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDAOImpl implements OrderDAO {
    private static final String GET_ORDER = "SELECT billaddr1, billaddr2, billcity, billcountry, billstate, billtofirstname, billtolastname, billzip, shipaddr1, shipaddr2, shipcity, shipcountry, shipstate, shiptofirstname, shiptolastname, shipzip, cardtype, courier, creditcard, exprdate, locale, orderdate, orders.orderId, totalprice, userid, status FROM orders, orderstatus WHERE orders.orderid = ? AND orders.orderid = orderstatus.orderid";
    private static final String GET_ORDERS_BY_USERNAME = "SELECT billaddr1, billaddr2, billcity, billcountry, billstate, billtofirstname, billtolastname, billzip, shipaddr1, shipaddr2, shipcity, shipcountry, shipstate, shiptofirstname, shiptolastname, shipzip, cardtype, courier, creditcard, exprdate, locale, orderdate, orders.orderId, totalprice, userid, status FROM orders, orderstatus WHERE orders.userid = ? AND orders.orderid = orderstatus.orderid";
    private static final String INSERT_ORDER = "INSERT INTO orders (orderid, userid, orderdate, shipaddr1, shipaddr2, shipcity, shipstate, shipzip, shipcountry, billaddr1, billaddr2, billcity, billstate, billzip, billcountry, courier, totalprice, billtofirstname, billtolastname, shiptofirstname, shiptolastname, creditcard, exprdate, cardtype, locale) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    private static final String INSERT_ORDER_STATUS = "INSERT INTO orderstatus(orderid, linenum, timestamp, status) VALUES (?,?,?,?)";
    @Override
    public List<Order> getOrdersByUsername(String username) {
        List<Order> orderList = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = DBUtil.getConnection();
            preparedStatement = connection.prepareStatement(GET_ORDERS_BY_USERNAME);
            preparedStatement.setString(1, username);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Order order = new Order();
                setResultSetToOrder(resultSet, order);
                orderList.add(order);
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, preparedStatement, resultSet);
        }
        return orderList;
    }

    private void setResultSetToOrder(ResultSet resultSet, Order order) throws SQLException {
        order.setBillAddress1(resultSet.getString(1));
        order.setBillAddress2(resultSet.getString(2));
        order.setBillCity(resultSet.getString(3));
        order.setBillCountry(resultSet.getString(4));
        order.setBillState(resultSet.getString(5));
        order.setBillToFirstName(resultSet.getString(6));
        order.setBillToLastName(resultSet.getString(7));
        order.setBillZip(resultSet.getString(8));
        order.setShipAddress1(resultSet.getString(9));
        order.setShipAddress2(resultSet.getString(10));
        order.setShipCity(resultSet.getString(11));
        order.setShipCountry(resultSet.getString(12));
        order.setShipState(resultSet.getString(13));
        order.setShipToFirstName(resultSet.getString(14));
        order.setShipToLastName(resultSet.getString(15));
        order.setShipZip(resultSet.getString(16));
        order.setCardType(resultSet.getString(17));
        order.setCourier(resultSet.getString(18));
        order.setCreditCard(resultSet.getString(19));
        order.setExpiryDate(resultSet.getString(20));
        order.setLocale(resultSet.getString(21));
        order.setOrderDate(resultSet.getDate(22));
        order.setOrderId(resultSet.getInt(23));
        order.setTotalPrice(resultSet.getBigDecimal(24));
        order.setUsername(resultSet.getString(25));
        order.setStatus(resultSet.getString(26));
    }

    @Override
    public Order getOrder(int orderId) {
        Order order = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = DBUtil.getConnection();
            preparedStatement = connection.prepareStatement(GET_ORDER);
            preparedStatement.setInt(1, orderId);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                order = new Order();
                setResultSetToOrder(resultSet, order);
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, preparedStatement, resultSet);
        }
        return order;
    }

    @Override
    public void insertOrder(Order order) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = DBUtil.getConnection();
            preparedStatement = connection.prepareStatement(INSERT_ORDER);
            preparedStatement.setInt(1, order.getOrderId());
            preparedStatement.setString(2, order.getUsername());
            preparedStatement.setDate(3,  new java.sql.Date(order.getOrderDate().getTime()));
            preparedStatement.setString(4, order.getShipAddress1());
            preparedStatement.setString(5, order.getShipAddress2());
            preparedStatement.setString(6, order.getShipCity());
            preparedStatement.setString(7, order.getShipState());
            preparedStatement.setString(8, order.getShipZip());
            preparedStatement.setString(9, order.getShipCountry());
            preparedStatement.setString(10, order.getBillAddress1());
            preparedStatement.setString(11, order.getBillAddress2());
            preparedStatement.setString(12, order.getBillCity());
            preparedStatement.setString(13, order.getBillState());
            preparedStatement.setString(14, order.getBillZip());
            preparedStatement.setString(15, order.getBillCountry());
            preparedStatement.setString(16, order.getCourier());
            preparedStatement.setBigDecimal(17, order.getTotalPrice());
            preparedStatement.setString(18, order.getBillToFirstName());
            preparedStatement.setString(19, order.getBillToLastName());
            preparedStatement.setString(20, order.getShipToFirstName());
            preparedStatement.setString(21, order.getShipToLastName());
            preparedStatement.setString(22, order.getCreditCard());
            preparedStatement.setString(23, order.getExpiryDate());
            preparedStatement.setString(24, order.getCardType());
            preparedStatement.setString(25, order.getLocale());
            preparedStatement.executeUpdate();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, preparedStatement, null);
        }
    }

    @Override
    public void insertOrderStatus(Order order) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = DBUtil.getConnection();
            preparedStatement = connection.prepareStatement(INSERT_ORDER_STATUS);
            preparedStatement.setInt(1, order.getOrderId());
            preparedStatement.setInt(2, order.getOrderId());
            preparedStatement.setDate(3, new java.sql.Date(order.getOrderDate().getTime()));
            preparedStatement.setString(4, order.getStatus());
            preparedStatement.executeUpdate();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, preparedStatement, null);
        }
    }
}
