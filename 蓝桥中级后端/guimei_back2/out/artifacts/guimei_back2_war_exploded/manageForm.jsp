<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品查询</title>
    <!-- Sweet Alert -->
    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">


    <style>
        #prtable tr:not(.header):hover{
            background-color: #c4e3f3;
        }
    </style>
</head>
<body>
<%--<form action="doQueryForm.jsp"></form>

--%>
<br>
<h1 style="text-align: center"> 售卖管理界面</h1>
<div class="container">
    <div class="row clearfix">
        <div class="row clearfix">
            <div class="col-md-2 column">
            </div>
            <div class="col-md-8 column">
                <div class="row clearfix">
                    <form class="form-horizontal" role="form" action="manage.do" method="post">
                        <div class="col-md-4 column">
                            <div class="input-group">
                                <span class="input-group-addon" >商品名:</span>
                                <input type="text" name="prodName" class="form-control" placeholder="请输入商品名"
                                       value="<%=request.getParameter("prodName")!=null ? request.getParameter("prodName"):""%>" aria-describedby="sizing-addon1">
                            </div>
                        </div>
                        <div class="col-md-4 column">
                        <div class="input-group">
                            <span class="input-group-addon" >型号:</span>
                            <input type="text" name="type" class="form-control" placeholder="请输入型号"
                                   value="${param.type}"  aria-describedby="sizing-addon1">
                        </div>
                    </div>
                        <div class="col-md-4 column">
                            <div class="input-group">
                                <span class="input-group-addon" >状态:</span>

                                <select name="status" class="form-control" >
                                    <option value="">--请选择--</option>
                                    <option value="0">未上架</option>
                                    <option value="1">已上架</option>
                                </select>

                            </div>
                        </div>

                        <br>  <br><br>
                        <div class="row clearfix">
                            <div class="col-md-4 column">
                            </div>
                            <div class="col-md-4 column">
                                <div class="form-group">
                                    <div class="col-sm-6 text-center">
                                        <button type="submit" class="btn btn-info btn-block">查询</button>
                                    </div>
                                    <div class="col-sm-6 text-center">
                                        <button type="reset" class="btn btn-default btn-block">重置</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 column">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-2 column">
            </div>
        </div>
    </div>
    <br>
    <div class="row clearfix">
        </div>
        <div class="col-md-12 column">
            <div class="panel panel-primary" style="width: 1120px">
                <!-- Default panel contents -->
                <div class="panel-heading">商品列表</div>
                <div class="panel-body">
                </div>
                <table  id="prtable" class="table table-striped table-bordered table-hover">
                    <tr>
                        <th>编号</th>
                        <th>商品名</th>
                        <th>图片</th>
                        <th>状态</th>
                        <th>价格</th>
                        <th>型号</th>
                        <th>操作</th>
                    </tr>



                    <c:forEach var="product" items="${productList}">
                        <tr id="tr_${product.prodNo}">
                            <td>${product.prodNo}</td>
                            <td>${product.prodName}</td>
                            <td><img src="images/product/${product.image}.jpg" alt="" width="50px" height="50px"></td>
                            <c:if test="${product.status eq 0}">
                            <td>  <span class="label label-danger">未上架</span></td>


                            </c:if>
                            <c:if test="${product.status eq 1}">
                                <td>  <span class="label label-primary">已上架</span>
                                </td>
                            </c:if>
                            <td>￥${product.price}</td>
                            <td>${product.type}</td>

                            <td width="150px">

                                <c:if test="${product.status eq 0}">
                                    <a href="javascript:void(0)" class="btn btn-success  demo" prodno="${product.prodNo}">点击上架</a>
                                </c:if>
                                <c:if test="${product.status eq 1}">
                                    <a href="javascript:void(0)" class="btn btn-warning  demo2" prodno="${product.prodNo}">点击下架</a>
                                </c:if>

                            </td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="8" class="text-right">
                            <!-- 分页栏 -->
                            <c:if test="${not productPage.first}">
                                <a href="manage.do?pageNo=1">第一页</a>&nbsp;&nbsp;
                            </c:if>
                            <c:if test="${productPage.pageNo gt 1}">
                                <a href="manage.do?pageNo=${productPage.pageNo-1}">上一页</a>&nbsp;&nbsp;
                            </c:if>
                            <c:if test="${productPage.pageNo lt productPage.totalPage}">
                                <a href="manage.do?pageNo=${productPage.pageNo+1}">下一页</a>&nbsp;&nbsp;
                            </c:if>
                            <c:if test="${not productPage.last}">
                                <a href="manage.do?pageNo=${productPage.totalPage}">最后一页</a>
                            </c:if>
                            <c:if test="${not empty productPage}">
                                &nbsp;&nbsp; 共${productPage.totalRow}条记录&nbsp;第${productPage.pageNo}页/共${productPage.totalPage}页
                            </c:if>

                        </td>
                    </tr>
                </table>
            </div>
        </div>
        </div>
    </div>
</div>
<!-- 更新的模态框 -->
<div class="modal fade" tabindex="-1" role="dialog" id="updateModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script src="js/jquery-2.2.4.js"></script>
<script src="js/bootstrap/3.3.7/js/bootstrap.js"></script>

<!-- Mainly scripts -->
<%-- <script src="js/framework/metisMenu/jquery.metisMenu.js"></script>--%>
<%-- <script src="js/framework/slimscroll/jquery.slimscroll.min.js"></script>--%>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<%-- <script src="js/framework/pace/pace.min.js"></script>--%>

<!-- Sweet alert -->
<script src="js/framework/sweetalert/sweetalert.min.js"></script>

<!-- 公共的 -->
<script src="js/common.js"></script>


<script>



    $(function () {


        $('.demo').click(function(){
            var prodno = $(this).attr('prodno');
            onSale(prodno);

            swal({
                title: "操作成功!",
                text: "商品已经上架",
                type: "success"
            });
        });

        $('.demo2').click(function(){
            var prodno = $(this).attr('prodno');
            fakeDelete(prodno);
            swal({
                title: "操作成功!",
                text: "商品已经下架",
                type: "success"
            });
        });




    });


    function fakeDelete(prod_no) {
        $.get('fakeDelete.do',{prodno: prod_no},
            function (res) {
                if (res.result) {
                    setTimeout("window.location.reload()",1000);

                }
            },'json');
    }

    function onSale(prod_no) {
        $.get('onSale.do',{prodno: prod_no},
            function (res) {
                if (res.result) {
                    setTimeout("window.location.reload()",1000);
                }
            },'json');
    }




</script>
</body>
</html>
