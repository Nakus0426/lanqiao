<%@ page import="com.lanqiao.entity.Employee" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="org.apache.commons.lang3.time.DateUtils" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.lanqiao.dao.EmployeeDao" %><%--
  Created by IntelliJ IDEA.
  User: jamesmac
  Date: 2019/8/1
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 获取请求参数
    String empno = request.getParameter("empno");
    String ename = request.getParameter("ename");
    String job = request.getParameter("job");
    String mgr = request.getParameter("mgr");
    String sal = request.getParameter("sal");
    String comm = request.getParameter("comm");
    String hiredate = request.getParameter("hiredate"); // yyyy-MM-dd
    String deptno = request.getParameter("deptno");

    Employee employee = new Employee();
    System.out.println(employee);

    employee.setEmpno(Integer.valueOf(empno));
    employee.setEname(ename);
    employee.setJob(job);
    if (StringUtils.isNoneBlank(mgr)){
        employee.setMgr(Integer.valueOf(mgr));
    }
    if (StringUtils.isNoneBlank(sal)){
        employee.setSal(Double.valueOf(sal));
    }
    if (StringUtils.isNoneBlank(comm)){
        employee.setComm(Double.valueOf(comm));
    }
    if (StringUtils.isNoneBlank(hiredate)){
        // apache lang3.jar
        Date date = DateUtils.parseDate(hiredate, "yyyy-MM-dd", "yyyy/MM/dd");
        employee.setHiredate(date);
    }
    if (StringUtils.isNoneBlank(deptno)){
        employee.setDeptno(Integer.valueOf(deptno));
    }

    // 操作数据库做更新
    boolean updated = new EmployeeDao().update(employee);
    if (updated){
        out.write("{\"result\": true}");
    }else{
        out.write("{\"result\": false}");
    }
%>