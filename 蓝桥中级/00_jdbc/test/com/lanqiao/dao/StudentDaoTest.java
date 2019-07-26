package com.lanqiao.dao;

import com.lanqiao.entity.Student;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class StudentDaoTest {
    StudentDao studentDao = null;
    @Before
    public void setUp() throws Exception {
        studentDao=new StudentDao();
    }

    @Test
    public void save() {
        boolean save = this.studentDao.save(new Student(4, "李", "男", "信息", "大四", 0));
        assertTrue("fail to save",save);
    }

    @Test
    public void selectAll() {
        List<Student> list = this.studentDao.selectAll();
        for (Student student : list) {
            System.out.println(student);
        }
    }

    @Test
    public void update() {
        boolean update = this.studentDao.update(1, "大四", "环境", 123);
        assertTrue("fail to update",update);
    }

    @Test
    public void delete() {
        boolean delete = this.studentDao.delete(4);
        assertTrue("fail to delete",delete);
    }
}