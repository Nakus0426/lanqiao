package com.lanqiao.dao;

import oracle.jdbc.OracleTypes;

import java.sql.*;

public class CallDao {
    Connection conn = JdbcUtil.getConnection();
    Integer which;
    public void test(){
        try(CallableStatement cs = conn.prepareCall("{call open_account(?,?,?,?)}")){
            cs.setString(1,"mike");
            cs.setString(2,"450923199800000000");
            cs.setInt(3,50);
            cs.registerOutParameter(4, Types.VARCHAR);
            cs.execute();
            String string = cs.getString(4);
            System.out.println(string);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        CallDao callDao = new CallDao();
        callDao.test();
    }

    public void test2() throws SQLException {
        try (Connection connection = JdbcUtil.getConnection();
             CallableStatement cs = connection.prepareCall("{call list(?,?)}");
        ) {
            cs.setInt(2, which);
            // 给ref游标注册输出参数
            cs.registerOutParameter(1, OracleTypes.CURSOR);

            boolean execute = cs.execute();

            // 获得ref游标的结果
            ResultSet rs = (ResultSet) cs.getObject(1);
            if(which == 1){ // for employee
                while (rs.next()) {
                    System.out.println(rs.getInt("empno")
                            + "," + rs.getString("ename")
                            + "," + rs.getDate("hiredate")
                            + "," + rs.getDouble("sal"));
                }

            } else { // from department
                while (rs.next()) {
                    System.out.println(rs.getInt("deptno")
                            + "," + rs.getString("dname")
                            + "," + rs.getString("loc"));
                }
            }

        } catch (SQLException e) {
            throw e;
        }
    }
}


