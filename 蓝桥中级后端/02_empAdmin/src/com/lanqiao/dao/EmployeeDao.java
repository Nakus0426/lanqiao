package com.lanqiao.dao;

import com.google.gson.Gson;
import com.lanqiao.commons.JdbcUtil;
import com.lanqiao.commons.ResultSetHandler;
import com.lanqiao.entity.Employee;
import com.lanqiao.entity.Page;
import org.apache.commons.lang3.StringUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 张建平 on 2019/7/30.
 */
public class EmployeeDao {

    /**
     * 查询员工
     *
     * @param employee
     * @return
     */
    public List<Employee> query(Employee employee) {
        List params = new ArrayList();
        StringBuffer sql = new StringBuffer("select e.*,d.DNAME from EMPLOYEE e,DEPARTMENT d where e.deptno=d.deptno ");

        // 生成查询条件，且将占位符对应位置的值存入列表
        if (StringUtils.isNoneBlank(employee.getEname())) {
            sql.append(" and ename like ?");
            params.add("%" + StringUtils.upperCase(employee.getEname()) + "%");
        }
        if (StringUtils.isNoneBlank(employee.getJob())) {
            sql.append(" and job=? ");
            params.add(employee.getJob());
        }
        if (employee.getDeptno() != null) {
            sql.append(" and e.deptno=? ");
            params.add(employee.getDeptno());
        }

        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());

        ) {

            for (int i = 0; i < params.size(); i++) {
                // 设置占位符的值
                ps.setObject(i + 1, params.get(i));
            }

            ResultSet rs = ps.executeQuery();
            List<Employee> employees = new ResultSetHandler<Employee>().toBeanList(rs, Employee.class);
            return employees;

        } catch (SQLException e) {
            System.err.println("查询员工失败：" + e.getMessage());
        }
        return null;
    }

    /**
     * 加载经理列表
     *
     * @return
     */
    public String loadManager() {
        //language=GenericSQL
        String sql = "select EMPNO,ENAME from EMPLOYEE e,(select distinct mgr from EMPLOYEE) m where e.EMPNO=m.MGR";
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
        ) {

            ResultSet rs = ps.executeQuery();
            List<Employee> employees = new ResultSetHandler<Employee>().toBeanList(rs, Employee.class);
            String json = new Gson().toJson(employees);
            return json;

        } catch (SQLException e) {
            System.err.println("加载经理列表失败：" + e.getMessage());
        }
        return "[]";
    }

    /**
     * 添加员工
     *
     * @param employee
     */
    public boolean save(Employee employee) {
        StringBuffer sql = new StringBuffer("insert into EMPLOYEE " +
                "values (EMP_SEQ.nextval,?,?,?,?,?,?,?)");
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());
        ) {

            ps.setString(1, employee.getEname());
            ps.setString(2, employee.getJob());
            // 设置经理编号
            if (employee.getMgr() != null) {
                ps.setInt(3, employee.getMgr());
            } else {
                ps.setNull(3, Types.INTEGER);
            }

            // 设置入职日期
            if (employee.getHiredate() != null) {
                // 设置的类型为 java.sql.Date
                ps.setDate(4, new java.sql.Date(employee.getHiredate().getTime()));
            } else {
                ps.setNull(4, Types.DATE);
            }

            ps.setDouble(5, employee.getSal());

            if (employee.getComm() != null) {
                ps.setDouble(6, employee.getComm());
            } else {
                ps.setNull(6, Types.DOUBLE);
            }
            ps.setInt(7, employee.getDeptno());

            // 执行
            int row = ps.executeUpdate();
            return (row == 1 ? true : false);
        } catch (SQLException e) {
            System.err.println("新增员工失败：" + e.getMessage());
        }
        return false;
    }

    /**
     * 删除员工
     *
     * @param empno
     * @return
     */
    public boolean delete(Integer empno) {
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement("delete EMPLOYEE where empno=?");
        ) {
            ps.setInt(1, empno);
            int deleted = ps.executeUpdate();
            return (deleted == 1 ? true : false);
        } catch (SQLException e) {
            System.err.println("删除员工失败：" + e.getMessage());
        }
        return false;
    }

    /**
     * 按编号查找员工
     *
     * @param empno
     * @return
     */
    public Employee findByPk(int empno) {
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement("select * from EMPLOYEE where empno=?");
        ) {
            ps.setInt(1, empno);
            ResultSet rs = ps.executeQuery();
            return new ResultSetHandler<Employee>().toBean(rs, Employee.class);

        } catch (SQLException e) {
            System.err.println("按编号查找员工失败：" + e.getMessage());
        }
        return null;
    }

    /**
     * 更新员工
     *
     * @param employee
     * @return
     */
    public boolean update(Employee employee) {
        StringBuffer sql = new StringBuffer("update EMPLOYEE set ENAME=?,JOB=?,MGR=?,HIREDATE=?,SAL=?,COMM=?,DEPTNO=? where EMPNO=?");
        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());
        ) {

            ps.setString(1, employee.getEname());
            ps.setString(2, employee.getJob());
            // 设置经理编号
            if (employee.getMgr() != null) {
                ps.setInt(3, employee.getMgr());
            } else {
                ps.setNull(3, Types.INTEGER);
            }

            // 设置入职日期
            if (employee.getHiredate() != null) {
                // 设置的类型为 java.sql.Date
                ps.setDate(4, new java.sql.Date(employee.getHiredate().getTime()));
            } else {
                ps.setNull(4, Types.DATE);
            }

            ps.setDouble(5, employee.getSal());

            if (employee.getComm() != null) {
                ps.setDouble(6, employee.getComm());
            } else {
                ps.setNull(6, Types.DOUBLE);
            }
            ps.setInt(7, employee.getDeptno());
            ps.setInt(8, employee.getEmpno());

            // 执行
            int row = ps.executeUpdate();
            return (row == 1 ? true : false);
        } catch (SQLException e) {
            System.err.println("更新员工失败：" + e.getMessage());
        }
        return false;
    }

    /**
     * @param page
     * @return
     * 总记录数
     */
    public int countForQuery(Page<Employee> page) {
        Employee employee = page.getQueryObject();

        StringBuffer sql = new StringBuffer("select count(*) from EMPLOYEE e,DEPARTMENT d where e.DEPTNO=d.DEPTNO");
        List params = new ArrayList();

        if (StringUtils.isNoneBlank(employee.getEname())){
            sql.append(" and ename like ? ");
            params.add("%" + StringUtils.upperCase(employee.getEname()) + "%");
        }
        if (StringUtils.isNoneBlank(employee.getJob())){
            sql.append(" and job=? ");
            params.add(employee.getJob());
        }
        if (employee.getDeptno() != null){
            sql.append(" and e.deptno=? ");
            params.add(employee.getDeptno());
        }

        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());
        ) {
            for (int i = 0; i < params.size(); i++) {
                // 设置占位符的值
                ps.setObject(i+1, params.get(i));
            }

            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                // 查询结果只有一列，指定列索引
                return resultSet.getInt(1);
            }

        } catch (SQLException e) {
            System.err.println("统计总记录数错误：" + e.getMessage());
        }
        return 0;
    }

    /**
     * 查询员工,只查一页数据
     * @param page
     * @return
     */
    public List<Employee> query(Page<Employee> page) {
        // 从分页Bean中获得查询条件
        Employee employee = page.getQueryObject();

        List params = new ArrayList();
        StringBuffer sql = new StringBuffer("select * from(" +
                "   select t.*,ROWNUM rn from (" +
                "       select e.*,d.DNAME from EMPLOYEE e, DEPARTMENT d where e.DEPTNO=d.DEPTNO ");

        // 生成查询条件，且将占位符对应位置的值存入列表
        if (StringUtils.isNoneBlank(employee.getEname())){
            sql.append(" and ename like ? ");
            params.add("%" + StringUtils.upperCase(employee.getEname()) + "%");
        }
        if (StringUtils.isNoneBlank(employee.getJob())){
            sql.append(" and job=? ");
            params.add(employee.getJob());
        }
        if (employee.getDeptno() != null){
            sql.append(" and e.deptno=? ");
            params.add(employee.getDeptno());
        }
        sql.append(" order by empno");

        //
        sql.append(") t where ROWNUM<=? " +
                ") where rn>=?");

        //末页
        params.add(page.getLastIndex());
        //首页
        params.add(page.getFirstIndex());

        try (Connection conn = JdbcUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString());
        ) {
            for (int i = 0; i < params.size(); i++) {
                // 设置占位符的值
                ps.setObject(i+1, params.get(i));
            }

            ResultSet rs = ps.executeQuery();
            List<Employee> employees = new ResultSetHandler<Employee>().toBeanList(rs, Employee.class);
            return employees;

        } catch (SQLException e) {
            System.err.println("查询员工失败：" + e.getMessage());
        }
        return null;
    }
}
