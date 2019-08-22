<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 卢炳祥
  Date: 2019/8/16
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}/">
    <title>Title</title>
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
        #emptable tr:not(.header):hover{
            background-color: #6b9cde;
        }
    </style>
</head>
<body>
<!--查询结果栏-->
<div class="panel panel-primary">
    <table class="table table-striped table-bordered table-hover">
        <%-- 显示分类 --%>
        <tr colspan="8" style="text-align: center">
            <th>大分类</th>
            <th>大分类名称</th>
            <th>小分类</th>
            <th>小分类名称</th>
            <th>操作</th>
        </tr>

        <c:forEach var="cate" items="${cateList}">
            <tr colspan="8" style="text-align: center" id="tr_${cate.ctgrId}">
                <td>${cate.bigCtgrId}</td>
                <td>${cate.bigCtgr}</td>
                <td>${cate.ctgrId}</td>
                <td>${cate.ctgrName}</td>

                <td width="150px">
                    <a href="javascript:void(0)" class="btn btn-info " data-toggle="modal"
                       data-target="#updateModal" data-backdrop="static"
                        onclick="toUpdate(${cate.ctgrId})">更新</a>
                    <a href="javascript:void(0)" class="btn btn-danger deleteCate" ctgrId="${cate.ctgrId}">删除</a>
                </td>
            </tr>
        </c:forEach>
        <%-- 显示分类 End --%>
        <%-- 分页 --%>
        <tr>
            <td colspan="8" style="text-align: center">
                <c:if test="${not sortPage.first}">
                    <a href="query.do?pageNo=1">首页</a>&nbsp;&nbsp;
                </c:if>

                <c:if test="${sortPage.pageNo gt 1}">
                    <a href="query.do?pageNo=${sortPage.pageNo-1}">上一页</a>&nbsp;&nbsp;
                </c:if>
                <c:if test="${sortPage.pageNo lt sortPage.totalPage}">
                    <a href="query.do?pageNo=${sortPage.pageNo+1}">下一页</a>&nbsp;&nbsp;
                </c:if>
                <a href="query.do?pageNo=${sortPage.totalPage}">尾页</a>
                <c:if test="${not empty sortPage}">
                    &nbsp;&nbsp; 共${sortPage.totalRow}条记录&nbsp;第${sortPage.pageNo}页/共${sortPage.totalPage}页
                </c:if>
            </td>
        </tr>

            <%-- 增加分类 --%>

        <%-- 增加分类 End --%>
        <%-- 分页 End --%>
        <%-- 弹出模态框 --%>
        <div class="modal fade" tabindex="-1" role="dialog" id="updateModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                </div>
            </div>
        </div>
    </table>
</div>

<script src="js/jquery-2.2.4.js"></script>
<script src="js/bootstrap/3.3.7/js/bootstrap.js"></script>
<script src="js/inspinia.js"></script>
<script src="js/framework/sweetalert/sweetalert.min.js"></script>



<script>
    $(function () {

        $('.deleteCate').click(function () {
            var ctgrId = $(this).attr('ctgrId');
            swal({
                    title: "请你再次确认！",
                    text: "你是否要删除该分类！",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "是的！",
                    cancelButtonText: "不!",
                    closeOnConfirm: false,
                    closeOnCancel: false },
                function (isConfirm) {
                    if (isConfirm) {
                        console.log('小分类id：',ctgrId);
                        deleteCate(ctgrId);
                        swal("删除！", "该分类已删除", "success");
                    } else {
                        swal("取消", "你的操作已取消", "error");
                    }
                });
        });

    });

    function deleteCate(ctgrId) {
        $.get('goodsSort/delete.do',{ctgrId:ctgrId},function (res) {
            if (res.result) {
                $('#tr_'+ctgrId).remove();
            }
        },'json');
    }

    function toUpdate(ctgrId) {
        //每次清空内容，防止上次的内容与新的内容相堆积
        $('#updateModal .modal-content').empty();
        //通过回调函数获得相应的内容
        $.get('updateForm2.jsp?ctgrId=' + ctgrId, function (res) {
            //向模态框添加内容
            $('#updateModal .modal-content').append(res);
        });
    }

    function updateCate(ctgrId) {
        //把表单序列化，例如empno=7369&ename=SMITH&job=CLERK&job=7902&hiredate=1980-12-17&sal=5900.0&comm=100.0&deptno=20
        var data = $('#updateForm').serialize();
        console.log('data:'+data);
        $.post('goodsSort/update.do',data, function (res) {
            if (res.result){
                //console.log(res.result);
                // 手动关闭模态框
                $('#updateModal').modal('hide');
                //每次清空内容，防止上次的内容与新的内容相堆积
                $('#updateModal .modal-content').empty();
                swal({
                    title: "更新成功！",
                    text: "该分类已成功更新"
                },function () {
                    //因为是异步提交！所以要重新加载框架，内容才会更新
                    location.reload();
                });
            } else {
                swal({
                    title: "更新结果",
                    text: "更新分类id：" + ctgrId + " 失败！",
                    type: "error"
                });
            }
        },'json');
    }
</script>
</body>
</html>
