package com.lanqiao.dao;

import com.lanqiao.entity.Teacher;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class TeacherDaoTest {
    TeacherDao teacherDao = null;
    @Before
    public void setUp() throws Exception {
        teacherDao = new TeacherDao();
    }

    @Test
    public void save() {
        boolean save = this.teacherDao.save(new Teacher(4, "李老师", 123, "讲师"));
        assertTrue("fail to save",save);
    }

    @Test
    public void selectAll() {
        List<Teacher> list = this.teacherDao.selectAll();
        for (Teacher teacher : list) {
            System.out.println(teacher);
        }
    }
}