package com.lanqiao.dao;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class EmployeeDaoTest {
    EmployeeDao employeeDao = null;

    @Before
    public void setUp() throws Exception {
        this.employeeDao = new EmployeeDao();
    }

    @Test
    public void selectAll() {
        this.employeeDao.selectAll();
    }
}