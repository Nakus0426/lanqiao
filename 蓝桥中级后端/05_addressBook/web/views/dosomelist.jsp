<%@ page import="com.com.lanqiao.dao.bookDao" %>
<%@ page import="com.com.lanqiao.entity.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/4 0004
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int relation = Integer.parseInt(request.getParameter("rel"));
    request.setAttribute("rel",relation);
    request.getRequestDispatcher("show.jsp").forward(request,response);
%>
