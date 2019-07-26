package com.lanqiao.dao;

import com.lanqiao.entity.Employee;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.Date;

public class EmpDaoTest {
    EmpDao empDao = null;

    @Before
    public void setUp() throws Exception {
        empDao = new EmpDao();
    }

    @Test
    public void findByPK() {
        Employee empDaoByPK = this.empDao.findByPK(7499);
        System.out.println(empDaoByPK);
    }

    @Test
    public void selectByEname() {
        Employee selectByEname = this.empDao.selectByEname("j");
        System.out.println(selectByEname);
    }

    @Test
    public void update() {
        boolean update = this.empDao.update(new Employee(7499, null, null, null, null, 300.0, 300.0, null));
        Assert.assertTrue("更新失败!",update);
    }

    @Test
    public void save() {
        boolean save = this.empDao.save(new Employee(7497, "lala", null, 7900, new Date(), 300.0, 300.0, 20));
        Assert.assertTrue("添加失败！",save);
    }
}