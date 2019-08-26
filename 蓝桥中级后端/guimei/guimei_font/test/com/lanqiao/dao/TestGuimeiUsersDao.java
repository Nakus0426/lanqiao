package com.lanqiao.dao;

import com.lanqiao.store.dao.GuimeiUsersDao;
import com.lanqiao.store.vo.GuimeiUsers;
import org.junit.Before;
import org.junit.Test;

/**
 * @Author 天份
 * @Date 2019/8/17 0017 10:42
 * @JDK Version 1.8
 * @Created by IntelliJ IDEA
 */
public class TestGuimeiUsersDao {
    GuimeiUsersDao guimeiUsersDao = null;

    @Before
    public void setUp(){
        guimeiUsersDao = new GuimeiUsersDao();
    }

    @Test
    public void testLogin(){
        System.out.println(this.guimeiUsersDao.login(new GuimeiUsers("admin", "admin")));
    }
}
