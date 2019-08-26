<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录界面</title>
    <link rel="stylesheet" href="static/css/login.css">
    <link rel="stylesheet" href="static/css/normalize.min.css">
    <script src="static/js/jquery-2.2.4.js"></script>
</head>
<body>
<div style="height: 40px;">
    <div class="header">
</div>
    <div class="form">

        <ul class="tab-group">
            <li class="tab active"><a href="#login">Login登录</a></li>
            <li class="tab"><a href="#signup">SignUp注册</a></li>
        </ul>

        <div class="tab-content">

            <div id="login" style="display: block;">
                <h1>Welcome Back!</h1>

                <form action="user/login.do" method="post">

                    <div class="field-wrap">
                        <label>
                            用户名<span class="req">*</span>
                        </label>
                        <input type="text" required="" autocomplete="off" name="loginName">
                    </div>

                    <div class="field-wrap">
                        <label>
                            密码<span class="req">*</span>
                        </label>
                        <input type="password" required="" autocomplete="off" name="password">
                    </div>

                    <p class="forgot"><a href="#">忘记密码?</a></p>

                    <button class="button button-block" type="submit"><span class="login">Login</span></button>

                </form>

            </div>
            <div id="signup" style="display: none;">
                <h1>免费注册</h1>
                <form action="user/register.do" method="post">

                    <div class="field-wrap">
                        <label>
                            用户名<span class="req">*</span>
                        </label>
                        <input type="text" required="" autocomplete="off" name="loginName">
                    </div>

                    <div class="field-wrap">
                        <label>
                            密码<span class="req">*</span>
                        </label>
                        <input type="password" required="" autocomplete="off" name="password">
                    </div>
                    <div class="field-wrap">
                        <label>
                            姓<span class="req">*</span>
                        </label>
                        <input type="text" required="" autocomplete="off" name="firstName">
                    </div>
                    <div class="field-wrap">
                        <label>
                            名<span class="req">*</span>
                        </label>
                        <input type="text" required="" autocomplete="off" name="lastName">
                    </div>

                    <div class="field-wrap">
                        <label>
                            邮箱<span class="req">*</span>
                        </label>
                        <input type="email" required="" autocomplete="off" name="email">
                    </div>
                    <div class="field-wrap">
                        <label>
                            性别<span class="req">*</span>
                        </label>
                        <input type="text" required="" autocomplete="off" name="gender">
                    </div>
                    <div class="field-wrap">
                        <input type="file" required="" autocomplete="off" name="header">
                    </div>
                    <div class="field-wrap">
                        <label>
                            兴趣<span class="req">* </span>
                        </label>
                        <input type="text" required="" autocomplete="off" name="hobby">
                    </div>
                    <div class="field-wrap">
                        <label>
                            <span class="req"></span>
                        </label>
                        <input type="date" required="" autocomplete="off" name="birthday">
                    </div>
                    <button type="submit" class="button button-block">Join GuimeiStore</button>

                </form>

            </div>



        </div><!-- tab-content -->

    </div>
</div>

<script>

    $('.form').find('input, textarea').on('keyup blur focus', function (e) {
        var $this = $(this),
            label = $this.prev('label');
        if (e.type === 'keyup') {
            if ($this.val() === '') {
                label.removeClass('active highlight');
            } else {
                label.addClass('active highlight');
            }
        } else if (e.type === 'blur') {
            if( $this.val() === '' ) {
                label.removeClass('active highlight');
            } else {
                label.removeClass('highlight');
            }
        } else if (e.type === 'focus') {

            if( $this.val() === '' ) {
                label.removeClass('highlight');
            }
            else if( $this.val() !== '' ) {
                label.addClass('highlight');
            }
        }

    });

    $('.tab a').on('click', function (e) {

        e.preventDefault();
        $(this).parent().addClass('active');
        $(this).parent().siblings().removeClass('active');
        target = $(this).attr('href');
        $('.tab-content > div').not(target).hide();
        $(target).fadeIn(600);
    });
</script>
</body>
</html>