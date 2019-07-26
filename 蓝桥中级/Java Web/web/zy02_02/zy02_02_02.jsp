<%--
  Created by IntelliJ IDEA.
  User: Nakus
  Date: 2019/4/22
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>zy_02_02</title>
</head>
<body>
<%
    int number= Integer.parseInt(request.getParameter("number"));
    out.println(number+"的平方是："+number*number);
%>
</body>
</html>
