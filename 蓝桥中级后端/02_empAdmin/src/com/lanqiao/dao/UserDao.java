package com.lanqiao.dao;

import com.lanqiao.commons.JdbcUtil;
import com.lanqiao.commons.ResultSetHandler;
import com.lanqiao.entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author 张建平 on 2019/7/30.
 */
public class UserDao {

    /**
     * 登录
     * @param user
     * @return
     */
    public Users login(Users user) {
        String sql = "select USER_ID userid,USER_NAME username,PASSWORD from EMP_USER where USER_NAME=? and PASSWORD=?";
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps  =conn.prepareStatement(sql);
        ) {
            // 设置占位符的值
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());

            // 执行语句
            ResultSet rs = ps.executeQuery();

            ResultSetHandler<Users> rsh = new ResultSetHandler<Users>();
            Users users = rsh.toBean(rs, Users.class);
            return users;

        } catch (SQLException e) {
            System.err.println("登录失败：" + e.getMessage());
        }
        return null;
    }

}
