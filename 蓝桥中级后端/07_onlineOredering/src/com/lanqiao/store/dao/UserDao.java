package com.lanqiao.store.dao;

import com.lanqiao.commons.JdbcUtil;
import com.lanqiao.store.vo.Users;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.SQLException;

public class UserDao {
    Logger logger = Logger.getLogger(UserDao.class);
    QueryRunner runner = new QueryRunner(true);

    public Users login(Users users){
        try (Connection conn = JdbcUtil.getConnection();){

            String sql = "select LOGINNAME,LOGINPASS from USERINFO where LOGINNAME=? and LOGINPASS=?";
            Users selectedUser = runner.query(conn, sql, new BeanHandler<Users>(Users.class), users.getLoginName(), users.getLoginpass());
            return selectedUser;

        } catch (SQLException e) {
            logger.error("登录失败！"+e.getMessage());
        }
        return null;
    }
}
