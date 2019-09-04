package com.lanqiao.dao;

import com.lanqiao.common.MybatisUtil;
import com.lanqiao.vo.Employee;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class EmployeeDao {
    public List<Employee> selectAll() {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        // 调用语句
        List<Employee> list = sqlSession.selectList("mapper.EmployeeMapper.selectAll");
        MybatisUtil.closeSqlSession(sqlSession);
        return list;
    }
}
