
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="com.lanqiao.guimei.vo.Product" %>
<%@ page import="com.lanqiao.guimei.dao.ProductDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String prodno = request.getParameter("prodno");

    if (StringUtils.isNoneBlank(prodno)){
        Product product = new ProductDao().findByPk(prodno);
        // EL表达式只访问通过pageContext|request|session|application.setAttribute(key, object)方法存入的数据
        // 将数据存页面作用域对象中
        pageContext.setAttribute("pr", product);
    }
%>

<form id="updateForm" class="form-horizontal" role="form"  method="post">
    <input type="hidden" name="prodNo" value="${pr.prodNo}">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">更新</h4>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <label for="inputProdNo" class="col-sm-2 control-label">商品编号</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  id="inputProdNo" disabled value="${pageScope.pr.prodNo}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputCtgrId" class="col-sm-2 control-label">商品分类</label>
            <div class="col-sm-10">
                <input type="text" name="ctgrId" class="form-control" id="inputCtgrId" value="${pr.ctgrId}" required/>
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
                <input type="text" name="prodName" class="form-control" id="inputProdName" value="${pr.prodName}" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPrice" class="col-sm-2 control-label">价格</label>
            <div class="col-sm-10">
                <input type="text" name="price" class="form-control" id="inputPrice" value="${pr.price}" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputType" class="col-sm-2 control-label">型号</label>
            <div class="col-sm-10">
                <input type="text" name="type" class="form-control" id="inputType" value="${pr.type}" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputDescr" class="col-sm-2 control-label">描述</label>
            <div class="col-sm-10">
                <input type="text" name="descr" class="form-control" id="inputDescr" value="${pr.descr}" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputImage" class="col-sm-2 control-label">图片</label>
            <div class="col-sm-10">
                <input type="text" name="image" class="form-control" id="inputImage" value="${pr.image}" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputColor" class="col-sm-2 control-label">颜色</label>
            <div class="col-sm-10">
                <input type="text" name="color" class="form-control" id="inputColor" value="${pr.color}" required/>
            </div>
        </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" onclick="updateProduct('${pr.prodNo}')">保存</button>
    </div>
</form>
<script src="js/jquery-2.2.4.js"></script>
<script src="js/bootstrap/3.3.7/js/bootstrap.js"></script>
<script src="js/common.js"></script>
<script>
    $(function () {
    loadStock('inputStk');
    loadVendor('inputVen');
    })
</script>