package org.csu.myjpetstore.persistence.impl;

import org.csu.myjpetstore.persistence.CartDAO;
import org.csu.myjpetstore.persistence.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CartDAOImpl implements CartDAO {
    private static final String INSERT_CART = "INSERT INTO cart(userId, cartString) VALUES (?,?)";
    private static final String UPDATE_CART = "UPDATE cart SET cartString = ? WHERE userId = ?";
    private static final String GET_CART_STRING = "SELECT cartString FROM cart WHERE userId = ?";
    @Override
    public void insertCart(String username, byte[] cartString) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = DBUtil.getConnection();
            preparedStatement = connection.prepareStatement(INSERT_CART);
            preparedStatement.setString(1, username);
            preparedStatement.setBytes(2, cartString);
            System.out.println(cartString);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(connection, preparedStatement, null);
        }
    }

    @Override
    public void updateCart(String username, byte[] cartString) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = DBUtil.getConnection();
            preparedStatement = connection.prepareStatement(UPDATE_CART);
            preparedStatement.setBytes(1, cartString);
            preparedStatement.setString(2, username);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(connection, preparedStatement, null);
        }
    }

    @Override
    public byte[] getCartString(String username) {
        byte[] cartString = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = DBUtil.getConnection();
            preparedStatement = connection.prepareStatement(GET_CART_STRING);
            preparedStatement.setString(1, username);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                cartString = resultSet.getBytes(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(connection, preparedStatement, null);
        }
        return cartString;
    }
}
