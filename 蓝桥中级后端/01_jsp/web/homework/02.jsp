<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/7/29 0029
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>02</title>
</head>
<body>
<%!
    int radius = 6;

    //直径
    double diameter() {
        return radius * 2;
    }

    //周长
    double permeter() {
        return 2 * Math.PI * radius;
    }

    //面积
    double area() {
        return Math.PI * radius * radius;
    }
%>

圆的半径：<%=radius%> cm<br>
圆的直径：<%=diameter()%> cm<br>
圆的周长：<%=permeter()%> cm<br>
圆的面积：<%=area()%> cm<sup>2</sup>
</body>
</html>
