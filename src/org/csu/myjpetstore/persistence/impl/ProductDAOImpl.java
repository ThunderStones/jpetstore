package org.csu.myjpetstore.persistence.impl;

import org.csu.myjpetstore.domain.Product;
import org.csu.myjpetstore.persistence.DBUtil;
import org.csu.myjpetstore.persistence.ProductDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAOImpl implements ProductDAO {
    private static final String GET_PRODUCT_LIST_BY_CATEGORY = "SELECT * FROM product WHERE category = ?";
    private static final String GET_PRODUCT = "SELECT * FROM product WHERE productid = ?";
    private static final String SEARCH_PRODUCT_LIST = "SELECT PRODUCTID, NAME, DESCN as description, CATEGORY as categoryId FROM PRODUCT WHERE lower(name) like ?";

    @Override
    public List<Product> getProductListByCategory(String categoryId) {
        List<Product> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pStatement = null;
        ResultSet resultSet = null;
        try {
            conn = DBUtil.getConnection();
            pStatement = conn.prepareStatement(GET_PRODUCT_LIST_BY_CATEGORY);
            pStatement.setString(1, categoryId);
            resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                Product product = new Product();
                product.setProductId(resultSet.getString(1));
                product.setCategoryId(resultSet.getString(2));
                product.setName(resultSet.getString(3));
                product.setDescription(resultSet.getString(4));
                list.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pStatement, resultSet);
        }
        return list;
    }

    @Override
    public Product getProduct(String productId) {
        Product product = null;
        Connection conn = null;
        PreparedStatement pStatement = null;
        ResultSet resultSet = null;
        try {
            conn = DBUtil.getConnection();
            pStatement = conn.prepareStatement(GET_PRODUCT);
            pStatement.setString(1, productId);
            resultSet = pStatement.executeQuery();
            if (resultSet.next()) {
                product = new Product();
                product.setProductId(resultSet.getString(1));
                product.setCategoryId(resultSet.getString(2));
                product.setName(resultSet.getString(3));
                product.setDescription(resultSet.getString(4));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pStatement, resultSet);
        }
        return product;
    }

    @Override
    public List<Product> searchProductList(String keywords) {
        List<Product> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pStatement = null;
        ResultSet resultSet = null;
        try {
            conn = DBUtil.getConnection();
            pStatement = conn.prepareStatement(SEARCH_PRODUCT_LIST);
            pStatement.setString(1, keywords);
            resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                Product product = new Product();
                product.setProductId(resultSet.getString(1));
                product.setName(resultSet.getString(2));
                product.setDescription(resultSet.getString(3));
                product.setCategoryId(resultSet.getString(4));
                list.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pStatement, resultSet);
        }
        return list;
    }
}
