<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/7/30 0030
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>音乐商城</title>
    <link rel="stylesheet" href="../static/js/bootstrap/3.3.7/css/bootstrap.css">
    <link rel="stylesheet" href="../static/css/all.css">
    <link rel="stylesheet" href="../static/css/box_shadow.css">
</head>
<body>
<div class="container" style="margin-top: 150px;">
    <div class="row">
        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 col-md-offset-3">
            <form class="form-horizontal" role="form" action="dologin.jsp" method="post">
                <div class="input-group input-group-lg">
          <span class="input-group-addon" id="sizing-addon1">
            <span class="glyphicon glyphicon-user"></span>
          </span>
                    <input type="text" name="username" class="form-control" placeholder="请输入用户名"
                           aria-describedby="sizing-addon1">
                </div>
                <br>
                <div class="input-group input-group-lg">
          <span class="input-group-addon" id="sizing-addon2">
            <span class="glyphicon glyphicon-lock"></span>
          </span>
                    <input type="text" name="password" class="form-control" placeholder="请输入密码"
                           aria-describedby="sizing-addon2">
                </div>
                <br>

                <div class="form-group">
                    <div class="col-sm-1 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-lg">登录</button>
                    </div>
                    <div class="col-sm-1 col-sm-offset-3">
                        <button type="submit" class="btn btn-default btn-lg">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>
<%
    String err = (String)request.getAttribute("err");
    if(err != null){
%><script>alert("<%=err%>")</script><%
    }
%>
</body>
</html>

