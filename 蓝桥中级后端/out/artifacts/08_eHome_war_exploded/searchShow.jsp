<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/11 0011
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="js/bootstrap/4.3.1/css/bootstrap.css" type="text/css" rel="stylesheet">
<div class="container">
    <div class="row">
        <div class="col-md-8 offset-2">
            <table>
                <c:forEach items="${searchList}" var="list">
                    <tr>
                        <td align="left">${list.title}</td>
                        <td align="right"><span class="date">[${list.writeDate}]</span></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
