<%@ page import="java.text.DecimalFormat" %><%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/7/29 0029
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>03</title>
</head>
<body>
<%!
    String exchange(int x1) {
        DecimalFormat x2 = new DecimalFormat(".00");
        return x2.format(x1);
    }
%>
转换前：2<br>
转换后：<%=exchange(2)%>
</body>
</html>
