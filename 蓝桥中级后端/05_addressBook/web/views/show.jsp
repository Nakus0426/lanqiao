<%@ page import="java.util.List" %>
<%@ page import="com.com.lanqiao.entity.Book" %>
<%@ page import="com.com.lanqiao.dao.bookDao" %><%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/4 0004
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD>
    <TITLE>网络通讯录</TITLE>
    <META http-equiv=Content-Language content=zh-cn>
    <META http-equiv=Content-Type content="text/html; charset=utf-8">
    <LINK href="../images/enter.css" type=text/css rel=stylesheet>
    <link href="../js/bootstrap/4.3.1/css/bootstrap.css" type="text/css" rel="stylesheet">
    <link href="../js/bootstrap/4.3.1/css/button.css" type="text/css" rel="stylesheet">
    <base href="${pageContext.request.contextPath}/">
</HEAD>
<BODY style="BACKGROUND-IMAGE: url(images/2e_bg.jpg)">
<DIV align=center>
    <TABLE style="BORDER-COLLAPSE: collapse" height=576 cellPadding=0
           width=990 border=0>
        <TR>
            <TD width=230>
                <!--   left.html -->
                <%@include file="../left.jsp" %>
                <!-- end left.html -->
            </TD>

            <TD width="677" valign="top">

                <table width="656" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="10" colspan="3"></td>
                    </tr>
                    <tr>
                        <td colspan="3"><img src="images/33e_top1.jpg" width="656"
                                             height="17"></td>
                    </tr>
                    <tr>
                        <td colspan="3"><img src="images/33e_top11.jpg" width="656"
                                             height="34"></td>
                    </tr>
                    <tr>
                        <td width="2%"><IMG height=519 src="images/33e_left.jpg"
                                            width=13 border=0></td>
                        <td width="95%" align="center" valign="top" bgcolor="#FFFFFF">
                            <!-- banner.html  -->
                            <%@include file="../banner.html" %>
                            <!-- end  banner.html  -->

                            <!-- main.jsp  -->
                            <%
                                Integer relation = (Integer) request.getAttribute("rel");
                                String username = (String) session.getAttribute("username");
                                bookDao bookDao = new bookDao();
                                List<Book> books = bookDao.seletByRelation(username, relation);
                                pageContext.setAttribute("books",books);
                            %>
                            <div class="container">
                                <div class="row" style="margin-top: 20px">
                                    <table class="table col-md-10 offset-1 table-hover table-sm table-bordered text-center">
                                        <thead class="table-success">
                                        <tr>
                                            <th scope="col">姓名</th>
                                            <th scope="col">性别</th>
                                            <th scope="col">电话</th>
                                            <th scope="col">手机</th>
                                            <th scope="col">操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${books}" var="books" varStatus="status">
                                            <tr>
                                                <td>${books.name}</td>
                                                <td>${books.sex}</td>
                                                <td>${books.phone}</td>
                                                <td>${books.mobilephone}</td>
                                                <td>
                                                    <button type="button" id="handle" class="btn-info btn-circle">操作</button>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- end main.jsp -->
                        </td>
                        <td width="3%"><img src="images/33e_right.jpg" width="21"
                                            height="519"></td>
                    </tr>
                    <tr>
                        <td colspan="3"><img src="images/33e_down.jpg" width="656"
                                             height="15"></td>
                    </tr>

                </table>
            </td>


            <TD width=85>
                <!--  tag.jsp   -->
                <%@include file="../tag.jsp" %>
                <!--   end tag.jsp  --></TD>
        </TR>
    </TABLE>
</DIV>

<!--  foot.jsp        -->
<%@include file="../foot.jsp" %>
<!--  end foot.jsp  -->
</body>
</html>
