package org.csu.myjpetstore.persistence.impl;

import org.csu.myjpetstore.domain.Category;
import org.csu.myjpetstore.persistence.CategoryDAO;
import org.csu.myjpetstore.persistence.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CateDAOImpl implements CategoryDAO {
    private static final String GET_CATEGORY_LIST = "SELECT CATID AS categoryId, NAME, DESCN AS description FROM CATEGORY";
    private static final String GET_CATEGORY = "SELECT * FROM category WHERE catid = ?";
    @Override
    public Category getCategory(String CategoryId) {
        Category category = null;
        Connection conn = null;
        PreparedStatement pStatement = null;
        ResultSet resultSet = null;
        try {
            conn = DBUtil.getConnection();
            pStatement = conn.prepareStatement(GET_CATEGORY);
            pStatement.setString(1, CategoryId);
            resultSet = pStatement.executeQuery();
            if (resultSet.next()) {
                category = new Category();
                category.setCategoryId(resultSet.getString(1));
                category.setName(resultSet.getString(2));
                category.setDescription(resultSet.getString(3));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pStatement, resultSet);
        }
        return category;
    }

    @Override
    public List<Category> getCategoryList() {
        List<Category> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pStatement = null;
        ResultSet resultSet = null;
        try {
            conn = DBUtil.getConnection();
            pStatement = conn.prepareStatement(GET_CATEGORY_LIST);
            resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                Category category = new Category();
                category.setCategoryId(resultSet.getString(1));
                category.setName(resultSet.getString(2));
                category.setDescription(resultSet.getString(3));
                list.add(category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pStatement, resultSet);
        }
        return list;
    }
}
