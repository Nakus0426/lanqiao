package com.lanqiao.store.dao;

import com.lanqiao.store.vo.Food;
import com.lanqiao.store.vo.Page;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class FoodDaoTest {
    FoodDao foodDao;
    Page page;
    Food food;

    @Before
    public void setUp() throws Exception {
        foodDao = new FoodDao();
        page = new Page();
        food = new Food();
    }

    @Test
    public void countOfFood() {
        int i = foodDao.countOfFood();
        System.out.println(i);
    }

    @Test
    public void seletAll() {
        page.setTotalRow(17);
        page.setPageNo(1);
        page.setPageSize(5);
        page.setQueryObject(food);
        System.out.println(foodDao.seletAll(page).size());
    }
}