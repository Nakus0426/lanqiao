<%--
  Created by IntelliJ IDEA.
  User: Nakus
  Date: 2019/4/22
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>input</title>
</head>
    <body>
        <h3>按下列格式要求，输入两个整数：</h3><br>
        <form action="sum.jsp" method="post">
            数据1:<input type="text" name="shuju1"><br><br>
            数据2:<input type="text" name="shuju2"><br><br>
            <input type="submit" value="提交">
        </form>
    </body>
</html>
