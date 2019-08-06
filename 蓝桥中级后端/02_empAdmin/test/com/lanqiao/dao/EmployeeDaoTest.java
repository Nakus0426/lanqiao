package com.lanqiao.dao;

import com.lanqiao.entity.Employee;
import com.lanqiao.entity.Page;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class EmployeeDaoTest {
    EmployeeDao employeeDao;
    Page page;
    Employee emp;

    @Before
    public void setUp() throws Exception {
        employeeDao = new EmployeeDao();
        page = new Page();
        emp = new Employee();
    }

    @Test
    public void query() {
        page.setTotalRow(14);
        page.setPageNo(3);
        page.setPageSize(5);
        page.setQueryObject(emp);
        System.out.println(employeeDao.query(page));
    }
}