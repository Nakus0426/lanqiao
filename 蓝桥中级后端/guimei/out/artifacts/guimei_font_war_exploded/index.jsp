<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/17 0017
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>index</title>
    <script type="text/javascript" src="static/js/jquery-2.2.4.js"></script>
    <script type="text/javascript" src="static/js/index.js"></script>
    <script src="static/js/bootstrap.js"></script>
    <link href="static/css/index.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="static/css/bootstrap.css">
</head>

<body id="index_body" data-gr-c-s-loaded="true" class="wf-active">
<!--头部导航栏-->
<header class="header-video preheating-header-black" hover="false" style="top: 0px;">
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
                    <a href="goods/sort.do?bigCtgrId=10" sensors-disable="true">
                        <h2 class="start-index-header">沙发</h2>
                    </a>
                </div>
                <ul class="clearfixed index-two-tag-wrap">
                    <li>
                        <a href="goods/sort.do?ctgrId=101">
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
                        <a href="goods/sort.do?ctgrId=102">
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
                        <a href="goods/sort.do?ctgrId=103">
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
                        <a href="goods/sort.do?ctgrId=104">
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
                    <a href="goods/sort.do?bigCtgrId=20" sensors-disable="true">
                        <h2>床具</h2>
                    </a>
                </div>
                <ul class="clearfixed index-two-tag-warp">
                    <li>
                        <a href="goods/sort.do?ctgrId=201">
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
                        <a href="goods/sort.do?ctgrId=202">
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
                        <a href="goods/sort.do?ctgrId=203">
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
                        <a href="goods/sort.do?ctgrId=204">
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
                    <a href="goods/sort.do?bigCtgrId=30" sensors-disable="true">
                        <h2>柜架</h2>
                    </a>
                </div>
                <ul class="clearfixed index-two-tag-warp">
                    <li>
                        <a href="goods/sort.do?ctgrId=301">
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
                        <a href="goods/sort.do?ctgrId=302">
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
                        <a href="goods/sort.do?ctgrId=303">
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
                        <a href="goods/sort.do?ctgrId=304">
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
                    <a href="goods/sort.do?bigCtgrId=40" sensors-disable="true">
                        <h2>椅凳</h2>
                    </a>
                </div>
                <ul class="clearfixed index-two-tag-warp">
                    <li>
                        <a href="goods/sort.do?ctgrId=401">
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
                        <a href="goods/sort.do?ctgrId=402">
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
                        <a href="goods/sort.do?ctgrId=403">
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
                        <a href="goods/sort.do?ctgrId=404">
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
                <a class="selfinfo user-image nologin" sensors-disable="true"
                   href="<c:if test="${sessionScope.user eq null}">login.jsp</c:if> "></a>
                <div class="userbar">
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="会员中心">会员中心</a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的订单">我的订单</a>
                    <a href="#" class="coupon-giftcard" rel="nofollow" sensors-disable="true" btnname="我的优惠券&amp;礼品卡">我的优惠券<br>&amp;礼品卡</a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的消息">我的消息<span class="red-dot msg-icon"
                                                                                               style="display: none;"></span></a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的晒单">我的晒单</a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的资料">我的资料</a>
                    <a href="#" rel="nofollow" sensors-disable="true" btnname="我的收藏">我的收藏</a>
                    <a href="login.jsp" rel="nofollow" sensors-disable="true" btnname="退出账号">退出账号</a>
                </div>
            </li>
            <li id="cart-li">
                <c:set var="src" value="cart.jsp" scope="request"></c:set>
                <c:if test="${sessionScope.user eq null}"><c:set var="src" value="login.jsp"
                                                                 scope="request"></c:set></c:if>
                <a class="cart-img" sensors-disable="true" href="${src}" id="cart_box">
                    <img class="normal" alt="购物车" src="images/cart_normal.png">
                    <img class="hover" alt="购物车" src="images/cart_hover.png">
                    <span class="cart-number"></span>
                </a>
            </li>
        </ul>
    </div>
</header><!--头部导航栏 End-->

<!--标题栏-->
<div class="zaozuo-navigation-wrapper" style="margin-top: 36px;">
    <div class="title">
        <h1>
            <i class="icon icon_zaozuosvg_logo">
                <img src="images/title.png" style="width: 300px;height: 46px;" alt="标题LOGO">
            </i>
        </h1>
        <div class="login-wrapper">
            <a href="${src}" id="cart_box" rel="nofollow" btnname="banner上方个人购物车按钮">
                <img alt="购物车" class="normal" src="images/title_cart_normal.png">
                <img alt="购物车" class="hover" src="images/title_cart_hover.png">
                <span class="cart-number" style="display: none;">0</span>
            </a>
            <div class="login">
                <a class="sinfo" href="<c:if test="${sessionScope.user eq null}">login.jsp</c:if>" rel="nofollow"
                   btnname="banner上方个人中心按钮">
                    <img alt="登录" class="normal" src="images/title_login_normal.png">
                    <img alt="登录" class="hover" src="images/title_login_hover.png">
                </a>
                <div class="userbar">
                    <a href="https://www.zaozuo.com/memberCenter" rel="nofollow">会员中心</a>
                    <a href="https://www.zaozuo.com/order/100" rel="nofollow">我的订单</a>
                    <a href="https://www.zaozuo.com/me/userinfo_coupon" class="coupon-giftcard" rel="nofollow">我的优惠券<br>&amp;礼品卡</a>
                    <a href="https://www.zaozuo.com/messages" rel="nofollow">我的消息<span class="red-dot msg-icon">5</span></a>
                    <a href="https://www.zaozuo.com/show/myshow" rel="nofollow">我的晒单</a>
                    <a href="https://www.zaozuo.com/me" rel="nofollow">我的资料</a>
                    <a href="https://www.zaozuo.com/fav/items" rel="nofollow">我的收藏</a>
                    <a href="login.jsp" rel="nofollow">退出账号</a>
                </div>
            </div>
        </div>
    </div>

    <ul class="navigator-wrapper clearfixed">
        <li class="index">
            <a href="index.do"><h2>首页</h2></a>
        </li>

        <li>
            <div class="one-tag">
                <a href="goods/sort.do?bigCtgrId=10">
                    <h2 tagid="87" class="start-index">沙发</h2>
                </a>
            </div>
            <ul class="clearfixed two-tag-ct" style="display: none;">
                <li onetagname="沙发">
                    <a href="goods/sort.do?ctgrId=101">
                        <img alt="三人沙发" class="normal" src="images/sofa3.png">
                        <img alt="三人沙发" class="hover" src="images/sofa3_dark.png">
                        <h3 class="tag-name">
                            <span>三人沙发</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
                <li onetagname="沙发">
                    <a href="goods/sort.do?ctgrId=102">
                        <img alt="双人沙发" class="normal" src="images/sofa2.png">
                        <img alt="双人沙发" class="hover" src="images/sofa2_dark.png">
                        <h3 class="tag-name">
                            <span>双人沙发</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
                <li onetagname="沙发">
                    <a href="goods/sort.do?ctgrId=103">
                        <img alt="单人沙发" class="normal" src="images/sofa1.png">
                        <img alt="单人沙发" class="hover" src="images/sofa1_dark.png">
                        <h3 class="tag-name">
                            <span>单人沙发</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
                <li onetagname="沙发">
                    <a href="goods/sort.do?ctgrId=104">
                        <img alt="大三人沙发" class="normal" src="images/sofa3_big.png">
                        <img alt="大三人沙发" class="hover" src="images/sofa3_big_dark.png">
                        <h3 class="tag-name">
                            <span>大三人沙发</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
            </ul>
        </li>

        <li>
            <div class="one-tag">
                <a href="goods/sort.do?bigCtgrId=20">
                    <h2 tagid="108">床·床具</h2>
                </a>
            </div>
            <ul class="clearfixed two-tag-ct" style="display: none;">
                <li onetagname="床·床具">
                    <a href="goods/sort.do?ctgrId=201">
                        <img alt="床" class="normal" src="images/bed.png">
                        <img alt="床" class="hover" src="images/bed_dark.png">
                        <h3 class="tag-name">
                            <span>床</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
                <li onetagname="床·床具">
                    <a href="goods/sort.do?ctgrId=202">
                        <img alt="床垫" class="normal" src="images/bedpad.png">
                        <img alt="床垫" class="hover" src="images/bedpad_dark.png">
                        <h3 class="tag-name">
                            <span>床垫</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
                <li onetagname="床·床具">
                    <a href="goods/sort.do?ctgrId=203">
                        <img alt="床品4件套" class="normal" src="images/bed4.png">
                        <img alt="床品4件套" class="hover" src="images/bed4_dark.png">
                        <h3 class="tag-name">
                            <span>床品4件套</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
                <li onetagname="床·床具">
                    <a href="goods/sort.do?ctgrId=204">
                        <img alt="被芯" class="normal" src="images/quilt.png">
                        <img alt="被芯" class="hover" src="images/quilt_dark.png">
                        <h3 class="tag-name">
                            <span>被芯</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>

            </ul>
        </li>

        <li>
            <div class="one-tag">
                <a href="goods/sort.do?bigCtgrId=30">
                    <h2 tagid="107">柜架</h2>
                </a>
            </div>
            <ul class="clearfixed two-tag-ct" style="display: none;">
                <li onetagname="柜架">
                    <a href="goods/sort.do?ctgrId=301">
                        <img alt="COSMO" class="normal" src="images/cosmos.png">
                        <img alt="COSMO" class="hover" src="images/cosmos_dark.png">
                        <h3 class="tag-name">
                            <span>COSMO</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
                <li onetagname="柜架">
                    <a href="goods/sort.do?ctgrId=302">
                        <img alt="置物柜" class="normal" src="images/cupboard.png">
                        <img alt="置物柜" class="hover" src="images/cupboard_dark.png">
                        <h3 class="tag-name">
                            <span>置物柜</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
                <li onetagname="柜架">
                    <a href="goods/sort.do?ctgrId=303">
                        <img alt="书柜·书架" class="normal" src="images/cupboard_book.png">
                        <img alt="书柜·书架" class="hover" src="images/cupboard_book_dark.png">
                        <h3 class="tag-name">
                            <span>书柜·书架</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
                <li onetagname="柜架">
                    <a href="goods/sort.do?ctgrId=304">
                        <img alt="电视柜" class="normal" src="images/cupboard_tv.png">
                        <img alt="电视柜" class="hover" src="images/cupboard_tv_dark.png">
                        <h3 class="tag-name">
                            <span>电视柜</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>

            </ul>
        </li>

        <li>
            <div class="one-tag">
                <a href="goods/sort.do?bigCtgrId=40">
                    <h2 tagid="94">椅凳</h2>
                </a>
            </div>
            <ul class="clearfixed two-tag-ct" style="display: none;">
                <li onetagname="椅凳">
                    <a href="goods/sort.do?ctgrId=401">
                        <img alt="座椅" class="normal" src="images/chair_sit.png">
                        <img alt="座椅" class="hover" src="images/chair_sit_dark.png">
                        <h3 class="tag-name">
                            <span>座椅</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
                <li onetagname="椅凳">
                    <a href="goods/sort.do?ctgrId=402">
                        <img alt="坐墩" class="normal" src="images/sit.png">
                        <img alt="坐墩" class="hover" src="images/sit_dark.png">
                        <h3 class="tag-name">
                            <span>坐墩</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
                <li onetagname="椅凳">
                    <a href="goods/sort.do?ctgrId=403">
                        <img alt="休闲椅" class="normal" src="images/chair_fun.png">
                        <img alt="休闲椅" class="hover" src="images/chair_fun_dark.png">
                        <h3 class="tag-name">
                            <span>休闲椅</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>
                <li onetagname="椅凳">
                    <a href="goods/sort.do?ctgrId=404">
                        <img alt="凳子" class="normal" src="images/seat.png">
                        <img alt="凳子" class="hover" src="images/seat_dark.png">
                        <h3 class="tag-name">
                            <span>凳子</span>
                            <span class="red-dot" style="display: none;"></span>
                        </h3>
                    </a>
                </li>

            </ul>
        </li>
    </ul>
</div><!--标题栏 End-->

<!--banner栏-->
<div class="preheating-banner">
    <div class="preheating-headlayer"></div>
    <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel" data-interval="2400"
         data-pause="false">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="images/banner1.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="images/banner2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="images/banner3.jpg" alt="Third slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="images/banner4.jpg" alt="Fouth slide">
            </div>
        </div>
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ol>
    </div>
</div>
<!--banner栏 End-->

<!--代表作-->
<div class="container">
    <div id="pride" class="index-wrapper prefectgoods-container">
        <div class="index-title">
            <h2>GuiMei 大师作品集</h2>
            <p class="sub-title-border">有人说我们是家具界的卢浮宫，其实我们更希望从大师走到大众</p>

            <c:forEach var="sofa" items="${sofaList}">
                <div class="index-goods-box">
                    <a class="basic" target="_blank" shape="rect" sensors-disable="true"
                       href="goods/queryByNo.do?prodNo=${sofa.prodNo}"
                       style="display: flex;align-items: center;justify-content: center">
                        <img class alt="" src="images/product/${sofa.image}.jpg"
                             style="visibility: visible;display: inline;width: 100%;height: auto;margin-top: 70px"">
                        <div class="index-goods-img-hover" style="opacity: 0;">
                            <div>
                                <p>${sofa.descr}</p>
                            </div>
                        </div>
                    </a>
                    <dl class="basic" id="price" style="opacity: 1;">
                        <dd class="box-sub-name">
                            <h3><a href="#" target="_blank">${sofa.prodName}</a></h3>
                        </dd>
                        <dt>
                            <i class="es-font qijia">${sofa.price}</i>
                        </dt>
                        <ul class="box-sub-tag-ct">
                            <li class="available event box-sub-tag">${sofa.color}</li>
                        </ul>
                    </dl>
                    <dl class="normal-hover index-goods-layer" style="opacity: 0;">
                        <dt class="es-font">${sofa.venName}</dt>
                        <dd class="es-font">${sofa.venAddr}</dd>
                    </dl>
                </div>
            </c:forEach>

        </div>
    </div>
</div><!--代表作 End-->

<!--腰带-->
<div class="live-like-designer" style="height: 205px;">
    <div class="live-likedesigner-container">
        <div class="index-aboutzz-belt-five">
            <a href="aboutus.html" rel="" target="_blank" class="aboutzz-belt-world" btname="">
                <div>
                    <div></div>
                </div>
                <p>
                    27国/百位设计大师的<br>
                    <span class="first">
                        <b>签名</b>
                        正品
                    </span>
                </p>
            </a>

            <a href="#" rel="" target="_blank" class="aboutzz-belt-furniture" btname="">
                <div>
                    <div></div>
                </div>
                <p>
                    100+精工大厂/100%手检<br>
                    <span class="first">
                        <b>欧标</b>
                        质造
                    </span>
                </p>
            </a>

            <a href="#" rel="" target="_blank" class="aboutzz-belt-create" btname="">
                <div>
                    <div></div>
                </div>
                <p>
                    满¥199<br>
                    <span class="first">
                        <b>免费</b>
                        送装
                    </span>
                </p>
            </a>

            <a href="#" rel="" target="_blank" class="aboutzz-belt-pay" btname="">
                <div>
                    <div></div>
                </div>
                <p>
                    延期高利补偿/确保<br>
                    <span class="first">
                        <b>准时</b>
                        交付
                    </span>
                </p>
            </a>

            <a href="#" rel="" target="_blank" class="aboutzz-belt-support" btname="">
                <div>
                    <div></div>
                </div>
                <p>
                    价格保障/变动返差价<br>
                    <span class="first">
                        <b>7日</b>
                        保价
                    </span>
                </p>
            </a>

            <a href="#" rel="" target="_blank" class="aboutzz-belt-quality last" btname="">
                <div>
                    <div></div>
                </div>
                <p>
                    三年质保<br>
                    <span class="first">
                        <b>7日</b>
                        退换
                    </span>
                </p>
            </a>
        </div>
    </div>
</div><!--腰带 End-->

<!--新品上架台-->
<div class="container">
    <div id="pride" class="index-wrapper prefectgoods-container">
        <div class="index-title">
            <h2>GuiMei 新品发布台</h2>
            <p class="sub-title-border">从源头到您手中，无需溢价，入手大师作品</p>

            <c:forEach var="bed" items="${bedList}">
                <div class="index-goods-box">
                    <a class="basic" target="_blank" shape="rect" sensors-disable="true"
                       href="goods/queryByNo.do?prodNo=${bed.prodNo}"
                       style="display: flex;align-items: center;justify-content: center">
                        <img class alt="" src="images/product/${bed.image}.jpg"
                             style="visibility: visible;display: inline;width: 100%;height: auto;margin-top: 70px">
                        <div class="index-goods-img-hover" style="opacity: 0;">
                            <div>
                                <p>${bed.descr}</p>
                            </div>
                        </div>
                    </a>
                    <dl class="basic" id="price" style="opacity: 1;">
                        <dd class="box-sub-name">
                            <h3><a href="#" target="_blank">${bed.prodName}</a></h3>
                        </dd>
                        <dt>
                            <i class="es-font qijia">${bed.price}</i>
                        </dt>
                        <ul class="box-sub-tag-ct">
                            <li class="available event box-sub-tag">${bed.color}</li>
                        </ul>
                    </dl>
                    <dl class="normal-hover index-goods-layer" style="opacity: 0;">
                        <dt class="es-font">${bed.venName}</dt>
                        <dd class="es-font">${bed.venAddr}</dd>
                    </dl>
                </div>
            </c:forEach>

        </div>
    </div>
</div><!--新品上架台 End-->

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
                        <a href="aboutus.html" class="menu" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="关于造作">关于贵美</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="团队介绍">团队介绍</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="设计师团">设计师团</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="媒体报道">媒体报道</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="加入造作">加入贵美</a>
                        <a href="aboutus.html" class="international" target="_blank" rel="nofollow"
                           sensors-disable="true" btnname="Designer Hiring">Designer Hiring</a>
                    </li>
                    <li>
                        <i class="menu">服务支持</i>
                        <a href="helpcenter.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="服务保障">服务保障</a>
                        <a href="helpcenter.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="用户协议">用户协议</a>
                        <a href="helpcenter.html" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="物流售后服务">物流售后服务</a>
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
        <div class="nf-copyright">
            <p>Copyright © 2019 guimei.com Inc.All Rights Reserved. 桂林贵美科技有限公司</p>
            <p>
                <span>版权所有</span>
                <a href="http://www.miitbeian.gov.cn/" target="_blank" rel="nofollow">京ICP备66666666号-1</a>
                <a href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action" target="_blank"
                   class=" last-child" rel="nofollow">增值电信业务经营许可证：京ICP证000001号</a>
            </p>
            <p><a style="padding-left: 0" href="https://www.zaozuo.com/">贵美</a>官网-全球设计师创作<a style="padding-left: 0"
                                                                                            href="https://www.zaozuo.com/">家居品牌</a>
            </p>
        </div>
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
        });

        $('.cart-number').text();
        if ($('.cart-number').html() !== '') {
            $('.cart-number').show();
            console.log('not null:' + $('.cart-number').html())
        } else {
            $('.cart-number').hide();
            console.log('null')
        }
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
</body>
</html>
