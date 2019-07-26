<%--
  Created by IntelliJ IDEA.
  User: Nakus
  Date: 2019/4/22
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>zy02_07_01</title>
</head>
<body>
<%
    Object o= application.getAttribute("count");
    if (o == null) {
        application.setAttribute("count", 1);
    } else {
        application.setAttribute("count", (Integer) o + 1);
    }
%>
<body>
    您是第${applicationScope.count}位访客.....
</body>
</body>
</html>
