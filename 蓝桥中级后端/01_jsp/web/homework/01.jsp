<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/7/29 0029
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>01</title>
</head>
<body>
<%
    int max = 5;
    //控制行数
    for (int i = 1; i <= 5; i++) {
        //控制空格
        for (int j = 1; j <= max - i; j++) {
        %>&#8194<%
        }
        //控制星数
        for (int k = 1; k <= i * 2 - 1; k++) {
            %>*<%
        }
        %><br><%
    }
%>
</body>
</html>
