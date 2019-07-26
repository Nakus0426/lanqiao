<%--
  Created by IntelliJ IDEA.
  User: Nakus
  Date: 2019/5/15
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>show</title>
</head>
<body>
    <jsp:useBean id="c" class="com.javaweb.entity.Complex" scope="request"/>
    <jsp:setProperty name="c" property="real"/>
    <jsp:setProperty name="c" property="ima"/>
    <%
        String oper = request.getParameter("oper");
        if ("+".equals(oper)){
            %><P>结果为：<jsp:getProperty name="c" property="infoAdd"/></P><%
        }

        else if ("-".equals(oper)){
            %><P>结果为：<jsp:getProperty name="c" property="infosub"/></P><%
        }

        else if ("*".equals(oper)){
            %><P>结果为：<jsp:getProperty name="c" property="infomul"/></P><%
        }

        else{
            %><P>结果为：<jsp:getProperty name="c" property="infodiv"/></P><%
        }
    %>
</body>
</html>
