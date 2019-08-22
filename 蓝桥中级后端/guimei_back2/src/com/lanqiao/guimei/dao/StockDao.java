package com.lanqiao.guimei.dao;

import com.google.gson.GsonBuilder;
import com.lanqiao.guimei.commons.JdbcUtil;
import com.lanqiao.guimei.commons.ResultSetHandler;
import com.lanqiao.guimei.vo.Stock;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class StockDao {


    public String load() {
        String sql = "select STK_ID stkId , STK_NAME stkName , QUANTITY quantity, IN_STK_DATE inStkDate, OUT_STK_DATE outStkDate from stock";
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
        ) {
            ResultSet rs = ps.executeQuery();
            List<Stock> stocks = new ResultSetHandler<Stock>().toBeanList(rs, Stock.class);
            // 可使用google json库gson.jar将部门列表转换成JSON字符串
            // java:list --> javascript:[]
            // java: object --> javascript: {}
            //String json = new Gson().toJson(departments);
            String json = new GsonBuilder().setPrettyPrinting().create().toJson(stocks);
            return json;
        } catch (SQLException e) {
            System.err.println("异步加部门信息失败：" + e.getMessage());
        }
        return null;
    }
}
