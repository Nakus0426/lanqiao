package com.lanqiao.dao;

import com.lanqiao.commons.JdbcUtil;
import com.lanqiao.commons.ResultSetHandler;
import com.lanqiao.entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class userDao {
    /**
     * 登录
     * @param inUserName
     * @param inPassword
     * @return users
     */
    public boolean login(String inUserName, String inPassword) {
        //language=GenericSQL
        String sql = "select PASSWORD from USERS where USERNAME=?";

        try (Connection conn = JdbcUtil.getConnection();) {
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1,inUserName);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String password = rs.getString("password");

                if(password.equals(inPassword)){
                    return true;
                }else {
                    return false;
                }
            }

        } catch (SQLException e) {
            System.err.println("登录失败！" + e.getMessage());
        }

        return false;
    }

    /**
     * 查询userid
     * @param inUsername
     * @return String
     */
    public String selectUserId(String inUsername){
        try (Connection conn = JdbcUtil.getConnection();) {
            PreparedStatement ps = conn.prepareStatement("select USERID from USERS where USERNAME=?");

            ps.setString(1,inUsername);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String userid = rs.getString("userid");
                return userid;
            }else {
                return null;
            }
        } catch (SQLException e) {
            System.err.println("登录失败！" + e.getMessage());
        }
        return null;
    }
}
