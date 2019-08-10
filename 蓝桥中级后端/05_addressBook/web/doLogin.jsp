<%@ page import="com.com.lanqiao.dao.userDao" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/3 0003
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("userName");
    String password = request.getParameter("password");
    if (StringUtils.isNoneBlank(password)) {
        userDao userDao = new userDao();
        boolean login = userDao.login(username, password);
        if (login) {
            response.sendRedirect(request.getContextPath()+"/main.jsp");
            session.setAttribute("username",username);
        }else {
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }
    }else {
        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }


%>

