<%@ page import="com.lanqiao.dao.DepartmentDao" %><%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/7/31
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String json = new DepartmentDao().load();

    // 将json字符串通servlet的输出流写回到客户端浏览器
    out.write(json);
%>
