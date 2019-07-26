<%--
  Created by IntelliJ IDEA.
  User: naku
  Date: 2019/4/22
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Title</title>
</head>
<body>
<form action="receive.jsp" method="post">
    <table>
        <tr><td>用户名</td><td><input type="text" name="usrname"></td><td>(必填)</td></tr>
        <tr><td>密码</td><td><input type="password" name="password"></td><td>(必填)</td></tr>
        <tr><td>确认密码</td><td><input type="password" name="password"></td></tr>
        <tr><td>性别</td>
            <td><input type="radio" name="sex" checked="checked">男
                <input type="radio" name="sex">女
            </td>
        </tr>
        <tr><td>爱好</td>
            <td colspan="2">
                <input type="checkbox" name="check">计算机
                <input type="checkbox" name="check">音乐
                <input type="checkbox" name="check">体育
                <input type="checkbox" name="check">文学
            </td>
        </tr>
        <tr><td>星座</td>
            <td><select name="xingzuo">
                <option selected>巨蟹</option>
                <option >白羊</option>
                <option >金牛</option>
                <option >双子</option>
                <option >狮子</option>
                <option >处女</option>
                <option >天秤</option>
                <option >天蝎</option>
                <option >射手</option>
                <option >摩羯</option>
                <option >水瓶</option>
                <option >双鱼</option>
            </td>
        </tr>
        <tr><td>个人简介</td>
            <td colspan="2"><textarea name="letter" rows="4" cols="40"></textarea></td>
        </tr>
        <tr>
            <td><input type="submit" value="提交"><input type="reset" value="重置"></td>
        </tr>
    </table>
</form>

</body>
</html>
