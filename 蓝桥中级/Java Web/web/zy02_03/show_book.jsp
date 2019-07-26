<%--
  Created by IntelliJ IDEA.
  User: Nakus
  Date: 2019/4/21
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<html>
    <head>
        <title>show_book</title>
    </head>
    <body>
        <font color="blue">
            你选择了:<%=request.getParameter("bookname") %>
        </font><br/>
        <font color="blue">
            该图书的作者:<%=request.getParameter("auther") %>
        </font>
    </body>
</html>
