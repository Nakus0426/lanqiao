<%@ page import="com.lanqiao.dao.EmployeeDao" %>
<%@ page import="com.lanqiao.entity.Employee" %>
<%@ page import="com.lanqiao.entity.Page" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="java.util.List" %><%--
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
    if (StringUtils.isNoneBlank(deptno)) {
        employee.setDeptno(Integer.valueOf(deptno));
    }

    Page<Employee> employeePage = (Page<Employee>) session.getAttribute("employeePage");
    String pageNo = request.getParameter("pageNo");

    // 此逻辑表示用户点击的是表单的查询按钮
    if (employeePage == null || StringUtils.isBlank(pageNo)){
        employeePage = new Page<Employee>();
        // 设置当前页号
        employeePage.setPageNo(1);
        // 设置每页显示的记录数
        employeePage.setPageSize(Page.R5);
        // 缓存查询条件
        employeePage.setQueryObject(employee);
        // 设置总记录数
        int totalRow = new EmployeeDao().countForQuery(employeePage);
        System.out.printf("总记录数：%d\n", totalRow);
        employeePage.setTotalRow(totalRow);

    } else {
        // 此逻辑表示用户点击的是分页链接, 此时只需更改页码即
        employeePage.setPageNo(Integer.valueOf(pageNo));
    }

    // 将分页的状态保存下来,以便于点击分页链接时查询条件可用
    session.setAttribute("employeePage", employeePage);
    System.out.println(employeePage);

    // 数据库操作
    List<Employee> employees = new EmployeeDao().query(employeePage);

    // 将数据存入请求对象中
    request.setAttribute("employees", employees);
    System.out.println(employees);

    // 请求转发到queryForm.jsp
    request.getRequestDispatcher("queryForm.jsp").forward(request, response);
%>