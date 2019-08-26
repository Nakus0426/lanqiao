<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--<!DOCTYPE html>-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="static/js/jquery-2.2.4.js"></script>
    <link rel="stylesheet" href="static/css/udesk.css">
    <link rel="stylesheet" href="static/css/iconfont.css">

</head>
<body class="inner has-copy-right">
<div id="main">
    <div id="header" class="header theme-bg clearfix" style="background: rgb(0, 0, 0);">
        <div class="ui-appbar clearfix">
            <div class="pull-left">
                <!--客服头像-->
                <img src="images/xiaozhong.jpg">
                <div class="title-box">
                    <!--客服姓名-->
                    <div class="title">
                        小钟<span></span>
                    </div>
                </div>
            </div>

            <div class="pull-right">
                <a class="icon icon-stereos-on"><span class="iconfont icon-icon_bell"></span></a>
                <a class="icon icon-inline"><span class="iconfont icon-icon_close"></span></a>
            </div>
        </div>
    </div>
    <div id="content" class="scrollbar" style="bottom: 134px;">
        <dl class="messages" style="margin-top: 12px;">
            <dt>
                <h4>
                    <a id="show-history">无更多历史消息</a>
                </h4>
            </dt>
            <dd class="clearfix">
                <div class="msg msg-recv message">
                    <div class="sender">
                        <span class="sender-text">小钟</span>
                        <span class="time-text">
                                09:16:20 
                                <b></b>
                            </span>
                    </div>
                    <span style="font-size:13px;line-height:1.4;font-weight:normal;font-style:normal;text-decoration:none;color:#1f1f1f;">
                            您好，欢迎光临贵美，请问有什么可以帮您？
                        </span>
                </div>
            </dd>
        </dl>
    </div>
    <div id="side-box" class="scrollbar" style="bottom: 29px;"></div>
    <div id="footer" class="clearfix" style="color: rgb(0, 0, 0); bottom: 29px; display: block;">
        <div class="ui-editor clearfix">
            <div class="tip-bar"></div>
            <div class="textbox">
                <textarea rows="1" placeholder="很高兴为您服务，请描述您的问题"
                          style="overflow-x: hidden; overflow-wrap: break-word;"></textarea>
                <a class="btn-send" id="btnSend" data-act="send"
                   style="color: rgba(36, 46, 51, 0.8); background-color: rgb(245, 245, 245); border-color: rgb(230, 230, 230); cursor: default;">发送</a>
            </div>
            <div class="toolbar clearfix">
                <a class="icon" style="display: inline-block;"><span class="iconfont icon-icon_user"></span></a>
                <a class="icon" style="display: inline-block;"><span class="iconfont icon-icon_location"></span></a>
                <a class="icon" style="display: inline-block;"><span class="iconfont icon-icon_folder"></span></a>
                <a class="icon" style="display: inline-block;"><span class="iconfont icon-icon_image"></span></a>
                <a class="icon" style="display: inline-block;"><span class="iconfont icon-icon_add_outline"></span></a>
            </div>
        </div>
    </div>

    <div id="copy-right" style="display: block;">
        <a style="color: #C7C6C6;" href="http://www.udesk.cn" target="_blank">钟耀章提供客服软件支持</a>
        <span></span>
    </div>
</div>

<script>
    $(function () {
        $('.icon-inline').click(function () {
            parent.window.closeUdesk();
        })
    })
</script>

</body>
</html>