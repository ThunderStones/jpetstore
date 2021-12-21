package org.csu.myjpetstore.persistence;

import java.sql.*;

public class DBUtil {
    private DBUtil() {
    } //私有化构造函数 防止别人创建本类实例

    private static String url = "jdbc:mysql://localhost:3306/mypetstore?useSSL=true&useUnicode=true&characterEncoding=utf8";
    private static String user = "root";
    private static String password = "ad";
    private static String driver = "com.mysql.jdbc.Driver";

    static {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    //创建连接
    public static Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    //清理资源
    public static void close(Connection conn, Statement stm, ResultSet rs) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (stm != null) {
            try {
                stm.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        System.out.println(getConnection().toString());
    }
}


