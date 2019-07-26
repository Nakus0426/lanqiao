<%--
  Created by IntelliJ IDEA.
  User: Nakus
  Date: 2019/4/21
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>zy02_03</title>
</head>
<body>
<form name="form1" method="post" action="get_book.jsp">
    <table bgcolor="#F0FFF0" border="1">
        <tr bgcolor="#E0FFFF">
            <td><font color="blue" face="楷体">《Java Web应用开发技术与案例教程》</font></td>
            <td><font color="blue" face="楷体">《软件工程》</font></td>
        </tr>
        <tr bgcolor="#E0FFFF">
            <td><input type="radio" name="book" value="web"></td>
            <td><input type="radio" name="book" value="signal"></td>
        </tr>
        <tr bgcolor="#E0FFFF">
            <td colspan="2">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</body>
</html>