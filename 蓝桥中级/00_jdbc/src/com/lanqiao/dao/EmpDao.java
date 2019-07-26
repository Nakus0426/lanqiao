package com.lanqiao.dao;

import com.lanqiao.entity.Employee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 负责gllg.employee表的CRUD操作
 */
public class EmpDao {
    List<Employee> employees = new ArrayList<>();
    // 2.通过工具类获得数据库连接
    Connection conn = JdbcUtil.getConnection();
    Statement stmt = null;
    ResultSet rs = null;
    Employee emp = null;

    /**
     * 查询所有
     *
     * @return employee列表
     */
    public List<Employee> selectAll() {
        try {
            // 3. 创建语句对象,代表要执行的SQL语句
            stmt = conn.createStatement();

            // 4. 执行SQL语句，SQL语句最后不能有 “;” 号
            rs = stmt.executeQuery("select * from employee");
            // 如果执行的是: insert, update, delete都用executeUpdate(sql)方法
            // stmt.executeUpdate("sql");

            // 5. 遍历查询结果集每一行, ResultSet中有一个游标，最初游标位于第一行之前，resultSet.next()检查结果集后是否还更多的行
            while (rs.next()) {
                // rs.getInt("列名")  rs.getInt(列号：从1开始)
                int empno = rs.getInt("empno");
                String ename = rs.getString("ename");
                String job = rs.getString("job");
                int mgr = rs.getInt("mgr");
                Date hiredate = rs.getDate("hiredate");
                double sal = rs.getDouble("sal");
                double comm = rs.getDouble("comm");
                int deptno = rs.getInt("deptno");
                // System.out.println("编号：" + empno + ", 姓名：" + ename);
                //将每一行封装成一个员工实体
                Employee emp = new Employee(empno, ename, job, mgr, hiredate, sal, comm, deptno);
                employees.add(emp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 6. destroy database resource
            JdbcUtil.close(conn, stmt, rs);
        }
        return employees;
    }


    /**
     * 按主键查询
     *
     * @param empno1 员工编号
     * @return employee对象
     */
    public Employee findByPK(Integer empno1) {
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery("select * from lanqiao.EMPLOYEE where EMPNO=" + empno1);
            while (rs.next()) {
                int empno = rs.getInt("empno");
                String ename = rs.getString("ename");
                String job = rs.getString("job");
                int mgr = rs.getInt("mgr");
                Date hiredate = rs.getDate("hiredate");
                double sal = rs.getDouble("sal");
                double comm = rs.getDouble("comm");
                int deptno = rs.getInt("deptno");
                emp = new Employee(empno, ename, job, mgr, hiredate, sal, comm, deptno);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtil.close(conn, stmt, rs);
        }
        return emp;
    }

    /**
     * 将employee对象插入表中
     *
     * @param employee 对象
     */
    public boolean save(Employee employee) {

        try (PreparedStatement ps = conn.prepareStatement("insert into EMPLOYEE values(?,?,?,?,?,?,?,?)");)
        {
            int index = 1;
            ps.setInt(index++, employee.getEmpno());
            ps.setString(index++, employee.getEname());
            ps.setString(index++, employee.getJob());
            ps.setInt(index++, employee.getMgr());

            Date hiredate = new Date(employee.getHiredate().getTime());
            ps.setDate(index++, hiredate);

            ps.setDouble(index++, employee.getSal());
            ps.setDouble(index++, employee.getComm());
            ps.setInt(index++, employee.getDeptno());

            int i = ps.executeUpdate();
            return (i == 1 ? true : false);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * 按关键字查询
     *
     * @param patten 关键字
     * @return employee对象
     */
    public Employee selectByEname(String patten) {
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery("select * from lanqiao.EMPLOYEE where ENAME like '%" + patten + "%'");
            while (rs.next()) {
                int empno = rs.getInt("empno");
                String ename = rs.getString("ename");
                String job = rs.getString("job");
                int mgr = rs.getInt("mgr");
                Date hiredate = rs.getDate("hiredate");
                double sal = rs.getDouble("sal");
                double comm = rs.getDouble("comm");
                int deptno = rs.getInt("deptno");
                emp = new Employee(empno, ename, job, mgr, hiredate, sal, comm, deptno);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtil.close(conn, stmt, rs);
        }
        return emp;
    }

    /**
     * @param employee 需要修改的数据对象
     * @return 修改成功与否
     */
    public boolean update(Employee employee) {
        try {
            stmt = conn.createStatement();
            int rs = stmt.executeUpdate("update EMPLOYEE set sal =" + employee.getSal() + ",comm =" + employee.getComm() + " where empno=" + employee.getEmpno());
            return (rs == 1 ? true : false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

}
