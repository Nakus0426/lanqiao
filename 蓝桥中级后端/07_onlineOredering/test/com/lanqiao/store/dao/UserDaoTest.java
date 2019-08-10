package com.lanqiao.store.dao;

import com.lanqiao.store.vo.Users;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserDaoTest {
    Users users = null;
    UserDao userDao = null;

    @Before
    public void setUp() throws Exception {
        users= new Users();
        userDao= new UserDao();
    }

    @Test
    public void login() {
        Users login = userDao.login(new Users(null, "admin", "admin"));
        System.out.println(login);
    }
}