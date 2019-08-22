<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/18
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <script src="js/jquery-2.2.4.js"></script>
    <script src="js/easing.min.js"></script>
    <script src="js/mejs.js"></script>

    <link rel="stylesheet" href="css/discountPublic.css">

    <script src="js/jquery-2.2.4.js"></script>
    <script src="js/easing.min.js"></script>
    <script src="js/mejs.js"></script>
</head>


<body>

 <div class="modal inmodal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog">
                                <div class="modal-content animated bounceInRight">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        </div>
                                    <section>
                                        <div class="machine">
                                            <dl class="rotate_box clear">
                                                <dd></dd>
                                                <dd></dd>
                                                <dd></dd>
                                            </dl>
                                            <a class="poiner" href="">
                                                <img src="images/discount/poiner.png" alt="">
                                            </a>
                                            <a class="rotate_btn" href="javascript: void(0);">
                                                <img src="images/discount/rocker.png" alt="">
                                            </a>
                                            <div class="btn_box">
                                                <img  class="share"  src="images/discount/share_btn.png" alt="">
                                            </div>
                                        </div>
                                    </section>

                                    <div class="mask">
                                        <img src="images/discount/alert_img.png" alt="">
                                    </div>

                                    <div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
                                    </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>


<button type="button" class="btn btn-primary cart-edit-btn" data-toggle="modal" data-target="#myModal">
    Launch demo modal
</button>
<div class="itembuy-wrapper newitem-header-buypop cart-edit-popbox">

</div> <!--修改弹出模态框 End-->



<!-- Mainly scripts -->
<script src="js/jquery-2.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>
</body>

</html>
