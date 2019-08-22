<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.lanqiao.guimei.commons.DateUtils" %>
<%--
  Created by IntelliJ IDEA.
  User: jamesmac
  Date: 2019/7/30
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单查询</title>
    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">


    <style>
        #emptable tr:not(.header):hover{
            background-color: #c4e3f3;
        }
    </style>
</head>
<body>

<br><br>
<div class="container">



        <div class="row clearfix">
            <div class="col-md-2 column">
            </div>
            <div class="col-md-8 column">
                <div class="row clearfix">
                    <form class="form-inline" action="page2.do" method="post">
                        <div class="row">
                            <div class="col-md-offset-4 col-md-8 column ">
                                <div class="form-group">
                                    <label for="trdNoInput">订单编号</label>
                                    <input type="text" name="trdNo" class="form-control" id="trdNoInput" placeholder="请输入订单编号"
                                           value="<%=request.getParameter("trdNo")!=null ? request.getParameter("trdNo"):""%>">
                                </div>

                            </div>
                        </div>
                        <div>
                            <br>
                            <div class="row">
                                <div class="col-md-8 column col-md-offset-2 text-center">
                                    <button type="submit" class="btn btn-primary" style="width: 100px;">查询</button>
                                    <button type="reset" class="btn btn-default" style="width: 100px;margin-left: 10px;">重置</button>
                                </div>
                            </div>
                        </div>

                    </form>
                </div>

            </div>
            <div class="col-md-2 column">
            </div>
        </div>



    <br>
    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="panel panel-primary">
                <!-- Default panel contents -->
                <div class="panel-heading"><span class="glyphicon glyphicon-list-alt"></span> 全部订单</div>
                <table id="emptable" class="table table-striped table-bordered table-hover">
                    <tr class="header">
                        <th>订单详情</th>
                        <th>收货人</th>
                        <th>商品信息</th>
                        <th>金额</th>
                        <th>操作</th>

                    </tr>

                    <c:forEach var="trade" items="${tradeList}">
                    <tr id="tr_${trade.trdNo}">
                        <td><div STYLE="display: flex;">
                            <span style="margin-left: 5px">${DateUtils.format(trade.trdTime)}</span>

                            <span style="margin-left: 10px">订单号:${trade.trdNo}</span>
                            <span style="margin-left: 15px">${trade.venName}<img src="images/p1.png" alt=""></span></div></td>
                        <td>
                            <div STYLE="display: flex;">
                                <img src="images/${trade.imageName}" alt="404"STYLE="width: 70px;height: 70px;">
                                <div style="width: 253px;margin-top: 10px">
                                    <span>${ trade.ctgrName}</span>
                                    <span>${trade.descr}</span></div>
                                <span style="margin-left: 60px;margin-top: 10px">x${trade.quantity}</span>
                            </div>
                        </td>

                        <td >
                            <button type="button" class="btn btn-primary" title="买家信息"
                                    data-container="body" data-toggle="popover" data-placement="top"
                                    data-content="${trade.receiver} ${trade.trdLoc} ${trade.phone}">
                                    ${trade.receiver}
                            </button>

                        <td >

                            <div style="margin-top: 10px">￥${trade.tptalMoney}</div></td>

                        <td>
                            <a href="javascript:void(0)" class="btn btn-info btn-sm"
                               data-toggle="modal" data-target="#updateModal" data-backdrop="static"
                               onclick="toUpdate(this,'${trade.trdNo}')" >更新买家信息</a>
                            </a>
                            <a href="javascript:void(0)" class="btn btn-danger btn-sm delete-trade"
                               trdNo="${trade.trdNo}" >删除订单</a>
                            </a>
                        </td>
                    </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="8" class="text-right">
                            <!-- 分页栏 -->
                            <c:if test="${not tradePage.first}">
                                <a href="trade/page.do?pageNo=1">第一页</a>&nbsp;&nbsp;
                            </c:if>
                            <c:if test="${tradePage.pageNo gt 1}">
                                <a href="trade/page.do?pageNo=${tradePage.pageNo-1}">上一页</a>&nbsp;&nbsp;
                            </c:if>
                            <c:if test="${tradePage.pageNo lt tradePage.totalPage}">
                                <a href="trade/page.do?pageNo=${tradePage.pageNo+1}">下一页</a>&nbsp;&nbsp;
                            </c:if>
                            <c:if test="${not tradePage.last}">
                                <a href="trade/page.do?pageNo=${tradePage.totalPage}">最后一页</a>
                            </c:if>
                            <c:if test="${not empty tradePage}">
                                &nbsp;&nbsp; 共${tradePage.totalRow}条记录&nbsp;第${tradePage.pageNo}页/共${tradePage.totalPage}页
                            </c:if>

                        </td>
                    </tr>
                </table>
            </div>
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

        $("[data-toggle='popover']").popover();

        $('.delete-trade').click(function () {
            var trdNo = $(this).attr('trdNo');
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
                        removeTrade(trdNo);
                        swal("Deleted!", "数据已删除", "success")
                            ,function () {
                            // 刷新页面
                            location.reload()};
                    } else {
                        swal("Cancelled", "数据取消删除", "error");
                    }
                });
        });


    });

    function removeTrade(trd_no) {
        // 底层ajax函数: $.ajax()
        // $.get('doDelete.jsp?prodno=' + prodno, function (res) { }, 'json'); // ok

        $.get('trade/delete.do',{trdNo: trd_no}, // jquery会把此请求参序列为doDelete.jsp?prodno=8899
            function (res) { // {result: true|false}
                if (res.result) { // 表达式只要不是undefine, null,“” 条件值就为true
                    $('#tr_' + trd_no).remove();
                }
            },'json');
    }

    // 更新员工
    function toUpdate(ele,trdNo) {
        $('#updateModal .modal-content').empty();
        // ajax请求将目标管理页面的HTML载入到模态框的<div class="modal-content">html....<div>部分中
        $.get('updateTrade.jsp', {"trdNo": trdNo}, function (res) {
            $('#updateModal .modal-content').append(res);
        });
    }






    function updateTrades(prodno) {
        var data = $('#update').serialize();
        // empno=7369&ename=SMITH&job=CLERK&job=7902&hiredate=1980-12-17&sal=5900.0&comm=100.0&deptno=20
        console.log(data);
        $.post('trade/update.do',data, function (res) {
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
                    title: "操作成功",
                    text: "完成更新操作."
                },function () {
                    location.reload();
                });
            }
        },'json');
    }

</script>
</body>
</html>
