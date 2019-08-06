<%@ page language="java" pageEncoding="utf-8"%>

<HTML>
<HEAD>
    <TITLE>网络通讯录</TITLE>
    <META http-equiv=Content-Language content=zh-cn>
    <META http-equiv=Content-Type content="text/html; charset=utf-8">
    <LINK href="images/enter.css" type=text/css rel=stylesheet>
</HEAD>
<BODY style="BACKGROUND-IMAGE: url(images/2e_bg.jpg)">
<DIV align=center>
    <TABLE style="BORDER-COLLAPSE: collapse" height=576 cellPadding=0
           width=990 border=0>
        <TR>
            <TD width=230>
                <!--   left.html -->
                <%@include file="left.jsp" %>
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
                            <%@include file="banner.html" %>
                            <!-- end  banner.html  -->

                            <!-- main.jsp  -->



                            <!-- 只需把不同页面的内容加到这个位置，左边，头部，下部每个页都一样 -->



                            <!-- end main.jsp --></td>
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
                <%@include file="tag.jsp" %>
                <!--   end tag.jsp  --></TD>
        </TR>
    </TABLE>
</DIV>

<!--  foot.jsp        -->
<%@include file="foot.jsp" %>
<!--  end foot.jsp  -->
</body>
</html>

