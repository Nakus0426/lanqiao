package com.lanqiao.store.dao;

import com.lanqiao.store.vo.GuimeiUsers;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.log4j.Logger;

import java.sql.Date;
import java.sql.SQLException;

/**
 * @Author 天份
 * @Date 2019/8/17 0017 10:28
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class GuimeiUsersDao extends BaseDao {
    Logger logger = Logger.getLogger(GuimeiUsersDao.class);

    /**
     *  用户登录验证
     * @param user
     * @return
     */
    public GuimeiUsers login(GuimeiUsers user){
        String sql = "select user_id userId, login_name loginName, password, first_name firstName, last_name lastName, email, gender, header, hobby, birthday from guimei_users where login_name = ? and password = ?";
        try {
            return runner.query(sql, new BeanHandler<>(GuimeiUsers.class), user.getLoginName(), user.getPassword());
        } catch (SQLException e) {
            logger.error("GuimeiUsersDao 类里面的 login有异常", e);
        }
        return null;
    }

    public int register(GuimeiUsers guimeiUsers){
        String sql = "insert into guimei_users values(user_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            return runner.update(sql, guimeiUsers.getLoginName(), guimeiUsers.getPassword(), guimeiUsers.getFirstName(), guimeiUsers.getLastName(), guimeiUsers.getEmail(), guimeiUsers.getGender(), guimeiUsers.getHeader(), guimeiUsers.getHobby(), guimeiUsers.getBirthday());
        } catch (SQLException e) {
            logger.error("GuimeiUsersDao 类里面的 register 有异常", e);
        }
        return 0;
    }

    public static void main(String[] args) {
        //System.out.println(new GuimeiUsersDao().login(new GuimeiUsers("Test1", "test1")));
       // System.out.println(new GuimeiUsersDao().register(new GuimeiUsers(null, "test2", "test2", "李", "四", "12365498@qq.com", "女", "te2.jpg", "跳舞", new Date(new java.util.Date().getTime()))));
    }
}
