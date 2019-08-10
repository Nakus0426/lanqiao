<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/8 0008
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>网上订餐</title>
    <script src="js/jquery-2.2.4.js"></script>
    <script src="js/bootstrap/4.3.1/js/bootstrap.js"></script>
    <link href="js/bootstrap/4.3.1/css/bootstrap.css" type="text/css" rel="stylesheet">
</head>
<body style="background-image: url('images/back.png')">
<div class="container">
    <div class="row">
        <%@include file="top.html" %>
    </div>
    <div class="row">
        <div class="col-md-3 mt-4">
            <%@include file="left.html" %>
        </div>

        <div class="col-md-9" style="margin-top: 50px">
            <div class="col-md-6 offset-2 mt-5">
                <form class="form-horizontal" role="form" action="user/login.do" method="post">
                    <div class="input-group input-group-lg">
                        <input type="text" name="loginName" class="form-control shadow" placeholder="请输入用户名"
                               aria-describedby="sizing-addon1">
                    </div>
                    <br>
                    <div class="input-group input-group-lg">
                        <input type="text" name="loginpass" class="form-control shadow" placeholder="请输入密码"
                               aria-describedby="sizing-addon2">
                    </div>
                    <br>

                    <div class="input-group">
                        <div class="col-md-5 offset-2">
                            <button type="submit" class="btn btn-primary btn-lg shadow">登录</button>
                        </div>
                        <div class="col-md-5">
                            <button type="reset" class="btn btn-info btn-lg shadow">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
