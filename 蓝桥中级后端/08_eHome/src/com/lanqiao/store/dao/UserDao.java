package com.lanqiao.store.dao;

import com.lanqiao.commons.JdbcUtil;
import com.lanqiao.store.vo.Users;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.SQLException;

public class UserDao {
    private Logger logger = Logger.getLogger(UserDao.class);
    private QueryRunner runner = new QueryRunner(true);

    public Users login(Users users){
        try (Connection conn = JdbcUtil.getConnection()){

            String sql = "select USERNAME,PASSWORD from ART_USERS where USERNAME=? and PASSWORD=?";
            return runner.query(conn, sql, new BeanHandler<Users>(Users.class), users.getUserName(), users.getPassword());

        } catch (SQLException e) {
            logger.error("登录失败！"+e.getMessage());
        }
        return null;
    }
}
