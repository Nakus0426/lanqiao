package com.lanqiao.guimei.dao;

import com.google.gson.GsonBuilder;
import com.lanqiao.guimei.commons.JdbcUtil;
import com.lanqiao.guimei.commons.ResultSetHandler;
import com.lanqiao.guimei.vo.Vendor;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class VendorDao {

    Logger logger = Logger.getLogger(ProductDao.class);
    QueryRunner runner = new QueryRunner(true);
/*
    public String load() {
        try (Connection conn = JdbcUtil.getConnection()) {
            List<Vendor> vendors = runner.query(conn, " select VEN_ID venId , VEN_NAME venName , VEN_ADDR venAddr from vendor "
                    , new BeanListHandler<Vendor>(Vendor.class));
            String json = new GsonBuilder().setPrettyPrinting().create().toJson(vendors);
            return json;
        } catch (SQLException e) {
            logger.error("查询失败。", e);
        }
        return null;

    }
*/
    public String load() {
        String sql = "select VEN_ID venId , VEN_NAME venName , VEN_ADDR venAddr from vendor";
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
        ) {
            ResultSet rs = ps.executeQuery();
            List<Vendor> departments = new ResultSetHandler<Vendor>().toBeanList(rs, Vendor.class);
            // 可使用google json库gson.jar将部门列表转换成JSON字符串
            // java:list --> javascript:[]
            // java: object --> javascript: {}
            //String json = new Gson().toJson(departments);
            String json = new GsonBuilder().setPrettyPrinting().create().toJson(departments);
            return json;
        } catch (SQLException e) {
            System.err.println("异步加部门信息失败：" + e.getMessage());
        }
        return null;
    }

}
