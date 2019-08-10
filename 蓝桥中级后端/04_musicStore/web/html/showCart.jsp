<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.com.lanqiao.entity.CartItem" %>
<%@ page import="com.com.lanqiao.entity.CdDisc" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: jamesmac
  Date: 2019/8/2
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我听我购唱片网-购物车</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="../static/js/bootstrap/3.3.7/css/bootstrap.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1 column">
            <img src="../images/header.jpg" alt="">
            <hr style="border: 2px solid #9d9d9d;">
        </div>
    </div>
    <div class="row">
        <div class="col-md-10 col-md-offset-1 column">
            <div class="col-md-10 col-md-offset-1">
                <table class="table table-striped table-bordered table-hover">
                    <tr>
                        <th>编号</th>
                        <th>名称</th>
                        <th>单价</th>
                        <th>数量</th>
                        <th>小计</th>
                    </tr>
                <%
                    Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
                    pageContext.setAttribute("carts",cart);
                %>
                    <c:forEach items="${carts}" var="carts">
                        <tr>
                            <td>${carts.discNo}</td>
                            <td>${item.disc.title}</td>
                            <td>${item.disc.price}</td>
                            <td>${item.quantity}</td>
                            <td>${item.quantity * item.disc.price}</td>
                        </tr>
                    </c:forEach>
                </table>
                <a href="main.jsp" class="btn btn-primary btn-sm">继续订购</a>
            </div>
        </div>
    </div>
</div>

<script src="../static/js/jquery-2.2.4.js"></script>
<script src="../static/js/bootstrap/3.3.7/js/bootstrap.js"></script>
</body>
</html>
