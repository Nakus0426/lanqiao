<%@ page import="java.util.List" %>
<%@ page import="com.com.lanqiao.entity.CdDisc" %>
<%@ page import="com.com.lanqiao.dao.CdDiscDao" %><%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/2 0002
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../static/js/bootstrap/3.3.7/css/bootstrap.css">
<html>
<head>
    <title>音乐商城</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-9 col-md-offset-3">
            <img src="../images/header.jpg" alt="">
        </div>
    </div>

    <%
        List<CdDisc> cdDiscs = new CdDiscDao().list();
        for (CdDisc cdDisc : cdDiscs) {
            pageContext.setAttribute("disc",cdDisc);
    %>
    <div class="row">
        <div class="col-md-10 col-md-offset-2">
            <hr>
            <div class="col-md-3">
                <img src="../images/${disc.img}" class="img-rounded img-responsive">
            </div>

            <div class="col-md-9">
                <h3 class="bg-primary">${disc.title}</h3>
                <p class="bg-success">${disc.description}</p>
                <button class="btn btn-info btn-sm" onclick="location.href='addToCart.jsp?discNo=${disc.discNo}'">
                    <span class="glyphicon glyphicon-plus"></span>购买
                </button>
            </div>
        </div>
    </div>
    <%
        }
    %>
</div>
</body>
</html>
