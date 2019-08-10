package com.lanqiao.dao;

import com.google.gson.GsonBuilder;
import com.lanqiao.commons.JdbcUtil;
import com.lanqiao.commons.ResultSetHandler;
import com.lanqiao.entity.Department;
import com.lanqiao.entity.Employee;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class DepartmentDao {

    QueryRunner runner = new QueryRunner(true);

    /**
     * 异步加部门信息
     * @return JSON
     */
    public String load() {
        String sql = "select * from DEPARTMENT";

        try (Connection conn = JdbcUtil.getConnection();
        ) {

            List<Department> departments = runner.query(conn,sql, new BeanListHandler<Department>(Department.class));

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
