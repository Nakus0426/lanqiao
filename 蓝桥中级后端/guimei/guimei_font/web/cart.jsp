<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/17 0017
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="now" class="java.util.Date" scope="page"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>cart</title>
    <script src="static/js/jquery-2.2.4.js"></script>
    <script src="static/js/cart.js"></script>
    <script src="static/js/bootstrap.js"></script>
    <link rel="stylesheet" href="static/css/cart.css">
    <link rel="stylesheet" href="static/css/cart2.css">
    <link rel="stylesheet" href="static/css/iconfont.css">
    <link rel="stylesheet" href="static/css/bootstrap.css">
</head>

<body class="wf-active chrome-hack-wrapper">
<!--头部导航栏-->
<header class="header-video preheating-header-black show-panel" hover="false" style="top: 0px;">
    <div class="index-header-wrapper">
        <a href="index.do" class="logo"></a>
        <ul class="navigator-bar clearfixed">
            <li class="index">
                <a href="index.do" sensors-diszble="true">
                    <h2>首页</h2>
                </a>
            </li>
            <li>
                <div class="one-tag">
                    <a href="#" sensors-disable="true">
                        <h2 class="start-index-header">沙发</h2>
                    </a>
                </div>
                <ul class="clearfixed index-two-tag-wrap">
                    <li>
                        <a href="#">
                            <img class="tag-img" alt="" src="images/sofa3.png">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>三人沙发</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img class="tag-img" alt="" src="images/sofa2.png">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>双人沙发</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img class="tag-img" alt="" src="images/sofa1.png">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>单人沙发</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img class="tag-img" alt="" src="images/sofa3_big.png">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>大三人沙发</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <div class="one-tag">
                    <a href="#" sensors-disable="true">
                        <h2>床具</h2>
                    </a>
                </div>
                <ul class="clearfixed index-two-tag-warp">
                    <li>
                        <a href="#">
                            <img class="tag-img" src="images/bed.png" alt="床">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>床</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img class="tag-img" src="images/bedpad.png" alt="床垫">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>床垫</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img class="tag-img" src="images/bed4.png" alt="床品4件套">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>床品4件套</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img class="tag-img" src="images/quilt.png" alt="被芯">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>被芯</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <div class="one-tag">
                    <a href="#" sensors-disable="true">
                        <h2>柜架</h2>
                    </a>
                </div>
                <ul class="clearfixed index-two-tag-warp">
                    <li>
                        <a href="#">
                            <img class="tag-img" src="images/cosmos.png" alt="COSMO">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>COSMO</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img class="tag-img" src="images/cupboard.png" alt="置物柜">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>置物柜</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img class="tag-img" src="images/cupboard_tv.png" alt="电视柜">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>电视柜</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img class="tag-img" src="images/cupboard_book.png" alt="书柜">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>书柜</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <div class="one-tag">
                    <a href="#" sensors-disable="true">
                        <h2>椅凳</h2>
                    </a>
                </div>
                <ul class="clearfixed index-two-tag-warp">
                    <li>
                        <a href="#">
                            <img class="tag-img" src="images/chair_sit.png" alt="座椅">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>座椅</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img class="tag-img" src="images/sit.png" alt="坐墩">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>坐墩</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img class="tag-img" src="images/chair_fun.png" alt="休闲椅">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>休闲椅</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img class="tag-img" src="images/seat.png" alt="凳子">
                            <div class="two-tag-layout">
                                <h3 class="tag-name">
                                    <span>凳子</span>
                                    <span class="red-dot"></span>
                                </h3>
                            </div>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="newheader-wrapper">
        <ul class="menu-bar init">
            <li><a href="aboutus.html" rel="nofollow">了解贵美</a></li>
            <li btnname="商品合作">
                <a href="#" rel="nofollow" sensors-disable="true">商业合作</a>
            </li>
            <li id="username-box">
                <a class="selfinfo user-image nologin" sensors-disable="true" href="login.jsp"></a>
                <div class="userbar">
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="会员中心">会员中心</a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的订单">我的订单</a>
                    <a href="#" class="coupon-giftcard" rel="nofollow" sensors-disable="true" btnname="我的优惠券&amp;礼品卡">我的优惠券<br>&amp;礼品卡</a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的消息">我的消息<span class="red-dot msg-icon"
                                                                                               style="display: none;"></span></a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的晒单">我的晒单</a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的资料">我的资料</a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的收藏">我的收藏</a>
                    <a rel="nofollow" sensors-disable="true" btnname="退出账号">退出账号</a>
                </div>
            </li>
            <li id="cart-li">
                <a class="cart-img" sensors-disable="true" href="cart.jsp" id="cart_box">
                    <img class="normal" alt="购物车" src="images/cart_normal.png">
                    <img class="hover" alt="购物车" src="images/cart_hover.png">
                </a>
            </li>
        </ul>
    </div>
</header><!--头部导航栏 End-->

<!--主体-->
<div class="cart-wrapper clearfixed">

    <div class="cart-content">
        <div class="cart-part-list item">
            <h3 class="cart-part-title">单品</h3>
            <div class="cart-list cart-itemlast-list goods-wrapper cart-list-checked item-cart-list">
                <c:forEach var="cart" items="${sessionScope.cart.values()}">
                    <div class="cart-box" id="tr_${cart.product.prodNo}" prodNo="${cart.product.prodNo}">
                        <div class="cart-index clearfixed" id="">
                            <div class="cart-operation deleted_operation cart_delete_btn"
                                 prodName="${cart.product.prodName}"></div>
                            <div class="radio"></div>
                            <a href="goods/queryByNo.do?prodNo=${cart.product.prodNo}" target="_blank"><img src="images/product/${cart.product.image}.jpg"></a>
                            <div class="cart-infor">
                                <div class="cart-error-prompt">错误提示</div>
                                <dl class="cart-goods-name">
                                    <dt>${cart.product.prodName}</dt>
                                    <dd>
                                        <span class="type" title="颜色">${cart.product.color}/</span>
                                        <span class="type" title="款式">${cart.product.type}/</span>
                                        <span class="type" title="类型">${cart.product.prodName}</span>
                                    </dd>
                                </dl>

                                <div class="cart-class">预计<em><fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/></em>
                                    前发货
                                </div>
                                <div class="cart-edit-wrapper">
                                    <div class="shopping-num shopping-num-item clearfixed">
                                        <div class="cart-item-price">
                                            <span style="display: none" class="price">¥${cart.product.price}</span>
                                            <span class="ga-cartprice">¥${cart.product.price}</span>

                                        </div>
                                        <div class="buynumber-btn reduce-btn">－</div>
                                        <p class="total-val">${cart.quantity}</p>
                                        <div class="buynumber-btn add-btn">＋</div>
                                    </div>
                                    <!-- 删除 -->
                                    <div class="cart-operation deleted_operation cart_delete_btn">删除</div>
                                    <!-- 修改 -->
                                    <div class="cart-edit-btn">修改</div>
                                    <div class="itembuy-wrapper newitem-header-buypop cart-edit-popbox"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<!--主体 End-->

<!--结算栏-->
<div class="pay-box pay-box-nofixed">
    <div class="cart-wrapper clearfixed">
        <div class="radio" id="checked_item">
            <i>全选</i>
            <b class="line">|</b>
            <b>已选</b>
            <em>1</em>
            <b>件</b>
        </div>
        <!-- 结算按钮 -->

        <div class="navybg-btn paysure-btn" id="btn-pay" btnname="下单"><a href="" style="color: white">立即下单</a></div>
        <div class="price-box-together">
            <dl class="cart-price-box">
                <dt>
                    <i>商品合计：¥<span id="total">${product.price}</span></i>
                    <em class="clearfixed">
                        已享优惠：<span>¥0</span>
                    </em>
                </dt>
            </dl>
            <dl class="cart-price-pay">
                <dt>
                    <span><em>实付：</em><i>¥${product.price}</i></span>
                    <em>已满足免邮条件</em>
                </dt>
            </dl>
        </div>

    </div>
</div>
<!--结算栏 End-->

<!--footer-->
<footer class="newfooter">
    <div class="nf-wrapper">
        <dl>
            <dt class="left">
                <a href="#" target="_blank" rel="nofollow" sensors-disable="true" btname="">
                    <img alt="贵美商城官网" class="footer-logo-716" src="images/title_footer.png">
                    <span class="es-font">guimei.com</span>
                </a>
                <div class="clearfixed">
                    <div class="nf-icon nf-icon-wx" rel="nofollow" btnname="微信按钮" data-toggle="modal"
                         data-target="#wxModal"></div>
                    <div class="nf-icon nf-icon-wb" rel="nofollow" btnname="微信按钮"></div>
                </div>
            </dt>
            <dd>
                <ul class="nf-link-ul">
                    <li>
                        <a href="aboutus.html" class="menu" target="_blank" rel="nofollow"
                           sensors-disable="true" btnname="关于造作">关于贵美</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="团队介绍">团队介绍</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="设计师团">设计师团</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="媒体报道">媒体报道</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="加入造作">加入贵美</a>
                        <a href="aboutus.html" class="international" target="_blank" rel="nofollow"
                           sensors-disable="true"
                           btnname="Designer Hiring">Designer Hiring</a>
                    </li>
                    <li>
                        <i class="menu">服务支持</i>
                        <a href="helpcenter.html" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="服务保障">服务保障</a>
                        <a href="helpcenter.html" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="用户协议">用户协议</a>
                        <a href="helpcenter.html" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="物流售后服务">物流售后服务</a>
                    </li>
                    <li>
                        <i class="menu">商业合作</i>
                        <a href="#" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="集合采购">集合采购</a>
                        <a href="#" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="招商邀约">招商邀约</a>
                        <a href="#" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="品牌合作">品牌合作</a>
                        <a href="#" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="媒体合作">媒体合作</a>
                        <a href="#" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="设计师入驻">设计师入驻</a>
                    </li>
                </ul>
            </dd>
            <dt class="right">
                <div class="nf-contact-us">
                    <a href="#" rel="nofollow" btnname="联系我们">联系我们</a>
                    <p class="es-font">400-0000-000<span class="es-font">（0:00~0:00）</span></p>
                    <div class="server-online" btnname="在线客服" href="#" target="">在线客服</div>
                    <div class="shop-entry">
                        <a href="#" target="_blank" sensors-disable="true"
                           btnname="全国实体店"><span>全国实体店(没有)</span>
                            <i class="icon_zaozuosvg_right"></i>
                        </a>
                    </div>
                </div>
            </dt>
        </dl>
        <div class="nf-copyright">
            <p>Copyright © 2019 guimei.com Inc.All Rights Reserved. 桂林贵美科技有限公司</p>
            <p>
                <span>版权所有</span>
                <a href="http://www.miitbeian.gov.cn/" target="_blank" rel="nofollow">京ICP备66666666号-1</a>
                <a href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action" target="_blank"
                   class=" last-child" rel="nofollow">增值电信业务经营许可证：京ICP证000001号</a>
            </p>
            <p><a style="padding-left: 0" href="https://www.zaozuo.com/">贵美</a>官网-全球设计师创作<a
                    style="padding-left: 0" href="https://www.zaozuo.com/">家居品牌</a>
            </p>
        </div>
    </div>
</footer>
<!--footer End-->

<!--侧边浮动按钮-->
<dl class="icon-70-wrapper">
    <dt class="icon-70 icon-70-service last" href="#" target="">
        <div class="icon-70-title">客服</div>
    </dt>
    <dt class="icon-70 icon-70-top" id="toTop" style="display: none">
        <div class="icon-70-title">回顶部</div>
    </dt>
</dl>
<!--侧边浮动按钮 End-->

<!--客服弹窗-->
<div id="udesk_container" style="display: none">
    <div id="udesk_panel">
        <iframe id="udesk_iframe" frameborder="0" scrolling="no" allowtransparency="true" src="udesk_iframe.jsp"
                style="width: 364px;height: 573px;"></iframe>
    </div>
</div>
<script>
    $(function () {
        //点击客服按钮显示客服弹窗，再次点击则关闭
        $('.icon-70-service').click(function () {
            if ($('#udesk_container').is(':hidden')) {
                $('#udesk_container').show(200);
            } else {
                $('#udesk_container').hide(200);
            }
        });

        //点击返回顶部
        $('.icon-70-top').click(function () {
            // console.log($('html').get(0));
            $('html').animate({
                scrollTop: '0'
            }, 300);
        })
    });

    //提供给客服弹窗点击关闭时使用
    function closeUdesk() {
        $('#udesk_container').hide(200);
    }

</script>
<!--客服弹窗 End-->

<!--微信分享弹窗-->
<div class="modal fade" id="wxModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <img src="images/wx.png" alt="">
            </div>
            <div class="modal-footer">
                <p align="center">用微信扫码，关注贵美微信公众号，随时随地体验生活美学</p>
            </div>
        </div>
    </div>
</div>
<!--微信分享弹窗 End-->
<script>
    $(function () {
        cartScrollShow();

        $('#btn-pay').click(function () {
            //商品数量对象
            var $total = $('.total-val');
            $total.each(function (i) {
                //商品数量数组
                var $loadCount = $(this).html();
                console.log($loadCount);
                //单价
                var $price = $(this).parents('.cart-box').find('.price').html();
                console.log($price);
                //单个商品总价对象
                var $sumPriceObj = $(this).parents('.cart-box').find('.ga-cartprice');
                //单个商品总价
                var $sumPrice = $loadCount * parseInt($price.substring(1));
                console.log($sumPrice);

                var $prodNo = $(this).parents('.cart-box').attr('prodNo');
                console.log($prodNo);

                $.get('goods/updateCart.do', {prodNo: $prodNo, quantity: $loadCount}, function (res) {
                    if (res.result) {
                        console.log("updateCate success!");
                    }
                }, 'json');
            });
            //购物车总价
            var $totalPrice = parseInt($('.cart-price-pay').find('i').html());
            console.log($totalPrice);

            $.get('goods/updateCart.do', {totalPrice: $totalPrice}, function (res) {
                if (res.result) {
                    console.log("updateCate totalPrice success!");
                }
            }, 'json');
        });

        $('.deleted_operation').click(function () {
            var $prodNo = $(this).parents('.cart-box').attr('prodNo');
            console.log("prodNo："+$prodNo);

            $.get('goods/deleteCart.do',{prodNo:$prodNo},function (res) {
                if (res.result) {
                    $('#tr_'+$prodNo).remove();
                    console.log("delete operation！");
                }
            },'json');
        });
    });

    //结算栏定位
    var cartScrollShow = function () {
        var $window = $(window);
        var cartPayBoxScroll = function () {
            var winHeight = $window.height(),
                $payBox = $('.pay-box'),
                docHeight = $(document).height(),
                footerHeight = $('.newfooter').outerHeight(),
                payBoxHeight = $payBox.outerHeight(),
                scrollTop = $window.scrollTop();
            // console.log(scrollTop+'>='+docHeight+'-'+footerHeight+'+'+payBoxHeight+'-'+winHeight);

            if (scrollTop >= (docHeight - footerHeight + payBoxHeight - winHeight)) {
                $payBox.addClass('pay-box-nofixed');
                // console.log('add');
            } else {
                $payBox.removeClass('pay-box-nofixed');
                // console.log('remove');
            }
        };

        var cartListLine = function () {
            $('.cart-list').each(function () {
                var $me = $(this),
                    $next = $me.next();
                $next.length === 0 || $next.hasClass('combination-cart-list') || $next.hasClass('cart-invalid') ? $me.addClass('cart-itemlast-list') : null;
            });
        };
        $window.scroll(function () {
            cartListLine();
            cartPayBoxScroll();
        });
        return {
            init: function () {
                cartListLine();
                cartPayBoxScroll();
            }
        };
    }
</script>
</body>
</html>
