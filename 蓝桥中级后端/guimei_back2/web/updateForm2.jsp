
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="com.lanqiao.guimei.vo.Category" %>
<%@ page import="com.lanqiao.guimei.dao.CategoryDao" %><%--
  Created by IntelliJ IDEA.
  User: 卢炳祥
  Date: 2019/8/16
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctgrId = request.getParameter("ctgrId");

    if (StringUtils.isNoneBlank(ctgrId)){
        Category category = new Category(Integer.valueOf(ctgrId),null,null,null);
        Category category1 = new CategoryDao().querySortById(category);
        //将数据存页面作用域对象中
        pageContext.setAttribute("cate",category1);
    }
%>
<form id="updateForm" class="form-horizontal" role="form" action="goodsSort/update.do" method="post">
    <%-- EL表达式会按作用域大小自动搜索对象 pageContext-->request-->session-->application --%>
    <input type="hidden" name="ctgrId" value="${cate.ctgrId}">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">更新</h4>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <label for="inputBigCtgrId" class="col-sm-2 control-label">大分类id</label>
            <div class="col-sm-10">
                <input type="text" name="bigCtgrId" class="form-control" id="inputBigCtgrId" value="${cate.bigCtgrId}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputBigCtgr" class="col-sm-2 control-label">大分类名称</label>
            <div class="col-sm-10">
                <input type="text" name="bigCtgr" class="form-control" id="inputBigCtgr" value="${cate.bigCtgr}" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputCtgrId" class="col-sm-2 control-label">小分类id</label>
            <div class="col-sm-10">
                <input type="text" name="ctgrId" class="form-control" id="inputCtgrId" value="${cate.ctgrId}" disabled required/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputCtgrName" class="col-sm-2 control-label">小分类名称</label>
            <div class="col-sm-10">
                <input type="text" name="ctgrName" class="form-control" id="inputCtgrName" value="${cate.ctgrName}"/>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" onclick="updateCate(${cate.ctgrId})">保存</button>
    </div>
</form>
