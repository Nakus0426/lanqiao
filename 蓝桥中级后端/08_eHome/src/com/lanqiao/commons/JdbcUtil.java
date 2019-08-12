package com.lanqiao.commons;

import java.sql.*;
import java.util.ResourceBundle;

/**
 * jdbc工具类，负责：
 * 1. 加载/注册数据库驱动程序
 * 2. 获取数据库连接
 * 3. 释放数据库资源（Connection, Statement, ResultSet）
 *
 * @author 张建平 on 2019/4/20 17:00
 */
public class JdbcUtil {

    private static final String DRIVER = getValue("jdbc.driver");
    private static final String URL = getValue("jdbc.url");
    private static final String USERNAME = getValue("jdbc.username");
    private static final String PASSWORD = getValue("jdbc.password");

    static{
        try {
            //1. 注册数据库驱动程序
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            System.err.println("注册数据库驱动程序失败。" + e.getMessage());
        }
    }

    /**
     * 2. 获取数据库连接
     *
     * @return
     */
    public static Connection getConnection() {
        try {
            Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            return  conn;
        } catch (SQLException e) {
            System.err.println("a获得数据连接失败。" + e.getMessage());
        }
        return null;
    }


    /**
     * @param conn
     * @param stmt
     * @param rs
     */
    public static void close(Connection conn, Statement stmt, ResultSet rs) {
        try {
            //关闭数据库的资源的顺序最好与使用的顺序相反
            if(rs != null){
                rs.close();
            }
            if(stmt != null){
                stmt.close();
            }
            if(conn != null){
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 读取属性文件中的信息
     *
     * @param key
     * @return
     */
    private static String getValue(String key) {
        // 资源包绑定
        ResourceBundle bundle = ResourceBundle.getBundle("jdbc");
        return bundle.getString(key);
    }


    public static void main(String[] args) {
        System.out.println(getValue("jdbc.driver"));
        System.out.println(getConnection());
    }
}
