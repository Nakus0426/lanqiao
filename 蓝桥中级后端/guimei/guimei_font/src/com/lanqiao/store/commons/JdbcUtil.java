package com.lanqiao.store.commons;


import org.apache.commons.dbcp2.BasicDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

/**
 * @Author 天份
 * @Date 2019/6/25 0027 09:37
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class JdbcUtil {

    private static final String DRIVER = getValue("jdbc.driver");
    private static final String URL = getValue("jdbc.url");
    private static final String USER = getValue("jdbc.username");
    private static final String PASSWORD = getValue("jdbc.password");

    // 第一步，注册驱动
    static {
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            System.out.println("注册驱动失败！！" + e.getMessage());
        }
    }

    public static DataSource buildDataSource() {
        // 编码方式创建数据源
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setDriverClassName(DRIVER);
        dataSource.setUrl(URL);
        dataSource.setUsername(USER);
        dataSource.setPassword(PASSWORD);

        //以下的几个特性可不不设置，有默认值
        //设置最大可用连接数
        dataSource.setMaxTotal(10);
        //设置最大的空闲连接数
        dataSource.setMaxIdle(2);
        //当连接池无连接可用时，最大的等待时间
        dataSource.setMaxWaitMillis(10000);
        return dataSource;
    }

    // 第二步，创建与数据库的连接方法
    public static Connection getConnection(){
        try {
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (SQLException e) {
            System.out.println("创建数据库连接失败！！" + e.getMessage());
        }
        return null;
    }

    public static String getValue(String key){
        // 1. 和jdbc.properties 建立连接
        ResourceBundle bundle = ResourceBundle.getBundle("jdbc");
        // 根据键来获取值
        return bundle.getString(key);
    }



}
