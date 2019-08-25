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
<br><br>
<h1 style="text-align: center"> 商品查询界面</h1>
<div class="container">
    <div class="row clearfix">
        <div class="row clearfix">
            <div class="col-md-2 column">
            </div>
            <div class="col-md-8 column">
                <div class="row clearfix">
                    <form class="form-horizontal" role="form" action="page.do" method="post">
                        <div class="col-md-6 column">
                            <div class="input-group">
                                <span class="input-group-addon" >商品名:</span>
                                <input type="text" name="prodName" class="form-control" placeholder="请输入商品名"
                                       value="<%=request.getParameter("prodName")!=null ? request.getParameter("prodName"):""%>" aria-describedby="sizing-addon1">
                            </div>
                        </div>
                        <div class="col-md-6 column">
                            <div class="input-group">
                                <span class="input-group-addon" >型号:</span>
                                <input type="text" name="type" class="form-control" placeholder="请输入型号"
                                       value="${param.type}"  aria-describedby="sizing-addon1">
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
    <div class="row clearfix ">

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
                        <th>型号</th>
                        <th>价格</th>
                        <th>颜色</th>
                        <th>操作</th>
                    </tr>



                    <c:forEach var="product" items="${productList}">
                        <tr id="tr_${product.prodNo}">
                            <td>${product.prodNo}</td>
                            <td>${product.prodName}</td>
                            <td><img src="images/product/${product.image}.jpg" alt="" width="50px" height="50px"></td>
                            <td>${product.type}</td>
                            <td>${product.price}</td>
                            <td>${product.color}</td>
                            <td width="150px">

                                  <a href="javascript:void (0)" class="btn btn-info " data-toggle="modal"
                                     data-target="#updateModal" data-backdrop="static"
                                     onclick="toUpdate(this,'${product.prodNo}')" >更新</a>
                                  <a href="javascript:void(0)" class="btn btn-danger  delete-pr" prodno="${product.prodNo}">删除</a>

                            </td>
                        </tr>
                    </c:forEach>
                        <tr>
                            <td colspan="8" class="text-right">
                                <!-- 分页栏 -->
                                <c:if test="${not productPage.first}">
                                    <a href="page.do?pageNo=1">第一页</a>&nbsp;&nbsp;
                                </c:if>
                                <c:if test="${productPage.pageNo gt 1}">
                                    <a href="page.do?pageNo=${productPage.pageNo-1}">上一页</a>&nbsp;&nbsp;
                                </c:if>
                                <c:if test="${productPage.pageNo lt productPage.totalPage}">
                                    <a href="page.do?pageNo=${productPage.pageNo+1}">下一页</a>&nbsp;&nbsp;
                                </c:if>
                                <c:if test="${not productPage.last}">
                                    <a href="page.do?pageNo=${productPage.totalPage}">最后一页</a>
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
        $('.delete-pr').click(function () {
            var prodno = $(this).attr('prodno');
            swal({
                    title: "是否确定删除?",
                    text: "你将无法恢复数据!",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "确认!",
                    cancelButtonText: "取消!",
                    closeOnConfirm: false,
                    closeOnCancel: false },
                function (isConfirm) {
                    if (isConfirm) {
                        // console.log('编号：',empno);
                        removeProduct(prodno);
                        swal("Deleted!", "数据已删除", "success");
                    } else {
                        swal("Cancelled", "数据取消删除", "error");
                    }
                });
        });


    });



    // 此函数是我们以前写过的普通function, 不要写至jquery的ready事件里面去
    function removeProduct(prod_no) {
        // 底层ajax函数: $.ajax()
        // $.get('doDelete.jsp?prodno=' + prodno, function (res) { }, 'json'); // ok

        $.get('delete.do',{prodno: prod_no}, // jquery会把此请求参序列为doDelete.jsp?prodno=8899
            function (res) { // {result: true|false}
                if (res.result) { // 表达式只要不是undefine, null,“” 条件值就为true
                    $('#tr_' + prod_no).remove();
                }
            },'json');
    }


    function toUpdate(ele,prodno) {
        $('#updateModal .modal-content').empty();
        $.get('updateForm.jsp' , { "prodno": prodno}, function (res) {
            $('#updateModal .modal-content').append(res);

        });
    }




    function updateProduct(prodno) {
        var data = $('#updateForm').serialize();
        // empno=7369&ename=SMITH&job=CLERK&job=7902&hiredate=1980-12-17&sal=5900.0&comm=100.0&deptno=20
        console.log(data);
        $.post('update.do',data, function (res) {
            if (res.result){
                console.log(res.result);
                // 手动关闭模态框
                $('#updateModal').modal('hide');
                $('#updateModal .modal-content').empty();
                swal({
                    title: "操作成功",
                    text: "完成更新操作."
                },function () {
                    location.reload();
                });
            } else {
                swal({
                    title: "更新结果",
                    text: "更新编号：" + prodno + " 的员工信息失败！",
                    type: "error"
                });
            }
        },'json');
    }









</script>

</body>
</html>
