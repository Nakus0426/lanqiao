<%--
  Created by IntelliJ IDEA.
  User: 卢炳祥
  Date: 2019/8/17
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
</head>
<body>
<form id="insertForm" class="form-horizontal" role="form" action="insert2.do" method="post">
    <%-- EL表达式会按作用域大小自动搜索对象 pageContext-->request-->session-->application --%>
    <input type="hidden" name="ctgrId" value="">
    <div class="modal-header">
        <h4 class="modal-title">新增</h4>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <label for="inputBigCtgrId" class="col-sm-2 control-label">大分类id</label>
            <div class="col-sm-10">
                <input type="text" name="bigCtgrId" class="form-control" id="inputBigCtgrId" value=""/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputBigCtgr" class="col-sm-2 control-label">大分类名称</label>
            <div class="col-sm-10">
                <input type="text" name="bigCtgr" class="form-control" id="inputBigCtgr" value="" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputCtgrId" class="col-sm-2 control-label">小分类id</label>
            <div class="col-sm-10">
                <input type="text" name="ctgrId" class="form-control" id="inputCtgrId" value="系统自动生成" disabled required/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputCtgrName" class="col-sm-2 control-label">小分类名称</label>
            <div class="col-sm-10">
                <input type="text" name="ctgrName" class="form-control" id="inputCtgrName" value=""/>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-primary">保存</button>
    </div>
</form>
<script src="js/jquery-2.2.4.js"></script>
<script src="js/bootstrap/3.3.7/js/bootstrap.js"></script>
<script src="js/common.js"></script>
</body>
</html>
