package org.csu.myjpetstore.persistence.impl;

import org.csu.myjpetstore.domain.Log;
import org.csu.myjpetstore.persistence.DBUtil;
import org.csu.myjpetstore.persistence.LogDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class LogDAOImpl implements LogDAO {
    private static final String INSERT_LOG = "INSERT INTO logs(userId, operate, logInfo, date) VALUES (?,?,?,?)";
    @Override
    public void insertLog(Log log) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        connection = DBUtil.getConnection();
        try {
            preparedStatement = connection.prepareStatement(INSERT_LOG);
            preparedStatement.setString(1, log.getUsername());
            preparedStatement.setString(2, log.getOperate());
            preparedStatement.setString(3, log.getUrl());
            preparedStatement.setString(4, df.format(log.getDate()));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(connection, preparedStatement, null);
        }
    }
}
