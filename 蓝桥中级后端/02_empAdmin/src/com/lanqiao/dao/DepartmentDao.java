package com.lanqiao.dao;

import com.google.gson.GsonBuilder;
import com.lanqiao.commons.JdbcUtil;
import com.lanqiao.commons.ResultSetHandler;
import com.lanqiao.entity.Department;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class DepartmentDao {

    /**
     * 异步加部门信息
     * @return JSON
     */
    public String load() {
        String sql = "select * from DEPARTMENT";
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
        ) {
            ResultSet rs = ps.executeQuery();
            List<Department> departments = new ResultSetHandler<Department>().toBeanList(rs, Department.class);
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
