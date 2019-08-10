<%@ page import="com.com.lanqiao.dao.EmployeeDao" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="org.apache.commons.lang3.time.DateUtils" %>
<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: jamesmac
  Date: 2019/7/31
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="employee" class="com.com.lanqiao.entity.Employee"/>
<jsp:setProperty name="employee" property="*"/>
<%
    //    // 获取请求参数
//    String ename = request.getParameter("ename");
//    String job = request.getParameter("job");
//    String mgr = request.getParameter("mgr");
//    String sal = request.getParameter("sal");
//    String comm = request.getParameter("comm");
//    String hiredate = request.getParameter("hiredate"); // yyyy-MM-dd
//    String deptno = request.getParameter("deptno");
//
//    Employee employee = new Employee();
//    employee.setEname(ename);
//    employee.setJob(job);
//    if (StringUtils.isNoneBlank(mgr)){
//        employee.setMgr(Integer.valueOf(mgr));
//    }
//    if (StringUtils.isNoneBlank(sal)){
//        employee.setSal(Double.valueOf(sal));
//    }
//    if (StringUtils.isNoneBlank(comm)){
//        employee.setComm(Double.valueOf(comm));
//    }
//    if (StringUtils.isNoneBlank(hiredate)){
//        // apache lang3.jar
//        Date date = DateUtils.parseDate(hiredate, "yyyy-MM-dd", "yyyy/MM/dd");
//        employee.setHiredate(date);
//    }
//    if (StringUtils.isNoneBlank(deptno)){
//        employee.setDeptno(Integer.valueOf(deptno));
//    }


    String hiredate = request.getParameter("hire_date");
    if (StringUtils.isNoneBlank(hiredate)) {
        // apache lang3.jar
        Date date = DateUtils.parseDate(hiredate, "yyyy-MM-dd", "yyyy/MM/dd");
        employee.setHiredate(date);
    }

    boolean saved = new EmployeeDao().save(employee);
    if (saved) { // 成功
        // 只要新增、删除、更新操作的，页面导航都用"重定向"
        response.sendRedirect(request.getContextPath() + "/html/doQueryForm.jsp");

    } else { // 失败
        response.sendRedirect(request.getContextPath() + "/html/addForm.jsp?result=0");
    }

%>
