<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/7/29 0029
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>04</title>
</head>
<body>
<form method="post" action="show.jsp">
    <table>
        <tr>
            <td><label for="username">用户名：</label><input type="text" id="username"></td>
        </tr>
        <tr>
            <td><label for="password">密码：</label><input type="text" id="password"></td>
        </tr>
        <tr>
            <td><label for="password">确认密码：</label><input type="text" id="repassword"></td>
        </tr>
        <tr>
            <td><label for="password">性别：</label><input type="text" id="sex"></td>
        </tr>
        <tr>
            <td><label for="password">学历：</label><input type="text" id="edu"></td>
        </tr>
        <tr>
            <td><button type="submit">提交</button></td>
        </tr>

    </table>

</form>
</body>
</html>
