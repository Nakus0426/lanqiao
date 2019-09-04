package com.lanqiao.dao;

import com.lanqiao.vo.Employee;
import org.junit.Before;
import org.junit.Test;

import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

public class EmployeeDaoTest {

    EmployeeDao dao;
    Employee employee;

    @Before
    public void setUp() throws Exception {
        this.dao = new EmployeeDao();
        this.employee = new Employee();
    }

    @Test
    public void selectAll() {
        List<Employee> list = this.dao.selectAll();
        for (Employee emp : list) {
            System.out.println(emp);
        }
    }

    @Test
    public void selectById() {
        System.out.println(this.dao.selectById(8016));
    }

    @Test
    public void selectSelective() {
        this.employee.setEname("LI");
        this.employee.setDeptno(20);
        List<Employee> employees = this.dao.selectSelective(employee);
        for (Employee employee : employees) {
            System.out.println(employee);
        }
    }

    @Test
    public void insert_2() {
        this.employee = new Employee(null,"JASSICA","SALES",7369,new Date(),3999.0,null,20);
        int i = this.dao.insert_2(employee);
        System.out.println(i);
    }
}