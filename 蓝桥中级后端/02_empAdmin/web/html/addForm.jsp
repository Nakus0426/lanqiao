<%@ page import="org.apache.commons.lang3.StringUtils" %><%--
  Created by IntelliJ IDEA.
  User: jamesmac
  Date: 2019/7/31
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../static/js/bootstrap/3.3.7/css/bootstrap.css">
</head>
<body>
<br><br>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-6 col-md-offset-3">
                <h2>
                    <span class="glyphicon glyphicon-th-list"></span> 新增员工
                </h2>
                <hr>
            </div>
        </div>
     <%
         if (StringUtils.equalsIgnoreCase(request.getParameter("result"), "0")) {
     %>
        <div class="row">
            <div class="col-md-6 column col-md-offset-3">
                <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    添加失败！请重新提交。
                </div>
            </div>
        </div>
    <%
        }
    %>
        <div class="row clearfix">
            <div class="col-md-6 column col-md-offset-3">
                <form class="form-horizontal" role="form" action="doAddForm.jsp" method="post">
                    <div class="form-group">
                        <label for="inputEmpno" class="col-sm-2 control-label">员工编号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputEmpno" disabled placeholder="员工编号系统自动生成" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEname" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" name="ename" class="form-control" id="inputEname" placeholder="请输入姓名"
                                   required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputJob" class="col-sm-2 control-label">工作</label>
                        <div class="col-sm-10">
                            <input type="text" name="job" class="form-control" id="inputJob" placeholder="请输入工作" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputMgr" class="col-sm-2 control-label">经理</label>
                        <div class="col-sm-10">
                            <select name="mgr" class="form-control" id="inputMgr" >
                                <option disabled selected hidden>--选择经理--</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputHiredate" class="col-sm-2 control-label">入职日期</label>
                        <div class="col-sm-10">
                            <input type="date" name="hiredate" class="form-control" id="inputHiredate" placeholder="请输入入职日期"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputSal" class="col-sm-2 control-label">工资</label>
                        <div class="col-sm-10">
                            <input type="text" name="sal" class="form-control" id="inputSal" placeholder="请输入工资" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputComm" class="col-sm-2 control-label">奖金</label>
                        <div class="col-sm-10">
                            <input type="text" name="comm" class="form-control" id="inputComm" placeholder="请输入奖金"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputDept" class="col-sm-2 control-label">部门</label>
                        <div class="col-sm-10">
                            <select name="deptno" class="form-control" id="inputDept" required>
                                <option disabled selected hidden>--选择部门--</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-5 col-sm-6">
                            <button type="reset" class="btn btn-default" style="margin-right: 30px">重置</button>
                            <button type="submit" class="btn btn-primary">保存</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="../static/js/jquery-2.2.4.js"></script>
    <script src="../static/js/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="../static/js/common.js"></script>
    <script>
        $(function () {
            // 加载部门下拉列表
            loadDepartment('inputDept');

            // 加载经理下拉列表
            loadManager('inputMgr');
        })
    </script>
</body>
</html>
