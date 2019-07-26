<%--
  Created by IntelliJ IDEA.
  User: Nakus
  Date: 2019/4/22
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>6_2</title>
</head>
<body>
    <%
        out.println(pageContext.getAttribute("p")+"<br>");
        out.print(request.getAttribute("r")+"<br>");
        out.print(session.getAttribute("s")+"<br>");
        out.print(application.getAttribute("a")+"<br>");
    %>
</body>
</html>
