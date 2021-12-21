package org.csu.myjpetstore.persistence.impl;

import org.csu.myjpetstore.domain.Sequence;
import org.csu.myjpetstore.persistence.DBUtil;
import org.csu.myjpetstore.persistence.SequenceDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SequenceDAOImpl implements SequenceDAO {
    private static final String GET_SEQUENCE = "SELECT name, nextid FROM sequence WHERE name = ?";
    private static final String UPDATE_SEQUENCE = "UPDATE sequence set nextid = ? WHERE name = ?";
    @Override
    public Sequence getSequence(Sequence sequence) {
        Sequence sequence1 = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = DBUtil.getConnection();
            preparedStatement = connection.prepareStatement(GET_SEQUENCE);
            preparedStatement.setString(1, sequence.getName());
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                sequence1 = new Sequence();
                sequence1.setName(resultSet.getString(1));
                sequence1.setNextId(resultSet.getInt(2));
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, preparedStatement, resultSet);
        }

        return sequence1;
    }

    @Override
    public void updateSequence(Sequence sequence) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = DBUtil.getConnection();
            preparedStatement = connection.prepareStatement(UPDATE_SEQUENCE);
            preparedStatement.setInt(1, sequence.getNextId());
            preparedStatement.setString(2, sequence.getName());
            preparedStatement.executeUpdate();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, preparedStatement, null);
        }

    }
}
