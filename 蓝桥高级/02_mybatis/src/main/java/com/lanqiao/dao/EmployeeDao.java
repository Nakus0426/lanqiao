package com.lanqiao.dao;

import com.lanqiao.commons.MybatisUtil;
import com.lanqiao.vo.Employee;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class EmployeeDao {

    SqlSession sqlSession = MybatisUtil.getSqlSession();

    public List<Employee> selectAll() {
        // 调用语句
        List<Employee> list = sqlSession.selectList("mapper.EmployeeMapper.selectAll");
        MybatisUtil.closeSqlSession(sqlSession);
        return list;
    }

    public Employee selectById(Integer empno){
        Employee employee = sqlSession.selectOne("mapper.EmployeeMapper.selectById", empno);
        MybatisUtil.closeSqlSession(sqlSession);
        return employee;
    }

    public List<Employee> selectSelective(Employee employee){
        List<Employee> employees = sqlSession.selectList("mapper.EmployeeMapper.selectSelective",employee);
        MybatisUtil.closeSqlSession(sqlSession);
        return employees;
    }

    public int insert_2(Employee employee){
        int insert = sqlSession.insert("mapper.EmployeeMapper.insert_2", employee);
        sqlSession.commit();
        MybatisUtil.closeSqlSession(sqlSession);
        return insert;
    }
}
