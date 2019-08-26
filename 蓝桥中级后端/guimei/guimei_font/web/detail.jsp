<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/17 0017
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<base href="${pageContext.request.contextPath}/"/>

<html>
<head>
    <meta charset="UTF-8">
    <title>商品详情</title>
    <script src="static/js/jquery-2.2.4.js"></script>
    <script src="static/js/detail.js"></script>
    <link rel="stylesheet" href="static/css/detail.css" type="text/css">
    <link rel="stylesheet" href="static/css/sweetalert.css" type="text/css">
    <link rel="stylesheet" href="static/css/animate.css" type="text/css">
    <script src="static/js/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="static/js/sweetalert.min.js"></script>
</head>

<body class="itemdetail-body wf-active" style="position: relative">
<!--头部导航栏-->
<header class="header-video preheating-header-black show-panel" hover="false" style="top: 0px;">
    <div class="index-header-wrapper">
        <a href="#" class="logo"></a>
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
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的消息">我的消息<span class="red-dot msg-icon" style="display: none;"></span></a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的晒单">我的晒单</a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的资料">我的资料</a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的收藏">我的收藏</a>
                    <a href="login.jsp" rel="nofollow" sensors-disable="true" btnname="退出账号">退出账号</a>
                </div>
            </li>
            <li id="cart-li">
                <a class="cart-img" sensors-disable="true" href="cart.jsp" id="cart_box">
                    <img class="normal" alt="购物车" src="images/cart_normal.png">
                    <img class="hover" alt="购物车" src="images/cart_hover.png">
                    <span class="cart-number"></span>
                </a>
            </li>
        </ul>
    </div>
</header><!--头部导航栏 End-->

<%--主体--%>
<div class="itembuy-wrapper itembuy-container" id="itembuy_index_wrapper">

    <div id="item-buy-box" class="item-quickbuy clearfixed item-buy-box">
        <div class="itemimgs-show">
            <dl class="itemimgs-big">
                <dt>
                    <%--商品图片--%>
                    <img alt="${product.prodName}" class="origin show" src="images/product/${product.image}.jpg">
                </dt>
            </dl>
        </div>

        <div class="itembuy-styles-box">
            <div class="styles-box minheight">
                <h1 class="clearfixed">
                    <%--商品名--%>
                    <p>${product.prodName}｜</p><p class="es-title es-font">${fn:substring(product.image, 0, fn:length(product.image)-1)}</p>
                </h1>

                <div class="buygoods-total" style="visibility: visible;">
                    <span>¥</span>
                    <%--商品价格--%>
                    <em class="now es-font">${product.price}</em>
                    <i style="display: none;">起</i>
                </div>

                <!-- 组合推荐提示 -->
                <div class="goto-combination clearfixed" id="goto_combination" endtime="2070/12/31 23:59:59" btnname="组合提示条" style="opacity: 1;">
					<span>
						<em>设计师手选组合，最高可省¥</em>
                        <c:if test="${product.price>3000&&product.price<6000}">
                            <i>${product.price-1500}</i>
                        </c:if>
                        <c:if test="${product.price>6000}">
                            <i>${product.price-3000}</i>
                        </c:if>
                        <c:if test="${product.price<3000}">
                            <i>${product.price-400}</i>
                        </c:if>
						<em class="desc">，马上看看</em>
					</span>
                </div>

                <!-- 预计发货时间 -->
                <div class="stock-title yuji clearfixed nostock-title" id="stock_full" style="display: block;">
                    <jsp:useBean id="now" class="java.util.Date" scope="page"/>
                    <span class="bb">今天下单，将于<fmt:formatDate value="${now}" pattern="MM月dd日" />前发货，大件家具会致电确认</span>
                </div>

                <%--商品款式选择--%>
                <div class="styles-wrapper">
                    <div class="styles-error-box">
                        <div class="styles-error-closebtn">X</div>
                        <p>请选择商品信息</p>
                    </div>

                    <%--颜色--%>
                    <dl class="last-child clearfixed model-title">
                        <dt><span>颜色</span></dt>
                        <dd class="clearfixed">
                            <div type="button" class="model-box zz-option" id="color">${product.color}</div>
                        </dd>
                    </dl>

                    <%--款式--%>
                    <dl class="last-child clearfixed model-title">
                        <dt><span>款型</span></dt>
                        <dd class="clearfixed">
                            <div type="button" class="model-box zz-option" id="type">${product.type}</div>
                        </dd>
                    </dl>
                </div>
            </div>

            <%--商品购买--%>
            <dl class="itembuy-buybox">
                <dt class="buygoods-num">
                    <p type="text" class="number-text total-val">1</p>
                    <div class="add-btn"></div>
                    <div class="reduce-btn"></div>
                </dt>

                <button class="addcart-box" prodNo="${product.prodNo}" type="button">
                    <div class="order-btn" btnname="立即购买">立即购买</div>
                    <div class="addcart-btn ex-cart-btn" btnname="加入购物车">加入购物车</div>
                </button>
            </dl>

        </div>
    </div>

</div>
<%--主体 End--%>

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
                    <div class="nf-icon nf-icon-wx" rel="nofollow" btnname="微信按钮"></div>
                    <div class="nf-icon nf-icon-wb" rel="nofollow" btnname="微信按钮"></div>
                </div>
            </dt>
            <dd>
                <ul class="nf-link-ul">
                    <li>
                        <a href="aboutus.html" class="menu" target="_blank" rel="nofollow" sensors-disable="true" btnname="关于造作">关于贵美</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="团队介绍">团队介绍</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="设计师团">设计师团</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="媒体报道">媒体报道</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="加入造作">加入贵美</a>
                        <a href="aboutus.html" class="international" target="_blank" rel="nofollow" sensors-disable="true" btnname="Designer Hiring">Designer Hiring</a>
                    </li>
                    <li>
                        <i class="menu">服务支持</i>
                        <a href="helpcenter.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="服务保障">服务保障</a>
                        <a href="helpcenter.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="用户协议">用户协议</a>
                        <a href="helpcenter.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="物流售后服务">物流售后服务</a>
                    </li>
                    <li>
                        <i class="menu">商业合作</i>
                        <a href="#" target="_blank" rel="nofollow" sensors-disable="true" btnname="集合采购">集合采购</a>
                        <a href="#" target="_blank" rel="nofollow" sensors-disable="true" btnname="招商邀约">招商邀约</a>
                        <a href="#" target="_blank" rel="nofollow" sensors-disable="true" btnname="品牌合作">品牌合作</a>
                        <a href="#" target="_blank" rel="nofollow" sensors-disable="true" btnname="媒体合作">媒体合作</a>
                        <a href="#" target="_blank" rel="nofollow" sensors-disable="true" btnname="设计师入驻">设计师入驻</a>
                    </li>
                </ul>
            </dd>
            <dt class="right">
                <div class="nf-contact-us">
                    <a href="#" rel="nofollow" btnname="联系我们">联系我们</a>
                    <p class="es-font">400-0000-000<span class="es-font">（0:00~0:00）</span></p>
                    <div class="server-online" btnname="在线客服" href="#" target="">在线客服</div>
                    <div class="shop-entry">
                        <a href="#" target="_blank" sensors-disable="true" btnname="全国实体店"><span>全国实体店(没有)</span>
                            <i class="icon_zaozuosvg_right"></i>
                        </a>
                    </div>
                </div>
            </dt>
        </dl>
        <div class="nf-copyright"></div>
    </div>
</footer><!--footer End-->

<!--侧边浮动按钮-->
<dl class="icon-70-wrapper">
    <dt class="icon-70 icon-70-gift fix" btnname="新人礼浮泡" style="display: block;"></dt>
    <dt class="icon-70 icon-70-app" id="jump_app">
        <a href="#" target="_blank" rel="nofollow">
            <div class="icon-70-title">
                <p>没有App</p>
            </div>
        </a>
    </dt>
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
            $('body').animate({
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
<script>
    $(function () {
        var $quantity = $('.total-val');
        var quantity = $quantity.text();
        var prodNo = $('.addcart-box').attr('prodNo');
        console.log('prodNo：'+prodNo+' quantity：'+quantity);

        $('.order-btn').click(function () {
            //立即结算
            $.post('goods/addToCart.do',{prodNo: prodNo,quantity: quantity}, function (res) {
                if (res && res.result){
                    location.replace('order.jsp');
                    console.log('重定向成功！')
                }else {
                    swal({
                        title: "失败",
                        text: "商品结算失败！",
                        type: "error"
                    });
                }
            },'json');
        });

        $('.addcart-btn').click(function () {
            if ($('#color').hasClass('model-box-click')&&$('#type').hasClass('model-box-click')){
                //添加到购物车
                $.post('goods/addToCart.do',{prodNo: prodNo,quantity: quantity}, function (res) {
                    if (res && res.result){
                        swal({
                            title: "成功！",
                            text: "该商品已提交到购物车"
                        });
                        $('.cart-number').text(${sessionScope.cartCount});
                    }else {
                        swal({
                            title: "失败",
                            text: "添加商品：" + prodNo + " 进购物车失败！",
                            type: "error"
                        });
                    }
                },'json');
            }else {
                swal({
                    title:"提示",
                    text:"请选择款式或颜色"
                });
            }
        });

        //增加数量
        $('.add-btn').click(function () {
            console.log('+');
            var $count = parseInt(quantity)+1;
            //实时更新quantity的数量
            quantity = parseInt(quantity)+1;
            $quantity.text($count);
        });

        //减少数量
        $('.reduce-btn').click(function () {
            if (quantity > 1) {
                console.log('-');
                var $count = parseInt(quantity)-1;
                //实时更新quantity的数量
                quantity = parseInt(quantity)-1;
                $quantity.text($count);
            }
        });

    });
</script>
</body>
</html>
