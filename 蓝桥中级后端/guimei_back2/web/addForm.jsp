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
<br><br>
<div class="container">
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
            <form class="form-horizontal" role="form" action="insert.do" method="get">
                <div class="form-group">
                    <label for="inputProdNo" class="col-sm-2 control-label">商品编号</label>
                    <div class="col-sm-10">
                        <input type="text" name="prodNo" class="form-control" id="inputProdNo" disabled placeholder="商品编号系统自动生成"/>
                    </div>
                </div>


                <div class="form-group">
                    <label for="inputCtgrId" class="col-sm-2 control-label">商品分类</label>
                    <div class="col-sm-10">
                        <input type="text" name="ctgrId" class="form-control" id="inputCtgrId"  placeholder="请输入商品分类" required/>
                    </div>
                </div>


                <div class="form-group">
                    <label for="inputVen" class="col-sm-2 control-label">供应商</label>
                    <div class="col-sm-10">
                        <select name="venId" class="form-control" id="inputVen" >
                            <option value="">--请选择--</option>
                        </select>
                    </div>
                </div>



                <div class="form-group">
                    <label for="inputStk" class="col-sm-2 control-label">库存</label>
                    <div class="col-sm-10">
                        <select name="stkId" class="form-control" id="inputStk" >
                            <option value="">--请选择--</option>
                        </select>
                    </div>
                </div>




                <div class="form-group">
                    <label for="inputProdName" class="col-sm-2 control-label">商品名</label>
                    <div class="col-sm-10">
                        <input type="text" name="prodName" class="form-control" id="inputProdName"  placeholder="请输入商品名" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPrice" class="col-sm-2 control-label">价格</label>
                    <div class="col-sm-10">
                        <input type="text" name="price" class="form-control" id="inputPrice" placeholder="请输入价格" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputType" class="col-sm-2 control-label">型号</label>
                    <div class="col-sm-10">
                        <input type="text" name="type" class="form-control" id="inputType"  placeholder="请输入型号" required/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputImage" class="col-sm-2 control-label">图片</label>
                    <div class="col-sm-10">
                        <input type="text" name="image" class="form-control" id="inputImage"  placeholder="请输入图片名称" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputColor" class="col-sm-2 control-label">颜色</label>
                    <div class="col-sm-10">
                        <input type="text" name="color" class="form-control" id="inputColor"  placeholder="请输入颜色" required/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputDescr" class="col-sm-2 control-label">描述</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" id="inputDescr" name="descr" rows="3" placeholder="请输入描述" required></textarea>
                    </div>
                </div>

                <div class="modal-footer">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="reset" class="btn btn-default">重置</button>
                        <button type="submit" class="btn btn-primary">保存</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="js/jquery-2.2.4.js"></script>
<script src="js/bootstrap/3.3.7/js/bootstrap.js"></script>
<script src="js/common.js"></script>
<script>
    $(function () {
        loadStock('inputStk');
        loadVendor('inputVen');
    })
</script>
</body>
</html>
