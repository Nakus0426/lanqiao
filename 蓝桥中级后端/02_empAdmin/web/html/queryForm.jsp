<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="com.lanqiao.commons.DateUtils" %>
<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/7/30
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工查询</title>
    <script src="../static/js/jquery-2.2.4.js"></script>
    <link rel="stylesheet" href="../static/js/bootstrap/3.3.7/css/bootstrap.css">
    <script src="../static/js/framework/inspinia.js"></script>
    <script src="../static/js/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="../static/js/framework/sweetalert/sweetalert.min.js"></script>
    <script src="../static/js/framework/metisMenu/jquery.metisMenu.js"></script>
    <script src="../static/js/framework/slimscroll/jquery.slimscroll.min.js"></script>
    <link href="../static/css/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Sweet Alert -->
    <link href="../static/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

    <link href="../static/css/animate.css" rel="stylesheet">
</head>
<body>
<br><br>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-10 col-md-offset-1">
            <h2>
                <span class="glyphicon glyphicon-th-list"></span> 查询
            </h2>
            <hr>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-10 col-md-offset-1">
            <form class="form-inline" method="post" action="doQueryForm.jsp">
                <div class="input-group col-md-4" style="margin-left: 30px">
                    <span class="input-group-addon" id="sizing-addon1">
                        <span class="glyphicon glyphicon-user"></span>
                    </span>
                    <input type="text" name="ename" class="form-control" placeholder="请输入姓名" aria-describedby="sizing-addon1"
                           value="${param.ename}">
                </div>

                <div class="input-group col-md-4">
                    <span class="input-group-addon" id="sizing-addon2">
                        <span class="glyphicon glyphicon-file"></span>
                    </span>
                    <input type="text" name="job" class="form-control" placeholder="请输入职位" aria-describedby="sizing-addon1"
                           value="${param.job}">
                </div>

                <div class="input-group col-md-3">
                    <span class="input-group-addon" id="sizing-addon3">
                        <span class="glyphicon glyphicon-home"></span>
                    </span>
                    <select class="form-control" title="123" id="dept_select" name="deptno">
                        <option value="" disabled selected hidden>--选择部门--</option>
                    </select>
                </div>

                <div class="row" style="margin-top: 10px;">
                    <div class="col-md-8 col-md-offset-2 text-center">
                        <button type="submit" class="btn btn-primary btn-lg" style="margin-right: 50px;">查询</button>
                        <button type="reset" class="btn btn-default btn-lg">重置</button>
                    </div>
                </div>
            </form>

        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-10 column col-md-offset-1">
            <div class="panel panel-primary">
                <div class="panel-heading">员工列表</div>
                <div class="panel-body">
                </div>
                <table class="table table-striped table-bordered table-hover text-center">
                    <tr>
                        <th class="text-center">编号</th>
                        <th class="text-center">姓名</th>
                        <th class="text-center">工作</th>
                        <th class="text-center">入职日期</th>
                        <th class="text-center">工资</th>
                        <th class="text-center">奖金</th>
                        <th class="text-center">部门</th>
                        <th class="text-center">操作</th>
                    </tr>

                    <c:if test="${employees != null}">
                        <c:forEach items="${employees}" var="e">
                            <tr id="tr_${e.empno}">
                                <td>${e.empno}
                                </td>
                                <td>${e.ename}
                                </td>
                                <td>${e.job}
                                </td>
                                <td><fmt:formatDate value="${e.hiredate}" pattern="yyyy年MM月dd日"/>
                                </td>
                                <td>${e.sal}
                                </td>
                                <td>${e.comm}
                                </td>
                                <td>${e.dname}
                                </td>
                                <td>
                                    <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#updateModal"
                                            onclick="toUpdate(this,${e.empno})">更新</button>
                                    <a class="btn btn-danger btn-xs delete-emp" href="javascript:void(0)" role="button" empno="${e.empno}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>
                </table>
                <nav aria-label="..." style="border-top: #DCDCDC 1px solid">
                    <ul class="pager text-center">
                        <li><a href="doQueryForm.jsp?pageNo=1"><span class="glyphicon glyphicon-step-backward"></span></a></li>
                        <li><a href="doQueryForm.jsp?pageNo=${employeePage.pageNo-1}"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
                        <li><a href="doQueryForm.jsp?pageNo=${employeePage.pageNo+1}"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
                        <li><a href="doQueryForm.jsp?pageNo=${employeePage.totalPage}"><span class="glyphicon glyphicon-step-forward"></span></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>

    <%--模态框--%>
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            </div>
        </div>
    </div>

</div>
<script>
    $(function () {
        $.getJSON('loadDeptments.jsp',{},function (res) {
            const deptSelect = $('#dept_select');
            res.forEach(function (dept) {
                var option = '<option value="' + dept.deptno+ '">'+ dept.dname + '</option>';
                deptSelect.append(option);
            });
        });

        $('.delete-emp').click(function () {
            var empno = $(this).attr('empno');
            swal({
                    title: "确定删除？",
                    text: "您将无法找回该数据！",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "确定",
                    cancelButtonText: "取消",
                    closeOnConfirm: false,
                    closeOnCancel: false },
                function (isConfirm) {
                    if (isConfirm) {
                        removeEmployee(empno);
                        swal("删除", "已删除 :P", "success");
                    } else {
                        swal("取消", "未删除 :)", "error");
                    }
                });
        });
    });

    function removeEmployee(emp_no) {
        // 底层ajax函数: $.ajax()
        // $.get('doDelete.jsp?empno=' + empno, function (res) { }, 'json'); // ok

        $.get('doDelete.jsp',{empno: emp_no}, // jquery会把此请求参序列为doDelete.jsp?empno=8899
            function (res) { // {result: true|false}
                if (res.result) { // 表达式只要不是undefine, null,“” 条件值就为true
                    $('#tr_' + emp_no).remove();
                }
            },'json');
    }

    // 更新员工
    function toUpdate(ele, empno) {
        $('#updateModal .modal-content').empty();
        // ajax请求将目标管理页面的HTML载入到模态框的<div class="modal-content">html....<div>部分中
        $.get('updateForm.jsp?empno=' + empno, function (res) {
            $('#updateModal .modal-content').append(res);
        });
    }

    function updateEmployee(empno) {
        var data = $('#updateForm').serialize();
        // empno=7369&ename=SMITH&job=CLERK&job=7902&hiredate=1980-12-17&sal=5900.0&comm=100.0&deptno=20
        console.log(data);
        $.post('doUpdate.jsp', data, function (res) {
            if (res.result) {
                console.log(res.result);
                // 手动关闭模态框
                $('#updateModal').modal('hide');
                $('#updateModal .modal-content').empty();
                swal({
                    title: "恭喜！",
                    text: "更新成功 :P"
                }, function () {
                    location.reload();
                });
            } else {
                swal({
                    title: "更新结果",
                    text: "更新编号：" + empno + " 的员工信息失败！",
                    type: "error"
                });
            }
        }, 'json');
    }
</script>
</body>
</html>
