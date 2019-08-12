<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/9 0009
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<base href="${pageContext.request.contextPath}/">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<html>
<head>
    <title>Title</title>
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

            <div class="col-md-9" style="margin-top: 72px">

                <h2 style="margin-left: 100px">欢迎光临！&emsp;&emsp;
                    <span class="badge-success badge-pill shadow ">&emsp;有上新!&emsp;</span>
                    <span class="badge-light badge-pill shadow">${foodPage.totalRow}</span>

                </h2>

                <c:forEach items="${foodList}" var="food">
                    <div class="card float-md-left ml-3 mt-5 shadow" style="width: 18rem;height: 24rem">
                        <img class="card-img-top" src="images/${food.foodImage}" height="200" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title text-primary">${food.foodName}</h5>
                            <p class="card-text" style="height: 48px"><span class="text-warning">简介：</span>${food.remark}</p>
                            <a href="#" class="btn btn-secondary" data-toggle="modal" data-target="#infoModal" onclick="showInfo(${food.foodId})">单价：￥${food.foodPrice}元</a>
                            <a href="" class="btn btn-warning ml-4">立即购买</a>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <nav aria-label="Page navigation example">
                <ul class="pagination mt-5" style="margin-left: 480px;">
                    <li class="page-item"><a class="page-link" href="user/food.do?pageNo=1">首页</a></li>
                    <li class="page-item"><a class="page-link" href="user/food.do?pageNo=${foodPage.pageNo-1}">上一页</a></li>
                    <li class="page-item"><a class="page-link" href="user/food.do?pageNo=${foodPage.pageNo+1}">下一页</a></li>
                    <li class="page-item"><a class="page-link" href="user/food.do?pageNo=${foodPage.totalPage}">尾页</a></li>
                </ul>
            </nav>
        </div>

        <%--模态框--%>
        <div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">菜品信息</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-warning">购买</button>
                    </div>
                </div>
            </div>
        </div><%--模态框END--%>

    </div>

<script>
    function showInfo(foodId) {
        $.post('user/info.do?foodId='+foodId,function (res) {
            var food = res;
            var str = `
                <table class="table table-borderless text-center">
                            <tbody>
                            <tr>
                                <td><img class="rounded" src="images/\${food.foodImage}" alt=""></td>
                            </tr>
                            <tr>
                                <td>\${food.foodName}</td>
                            </tr>
                            <tr>
                                <td>\${food.description}</td>
                            </tr>
                            </tbody>
                        </table>
                `;
            $('.modal-body').empty();
            $('.modal-body').append(str);
        },'json')
    }
</script>
</body>
</html>
