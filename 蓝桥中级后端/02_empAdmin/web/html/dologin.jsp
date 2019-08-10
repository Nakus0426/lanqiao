<%@ page import="java.util.Objects" %>
<%@ page import="org.apache.catalina.User" %>
<%@ page import="com.com.lanqiao.entity.Users" %>
<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/7/30 0030
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工管理系统</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Users login_users = new Users(username,password);

    if (!(Objects.equals(username, "jack") && Objects.equals(password, "123456"))) {
        request.setAttribute("err","用户名和密码错误！");
%><jsp:forward page="login.jsp"></jsp:forward><%
    } else {
        session.setAttribute("login", login_users);
        response.sendRedirect(request.getContextPath() + "/html/main.jsp");
    }
%>
</body>
</html>
