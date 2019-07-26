<%--
  Created by IntelliJ IDEA.
  User: naku
  Date: 2019/4/22
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");
    String s1=request.getParameter("usrname");
    String s2=request.getParameter("password");
    String s3=request.getParameter("sex");
    String s4=request.getParameter("check");
    String s5=request.getParameter("xingzuo");
    String s6=request.getParameter("letter");
%>
<font face="楷体" size="4" color="black">
    您的姓名是：<%=s1%><br>
    您的密码是：<%=s2%><br>
    您的性别是：<%=s3%><br>
    您的爱好是：<%=s4%><br>
    您的星座是：<%=s5%><br>
    您的个人简介是：<%=s6%><br>
</font>
</body>
</html>
