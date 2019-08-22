
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="com.lanqiao.guimei.dao.TradeDao" %>
<%@ page import="com.lanqiao.guimei.vo.Trades" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String trdNo = request.getParameter("trdNo");

    if (StringUtils.isNoneBlank(trdNo)){
        Trades Trades = new TradeDao().findByPk(trdNo);
        // EL表达式只访问通过pageContext|request|session|application.setAttribute(key, object)方法存入的数据
        // 将数据存页面作用域对象中
        pageContext.setAttribute("trd", Trades);
    }
%>
<form id="update" class="form-horizontal" role="form" method="post">
    <%-- EL表达式会按作用域大小自动搜索对象 pageContext-->request-->session-->application --%>
    <input type="hidden" name="trdNo" value="${trd.trdNo}">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">更新</h4>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <label for="inputReceiver" class="col-sm-2 control-label">收件人</label>
            <div class="col-sm-10">
                <input type="text" name="receiver" class="form-control" id="inputReceiver" value="${trd.receiver}" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputLoc" class="col-sm-2 control-label">地址</label>
            <div class="col-sm-10">
                <input type="text" name="trdLoc" class="form-control" id="inputLoc" value="${trd.trdLoc}" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPhone" class="col-sm-2 control-label">电话</label>
            <div class="col-sm-10">
                <input type="text" name="phone" class="form-control" id="inputPhone" value="${trd.phone}" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputMoney" class="col-sm-2 control-label">价格</label>
            <div class="col-sm-10">
                <input type="text" name="tptalMoney" class="form-control" id="inputMoney" value="${trd.tptalMoney}"/>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" onclick="updateTrades('${trd.trdNo}')">保存</button>
    </div>
</form>
<script src="js/jquery-2.2.4.js"></script>
<script src="js/bootstrap/3.3.7/js/bootstrap.js"></script>
<script src="js/common.js"></script>