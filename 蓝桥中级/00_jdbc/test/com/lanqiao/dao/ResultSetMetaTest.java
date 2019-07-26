package com.lanqiao.dao;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.sql.*;

public class ResultSetMetaTest {
    private Connection conn;

    @Before
    public void setUp() throws Exception {
        conn = JdbcUtil.getConnection();
    }

    @After
    public void tearDown() throws Exception {
        this.conn.close();
    }

    @Test
    public void MetaDataTest() throws SQLException {
        PreparedStatement ps = conn.prepareStatement("select * from EMPLOYEE");
        ResultSet resultSet = ps.executeQuery();

        ResultSetMetaData metaData = resultSet.getMetaData();
        //获取列数
        int columnCount = metaData.getColumnCount();
        System.out.println("总列数："+columnCount);

        //获取每一列列名及值
        while (resultSet.next()){
            for (int i = 1; i < columnCount; i++) {
                //获取列名
                String label = metaData.getColumnLabel(i);
                //获取该列中的值
                Object value = resultSet.getObject(label);
                System.out.print(label+":"+value+"\t");
            }
            System.out.println();
        }
    }
}
