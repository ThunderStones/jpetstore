package org.csu.myjpetstore.persistence.impl;

import org.csu.myjpetstore.domain.Account;
import org.csu.myjpetstore.persistence.AccountDAO;
import org.csu.myjpetstore.persistence.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAOImpl implements AccountDAO {
    private static final String GET_ACCOUNT_BY_USERNAME = "SELECT signon.username, account.email, account.firstname, account.lastname, account.status, account.addr1, account.addr2, account.city, account.state, account.zip, account.country, account.phone, profile.langpref, profile.favcategory, profile.mylistopt, profile.banneropt, bannerdata.bannername FROM account, profile, signon, bannerdata WHERE account.userid = ? AND signon.username = account.userid AND profile.userid = account.userid AND profile.favcategory = bannerdata.favcategory";
    private static final String GET_ACCOUNT_BY_USERNAME_AND_PASSWORD = "SELECT signon.username, account.email, account.firstname, account.lastname, account.status, account.addr1, account.addr2, account.city, account.state, account.zip, account.country, account.phone, profile.langpref, profile.favcategory, profile.mylistopt, profile.banneropt, bannerdata.bannername FROM account, profile, signon, bannerdata WHERE account.userid = ? AND signon.password = ? AND signon.username = account.userid AND profile.userid = account.userid AND profile.favcategory = bannerdata.favcategory";
    private static final String INSERT_ACCOUNT = "INSERT INTO account(email, firstname, lastname, status, addr1, addr2, city, state, zip, country, phone, userid) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
    private static final String INSERT_PROFILE = "INSERT INTO profile(langpref, favcategory, userid, mylistopt, banneropt) VALUES (?,?,?,?,?)";
    private static final String INSERT_SIGNON = "INSERT INTO signon(password, username) VALUES (?,?)";
    private static final String UPDATE_ACCOUNT = "UPDATE account SET email = ?, firstname = ?, lastname = ?, status = ?, addr1 = ?, addr2 = ?, city = ?, state = ?, zip = ?, country = ?, phone = ? WHERE userid = ?";
    private static final String UPDATE_PROFILE = "UPDATE profile SET langpref = ?, favcategory = ?, mylistopt = ?, banneropt = ?  WHERE userid = ?";
    private static final String UPDATE_SIGNON = "UPDATE signon SET password = ? WHERE username = ?";

    @Override
    public Account getAccountByUsername(String username) {
        Account account = null;
        Connection connection = null;
        PreparedStatement pStatement = null;
        ResultSet resultSet = null;
        try {
            connection = DBUtil.getConnection();
            pStatement = connection.prepareStatement(GET_ACCOUNT_BY_USERNAME);
            pStatement.setString(1, username);
            resultSet = pStatement.executeQuery();
            if (resultSet.next()) {
                account = new Account();
                account.setUsername(resultSet.getString(1));
                account.setEmail(resultSet.getString(2));
                account.setFirstName(resultSet.getString(3));
                account.setLastName(resultSet.getString(4));
                account.setStatus(resultSet.getString(5));
                account.setAddress1(resultSet.getString(6));
                account.setAddress2(resultSet.getString(7));
                account.setCity(resultSet.getString(8));
                account.setState(resultSet.getString(9));
                account.setZip(resultSet.getString(10));
                account.setCountry(resultSet.getString(11));
                account.setPhone(resultSet.getString(12));
                account.setLanguagePreference(resultSet.getString(13));
                account.setFavouriteCategoryId(resultSet.getString(14));
                account.setListOption(resultSet.getInt(15) == 1);
                account.setBannerOption(resultSet.getInt(16) == 1);
                account.setBannerName(resultSet.getString(17));
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, pStatement, resultSet);
        }
        return account;
    }

    @Override
    public Account getAccountByUsernameAndPassword(Account account) {
        Account account1 = null;
        Connection connection = null;
        PreparedStatement pStatement = null;
        ResultSet resultSet = null;
        try {
            connection = DBUtil.getConnection();
            pStatement = connection.prepareStatement(GET_ACCOUNT_BY_USERNAME_AND_PASSWORD);
            pStatement.setString(1, account.getUsername());
            pStatement.setString(2, account.getPassword());
            resultSet = pStatement.executeQuery();
            if (resultSet.next()) {
                account1 = new Account();
                account1.setUsername(resultSet.getString(1));
                account1.setEmail(resultSet.getString(2));
                account1.setFirstName(resultSet.getString(3));
                account1.setLastName(resultSet.getString(4));
                account1.setStatus(resultSet.getString(5));
                account1.setAddress1(resultSet.getString(6));
                account1.setAddress2(resultSet.getString(7));
                account1.setCity(resultSet.getString(8));
                account1.setState(resultSet.getString(9));
                account1.setZip(resultSet.getString(10));
                account1.setCountry(resultSet.getString(11));
                account1.setPhone(resultSet.getString(12));
                account1.setLanguagePreference(resultSet.getString(13));
                account1.setFavouriteCategoryId(resultSet.getString(14));
                account1.setListOption(resultSet.getInt(15) == 1);
                account1.setBannerOption(resultSet.getInt(16) == 1);
                account1.setBannerName(resultSet.getString(17));
            }
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, pStatement, resultSet);
        }
        return account1;
    }

    @Override
    public void insertAccount(Account account) {
        Connection connection = null;
        PreparedStatement pStatement = null;
        try {
            connection = DBUtil.getConnection();
            pStatement = connection.prepareStatement(INSERT_ACCOUNT);
            pStatement.setString(1, account.getEmail());
            pStatement.setString(2, account.getFirstName());
            pStatement.setString(3, account.getLastName());
            pStatement.setString(4, account.getStatus());
            pStatement.setString(5, account.getAddress1());
            pStatement.setString(6, account.getAddress2());
            pStatement.setString(7, account.getCity());
            pStatement.setString(8, account.getState());
            pStatement.setString(9, account.getZip());
            pStatement.setString(10, account.getCountry());
            pStatement.setString(11, account.getPhone());
            pStatement.setString(12, account.getUsername());
            pStatement.executeUpdate();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, pStatement, null);
        }
    }

    @Override
    public void insertProfile(Account account) {
        Connection connection = null;
        PreparedStatement pStatement = null;
        try {
            connection = DBUtil.getConnection();
            pStatement = connection.prepareStatement(INSERT_PROFILE);
            pStatement.setString(1, account.getLanguagePreference());
            pStatement.setString(2, account.getFavouriteCategoryId());
            pStatement.setString(3, account.getUsername());
            pStatement.setInt(4, account.isListOption() ? 1 : 0);
            pStatement.setInt(5, account.isBannerOption() ? 1 : 0);
            pStatement.executeUpdate();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, pStatement, null);
        }
    }

    @Override
    public void insertSignon(Account account) {
        Connection connection = null;
        PreparedStatement pStatement = null;
        try {
            connection = DBUtil.getConnection();
            pStatement = connection.prepareStatement(INSERT_SIGNON);
            pStatement.setString(1, account.getPassword());
            pStatement.setString(2, account.getUsername());
            pStatement.executeUpdate();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, pStatement, null);
        }
    }

    @Override
    public void updateAccount(Account account) {
        Connection connection = null;
        PreparedStatement pStatement = null;
        try {
            connection = DBUtil.getConnection();
            pStatement = connection.prepareStatement(UPDATE_ACCOUNT);
            pStatement.setString(1, account.getEmail());
            pStatement.setString(2, account.getFirstName());
            pStatement.setString(3, account.getLastName());
            pStatement.setString(4, account.getStatus());
            pStatement.setString(5, account.getAddress1());
            pStatement.setString(6, account.getAddress2());
            pStatement.setString(7, account.getCity());
            pStatement.setString(8, account.getState());
            pStatement.setString(9, account.getZip());
            pStatement.setString(10, account.getCountry());
            pStatement.setString(11, account.getPhone());
            pStatement.setString(12, account.getUsername());
            pStatement.executeUpdate();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, pStatement, null);
        }
    }

    @Override
    public void updateProfile(Account account) {
        Connection connection = null;
        PreparedStatement pStatement = null;
        try {
            connection = DBUtil.getConnection();
            pStatement = connection.prepareStatement(UPDATE_PROFILE);
            pStatement.setString(1, account.getLanguagePreference());
            pStatement.setString(2, account.getFavouriteCategoryId());
            pStatement.setInt(3, account.isListOption() ? 1 : 0);
            pStatement.setInt(4, account.isBannerOption() ? 1 : 0);
            pStatement.setString(5, account.getUsername());
            pStatement.executeUpdate();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, pStatement, null);
        }
    }

    @Override
    public void updateSignon(Account account) {
        Connection connection = null;
        PreparedStatement pStatement = null;
        try {
            connection = DBUtil.getConnection();
            pStatement = connection.prepareStatement(UPDATE_SIGNON);
            pStatement.setString(1, account.getPassword());
            pStatement.setString(2, account.getUsername());
            pStatement.executeUpdate();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            DBUtil.close(connection, pStatement, null);
        }
    }
}
