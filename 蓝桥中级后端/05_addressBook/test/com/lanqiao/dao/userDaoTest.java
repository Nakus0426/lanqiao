package com.lanqiao.dao;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class userDaoTest {
    userDao userDao;

    @Before
    public void brfore(){

        this.userDao = new userDao();
    }

    @Test
    public void login() {
        boolean login = this.userDao.login("jack", "123456");
        System.out.println(login);
    }

    @Test
    public void selectUserId() {
        String userId = this.userDao.selectUserId("jack");
        System.out.println(userId);
    }
}