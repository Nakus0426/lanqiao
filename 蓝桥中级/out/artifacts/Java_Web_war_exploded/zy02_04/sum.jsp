<%--
  Created by IntelliJ IDEA.
  User: Nakus
  Date: 2019/4/22
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>sum</title>
</head>
    <body>
        <%
            int sum = 0;
            int a = 0;
            int b = 0;
        %>
        <%
            String aa = request.getParameter("shuju1");
            String bb = request.getParameter("shuju2");
            a = Integer.parseInt(aa);
            b = Integer.parseInt(bb);
            sum = a+b;
            if (sum >=0){%>
                <jsp:forward page="positive.jsp"></jsp:forward>
            <%}else{%>
                <jsp:forward page="negative.jsp"></jsp:forward>
            <%}
        %>
</body>
</html>
