<%--
  Created by IntelliJ IDEA.
  User: Nakus
  Date: 2019/4/21
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>get_book</title>
</head>
<body>
    <%
        String getsel;
        getsel = request.getParameter("book");
        if (getsel.equals("web")) {%>
            <jsp:forward page="show_book.jsp">
            <jsp:param name="bookname" value="《Java Web应用开发技术与案例》"/>
            <jsp:param name="auther" value="张继军、董卫"/>
            </jsp:forward>
        <%} else if (getsel.equals("signal")) {%>
                <jsp:forward page="show_book.jsp">
                <jsp:param name="bookname" value="软件工程"/>
                <jsp:param name="auther" value="张海藩、牟永敏"/>
                </jsp:forward>
        <%}
    %>
</body>
</html>
