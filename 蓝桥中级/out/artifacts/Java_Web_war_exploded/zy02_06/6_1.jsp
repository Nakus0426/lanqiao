<%--
  Created by IntelliJ IDEA.
  User: Nakus
  Date: 2019/4/22
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>6_1</title>
</head>
<body>
        <%
            String pagestr = "pagestr";
            String requeststr = "requeststr";
            String sessionstr = "sessionstr";
            String applicationstr = "applicationstr";

            pageContext.setAttribute("p",pagestr);
            request.setAttribute("r",requeststr);
            session.setAttribute("s",sessionstr);
            application.setAttribute("a",applicationstr);

            //response.sendRedirect("6_2.jsp");
        %>
        <!--jsp:forward page="6_2.jsp"--><!--/jsp:forward-->
</body>
</html>
