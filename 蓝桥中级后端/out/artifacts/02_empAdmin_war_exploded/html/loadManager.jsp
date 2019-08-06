<%@ page import="com.lanqiao.dao.EmployeeDao" %>
<%@ page import="com.lanqiao.entity.Employee" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/7/31
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String json = new EmployeeDao().loadManager();
    out.write(json);
%>
