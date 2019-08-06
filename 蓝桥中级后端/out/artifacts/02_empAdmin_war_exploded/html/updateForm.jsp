<%@ page import="com.lanqiao.dao.EmployeeDao" %>
<%@ page import="com.lanqiao.entity.Employee" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String empno = request.getParameter("empno");

    if (StringUtils.isNoneBlank(empno)){
        Employee employee = new EmployeeDao().findByPk(Integer.valueOf(empno));
        // EL表达式只访问通过pageContext|request|session|application.setAttribute(key, object)方法存入的数据
        // 将数据存页面作用域对象中
        pageContext.setAttribute("emp", employee);
    }
%>
<form id="updateForm" class="form-horizontal" role="form" action="doAddForm.jsp" method="post">
    <%-- EL表达式会按作用域大小自动搜索对象 pageContext-->request-->session-->application --%>
    <input type="hidden" name="empno" value="${emp.empno}">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">更新</h4>
    </div>
    <div class="modal-body">
            <div class="form-group">
                <label for="inputEmpno" class="col-sm-2 control-label">员工编号</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmpno" disabled value="${pageScope.emp.empno}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="inputEname" class="col-sm-2 control-label">姓名</label>
                <div class="col-sm-10">
                    <input type="text" name="ename" class="form-control" id="inputEname" value="${emp.ename}" required/>
                </div>
            </div>
            <div class="form-group">
                <label for="inputJob" class="col-sm-2 control-label">工作</label>
                <div class="col-sm-10">
                    <input type="text" name="job" class="form-control" id="inputJob" value="${emp.job}" required/>
                </div>
            </div>
            <div class="form-group">
                <label for="inputMgr" class="col-sm-2 control-label">经理</label>
                <div class="col-sm-10">
                    <input type="text" name="mgr" class="form-control" id="inputMgr" value="${emp.mgr}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="inputHiredate" class="col-sm-2 control-label">入职日期</label>
                <div class="col-sm-10">
                    <input type="date" name="hiredate" class="form-control" id="inputHiredate" value="${emp.hiredate}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="inputSal" class="col-sm-2 control-label">工资</label>
                <div class="col-sm-10">
                    <input type="text" name="sal" class="form-control" id="inputSal" value="${emp.sal}" required/>
                </div>
            </div>
            <div class="form-group">
                <label for="inputComm" class="col-sm-2 control-label">奖金</label>
                <div class="col-sm-10">
                    <input type="text" name="comm" class="form-control" id="inputComm" value="${emp.comm}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="inputDept" class="col-sm-2 control-label">部门</label>
                <div class="col-sm-10">
                    <select name="deptno" class="form-control" id="inputDept" required>
                        <option value="10" ${emp.deptno eq 10 ? 'selected' : ''}>ACCOUNTING</option>
                        <option value="20" ${emp.deptno eq 20 ? 'selected' : ''}>RESEARCH</option>
                        <option value="30" ${emp.deptno eq 30 ? 'selected' : ''}>SALES</option>
                        <option value="40" ${emp.deptno eq 40 ? 'selected' : ''}>OPERATIONS</option>
                    </select>
                </div>
            </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" onclick="updateEmployee(${emp.empno})">保存</button>
    </div>
</form>
