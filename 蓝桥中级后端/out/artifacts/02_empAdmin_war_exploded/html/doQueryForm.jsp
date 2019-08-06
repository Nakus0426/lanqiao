<%@ page import="com.lanqiao.entity.Employee" %>
<%@ page import="com.lanqiao.dao.EmployeeDao" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %><%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/7/30
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String ename = request.getParameter("ename");
    String job = request.getParameter("job");
    String deptno = request.getParameter("deptno");

    Employee employee = new Employee();
    employee.setEname(ename);
    employee.setJob(job);
    // 只要是汲及到类型转换的必须先判空后再作类型转换
    if (StringUtils.isNoneBlank(deptno)){
        employee.setDeptno(Integer.valueOf(deptno));
    }
    // 数据库操作
    List<Employee> employees = new EmployeeDao().query(employee);

    // 将数据存入请求对象中
    request.setAttribute("employees", employees);

    // 请求转发到queryForm.jsp
    request.getRequestDispatcher("queryForm.jsp").forward(request, response);
%>