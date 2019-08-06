<%@ page language="java" import="com.lanqiao.entity.Users" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%
  String username = (String) session.getAttribute("username");
  if(username==null)
  	response.sendRedirect("index.jsp");
 %>
<HTML>
	<HEAD>
		<TITLE>网络通讯录</TITLE>
		<script src="js/jquery-2.2.4.js"></script>
		<script src="js/bootstrap/4.3.1/js/bootstrap.js"></script>
		<META http-equiv=Content-Language content=zh-cn>
		<META http-equiv=Content-Type content="text/html; charset=UTF-8">
		<LINK href="images/enter.css" type=text/css rel=stylesheet>
		<link href="js/bootstrap/4.3.1/css/bootstrap.css" type="text/css" rel="stylesheet">

	</HEAD>
	<BODY style="BACKGROUND-IMAGE: url(images/2e_bg.jpg)">
		<DIV align=center>
			<TABLE style="BORDER-COLLAPSE: collapse" height=576 cellPadding=0
				width=990 border=0>
				<TR>
					<TD width=230>
						<!--   left.html -->
						<%@include file="left.jsp"%>
						<!-- end left.html -->
					</TD>

					<TD width="677" valign="top">

						<table width="656" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="10" colspan="3"></td>
							</tr>
							<tr>
								<td colspan="3">
									<img src="images/33e_top1.jpg" width="656" height="17">
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<img src="images/33e_top11.jpg" width="656" height="34">
								</td>
							</tr>
							<tr>
								<td width="2%">
									<IMG height=519 src="images/33e_left.jpg" width=13 border=0>
								</td>
								<td width="100%" align="center" valign="top" bgcolor="#FFFFFF">
									<!-- banner.html  -->
									<%@include file="banner.html"%>
									<!-- end  banner.html  -->

									<!-- main.jsp  -->
									<!-- Modal -->
									<div class="modal fade" id="sucessModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel1">提示</h5>
													<button type="button" class="close" data-dismiss="modal" aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													添加成功 :)
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary" data-dismiss="modal">了解！</button>
												</div>
											</div>
										</div>
									</div>

									<div class="modal fade" id="failModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel2">提示</h5>
													<button type="button" class="close" data-dismiss="modal" aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													添加失败了 :(
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-primary" data-dismiss="modal">了解！</button>

												</div>
											</div>
										</div>
									</div>

									<form name="add" id="addForm" action="doAddContact.jsp" method="post">
										<table id="Table_01" width="100%" border="0" cellpadding="0"
											cellspacing="0"
											style="font-size:12px;	font-family:Verdana, Arial, Helvetica, sans-serif;">
											<tr>
												<td valign="top" background="images/flower/tl.jpg">
													<img src="images/spacer.gif" width="138" height="1" />
												</td>
												<td valign="top" background="images/flower/bg.jpg">
													&nbsp;
												</td>
												<td valign="top" background="images/flower/m_bg.jpg">
													<img src="images/flower/tr.jpg" width="80" height="40" />
												</td>
											</tr>
											<tr>
												<td valign="top" background="images/flower/m_tl.jpg">
													&nbsp;
												</td>
												<td width="100%" valign="top"
													background="images/flower/bg.jpg"
													style="height:200px;padding:0 0 70px 0;">
													<TABLE width="100%"
														style="cellpadding: 0px; cellspacing: 0px; margin-top: 0px; margin-Left: 0px"
														style="table-layout: fixed;WORD-BREAK: break-all; WORD-WRAP: break-word">
														<TR>
															<TD style="color:#4c4743;line-height:160%;" valign="top"
																width="20%">
																姓名：
															</TD>
															<TD style="color:#4c4743;line-height:160%;" valign="top" width="30%">
																<input type="text" name="name" size="15" />
															</TD>
														
															<TD style="color:#4c4743;line-height:160%;" valign="top"
																width="20%">
																性别：
															</TD>
															<TD style="color:#4c4743;line-height:160%;" valign="top" width="30%">
																<select name="sex">
																	<option value="男">男</option>
																	<option value="女">女</option>
																</select>
															</TD>
														</TR>
														<TR>
															<TD style="color:#4c4743;line-height:160%;" valign="top"
																width="30%">
																电话：
															</TD>
															<TD style="color:#4c4743;line-height:160%;" valign="top">
																<input type="text" name="phone" size="15" />
															</TD>
														
															<TD style="color:#4c4743;line-height:160%;" valign="top"
																width="30%">
																地址：
															</TD>
															<TD style="color:#4c4743;line-height:160%;" valign="top">
																<input type="text" name="address" size="15" />
															</TD>
														</TR>
														<TR>
															<TD style="color:#4c4743;line-height:160%;" valign="top"
																width="30%">
																手机：
															</TD>
															<TD style="color:#4c4743;line-height:160%;" valign="top">
																<input type="text" name="mobilePhone" size="15" />
															</TD>
														
															<TD style="color:#4c4743;line-height:160%;" valign="top"
																width="30%">
																公司名称：
															</TD>
															<TD style="color:#4c4743;line-height:160%;" valign="top">
																<input type="text" name="company" size="15" />
															</TD>
														</TR>
														<TR>
															<TD style="color:#4c4743;line-height:160%;" valign="top"
																width="30%">
																公司电话：
															</TD>
															<TD style="color:#4c4743;line-height:160%;" valign="top">
																<input type="text" name="comPhone" size="15" />
															</TD>
														
															<TD style="color:#4c4743;line-height:160%;" valign="top"
																width="30%">
																公司地址：
															</TD>
															<TD style="color:#4c4743;line-height:160%;" valign="top">
																<input type="text" name="comAddress" size="15" />
															</TD>
														</TR>
														<TR>
															<TD style="color:#4c4743;line-height:160%;" valign="top"
																width="30%">
																关系：
															</TD>
															<TD style="color:#4c4743;line-height:160%;" valign="top">
																<select name="relation">
																	<option value="1">家人</option>
																	<option value="2">领导</option>
																	<option value="3">师长</option>
																	<option value="4">朋友</option>
																	<option value="5">同学</option>
																	<option value="6">同事</option>
																</select>
															</TD>
														</TR>
														<TR>
															<td align="right">&nbsp;</td>
															<TD style="color:#4c4743;line-height:160%;" valign="top"
																width="30%">
																<input type="button" onclick="addContact()" value="提交" />
															</TD>
															<TD style="color:#4c4743;line-height:160%;" valign="top">
																<input type="reset" value="重置" />
															</TD>
														</TR>
													</TABLE>
												</td>
												<td width="47" valign="top"
													background="images/flower/m_bg.jpg">
													&nbsp;
												</td>
											</tr>
										</table>
									</form>





									<!-- end main.jsp -->
								</td>
								<td width="3%">
									<img src="images/33e_right.jpg" width="21" height="519">
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<img src="images/33e_down.jpg" width="656" height="15">
								</td>
							</tr>

						</table>
					</td>


					<TD width=85>
						<!--  tag.jsp   -->
						<%@include file="tag.jsp"%>
						<!--   end tag.jsp  -->
					</TD>
				</TR>
			</TABLE>
		</DIV>

		<!--  foot.jsp        -->
		<%@include file="foot.jsp"%>
		<!--  end foot.jsp  -->
	</body>

<script>
	function addContact() {
		var data = $('#addForm').serialize();
		$.post('doAddContact.jsp',data,function (res) {
			if (res.result) {
				$('#sucessModal').modal('show');
			}else {
				$('#failModal').modal('show');
			}
		},'json')
	};
</script>
</html>

