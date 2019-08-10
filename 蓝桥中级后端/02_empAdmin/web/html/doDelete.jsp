<%@ page import="com.com.lanqiao.dao.EmployeeDao" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %><%--
  Created by IntelliJ IDEA.
  User: jamesmac
  Date: 2019/8/1
  Time: 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String empno = request.getParameter("empno");
    if (StringUtils.isNoneBlank(empno)){
        boolean deleted = new EmployeeDao().delete(Integer.valueOf(empno));
        if (deleted) {
            out.write("{\"result\" : true}");
        } else {
            out.write("{\"result\" : false}");
        }
    } else {
        out.write("{\"result\" : false}");
    }
%>
