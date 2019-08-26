<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhang naku
  Date: 2019/8/17 0017
  Time: 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}/">
    <meta charset="UTF-8">
    <title>list</title>
    <script src="static/js/jquery-2.2.4.js"></script>
    <script src="static/js/list.js"></script>
    <script src="static/js/bootstrap.js"></script>
    <link rel="stylesheet" href="static/css/list.css">
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="//at.alicdn.com/t/font_1359937_s4nm6spstv.css">
</head>
<body class="wf-active" style="background: #fff;">
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
                <a class="selfinfo user-image nologin" sensors-disable="true" href="<c:if test="${sessionScope.user eq null}">login.jsp</c:if> "></a>
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
                <a class="cart-img" sensors-disable="true" href="cart.jsp" id="cart_box">
                    <img class="normal" alt="购物车" src="images/cart_normal.png">
                    <img class="hover" alt="购物车" src="images/cart_hover.png">
                    <span class="cart-number" style="display: inline;">1</span>
                </a>
            </li>
        </ul>
    </div>
</header>
<!--头部导航栏 End-->

<!--界面主体-->
<div class="mt-header christmas-section-2016">

    <!--筛选产品--><!--如果需要显示则加上show-two-tag-wrap样式-->
    <div class="category-screening category-screening_v2 category-screening-fixed" style="">
        <!--沙发-->
        <ul id="ptag-ul-click1" class="two-tag-wrap clearfixed <c:if test="${requestScope.stat eq 10}">show-two-tag-wrap</c:if>" onetagname="沙发" style="width: 550px;">
            <li class="back-to-all-btn" onetagid="87" tagname="全部">
                <a href="goods/sort.do?" sensors-disable="true">
						<span class="imgbox">
							<img alt="全部" class="tag-img" src="images/all.png">

						 </span>
                    <h3 class="tag-name tag-clickname">
                        <span>全部<i class="tag-count-flag">15</i></span>
                    </h3>
                </a>
            </li>
            <li class="screening-click" tagid="91" onetagid="87" tagname="三人沙发">
                <a href="goods/sort.do?ctgrId=101" sensors-disable="true">
						<span class="imgbox">

							<img alt="三人沙发" class="tag-img" src="images/sofa3.png">
						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>三人沙发</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>
            <li tagid="90" onetagid="87" tagname="双人沙发">
                <a href="goods/sort.do?ctgrId=102" sensors-disable="true">
						<span class="imgbox">
							<img alt="双人沙发" class="tag-img" src="images/sofa2.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>双人沙发</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>
            <li tagid="88" onetagid="87" tagname="单人沙发">
                <a href="goods/sort.do?ctgrId=103" sensors-disable="true">
						<span class="imgbox">
							<img alt="单人沙发" class="tag-img" src="images/sofa1.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>单人沙发</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>
            <li tagid="92" onetagid="87" tagname="大三人沙发">
                <a href="goods/sort.do?ctgrId=104" sensors-disable="true">
						<span class="imgbox">
							<img alt="大三人沙发" class="tag-img" src="images/sofa3_big.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>大三人沙发</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>

        </ul>

        <!--床具-->
        <ul id="ptag-ul-click2" class="two-tag-wrap clearfixed <c:if test="${requestScope.stat eq 20}">show-two-tag-wrap</c:if>" onetagname="床·床具" style="width: 550px;">
            <li class="back-to-all-btn" onetagid="108" tagname="全部">
                <a href="goods/sort.do?" sensors-disable="true">
						<span class="imgbox">
							<img alt="全部" class="tag-img" src="images/all.png">

						 </span>
                    <h3 class="tag-name tag-clickname">
                        <span>全部<i class="tag-count-flag">15</i></span>
                    </h3>
                </a>
            </li>
            <li tagid="125" onetagid="108" tagname="床">
                <a href="goods/sort.do?ctgrId=201" sensors-disable="true">
						<span class="imgbox">
							<img alt="床" class="tag-img" src="images/bed.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>床</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>
            <li tagid="126" onetagid="108" tagname="床垫">
                <a href="goods/sort.do?ctgrId=202" sensors-disable="true">
						<span class="imgbox">
							<img alt="床垫" class="tag-img" src="images/bedpad.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>床垫</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>
            <li tagid="128" onetagid="108" tagname="床品4件套">
                <a href="goods/sort.do?ctgrId=203" sensors-disable="true">
						<span class="imgbox">
							<img alt="床品4件套" class="tag-img" src="images/bed4.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>床品4件套</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>
            <li tagid="130" onetagid="108" tagname="被芯">
                <a href="goods/sort.do?ctgrId=204" sensors-disable="true">
						<span class="imgbox">
							<img alt="被芯" class="tag-img" src="images/quilt.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>被芯</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>

        </ul>

        <!--柜架-->
        <ul id="ptag-ul-click3" class="two-tag-wrap clearfixed <c:if test="${requestScope.stat eq 30}">show-two-tag-wrap</c:if>" onetagname="柜架" style="width: 550px;">
            <li class="back-to-all-btn" onetagid="107" tagname="全部">
                <a href="goods/sort.do?" sensors-disable="true">
						<span class="imgbox">
							<img alt="全部" class="tag-img" src="images/all.png">

						 </span>
                    <h3 class="tag-name tag-clickname">
                        <span>全部<i class="tag-count-flag">15</i></span>
                    </h3>
                </a>
            </li>
            <li tagid="367" onetagid="107" tagname="COSMO">
                <a href="goods/sort.do?ctgrId=301" sensors-disable="true">
						<span class="imgbox">
							<img alt="COSMO" class="tag-img" src="images/cosmos.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>COSMO</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>
            <li tagid="114" onetagid="107" tagname="置物柜">
                <a href="goods/sort.do?ctgrId=302" sensors-disable="true">
						<span class="imgbox">
							<img alt="置物柜" class="tag-img" src="images/cupboard.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>置物柜</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>
            <li tagid="167" onetagid="107" tagname="书柜·书架">
                <a href="goods/sort.do?ctgrId=303" sensors-disable="true">
						<span class="imgbox">
							<img alt="书柜·书架" class="tag-img" src="images/cupboard_book.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>书柜·书架</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>
            <li tagid="116" onetagid="107" tagname="电视柜">
                <a href="goods/sort.do?ctgrId=304" sensors-disable="true">
						<span class="imgbox">
							<img alt="电视柜" class="tag-img" src="images/cupboard_tv.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>电视柜</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>

        </ul>

        <!--椅凳-->
        <ul id="ptag-ul-click4" class="two-tag-wrap clearfixed <c:if test="${requestScope.stat eq 40}">show-two-tag-wrap</c:if>" onetagname="椅凳" style="width: 550px;">
            <li class="back-to-all-btn" onetagid="94" tagname="全部">
                <a href="goods/sort.do?" sensors-disable="true">
						<span class="imgbox">
							<img alt="全部" class="tag-img" src="images/all.png">

						 </span>
                    <h3 class="tag-name tag-clickname">
                        <span>全部<i class="tag-count-flag">15</i></span>
                    </h3>
                </a>
            </li>
            <li tagid="172" onetagid="94" tagname="座椅">
                <a href="goods/sort.do?ctgrId=401" sensors-disable="true">
						<span class="imgbox">
							<img alt="座椅" class="tag-img" src="images/chair_sit.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>座椅</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>
            <li tagid="98" onetagid="94" tagname="坐墩">
                <a href="goods/sort.do?ctgrId=402" sensors-disable="true">
						<span class="imgbox">
							<img alt="坐墩" class="tag-img" src="images/sit.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>坐墩</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>
            <li tagid="358" onetagid="94" tagname="休闲椅">
                <a href="goods/sort.do?ctgrId=403" sensors-disable="true">
						<span class="imgbox">
							<img alt="休闲椅" class="tag-img" src="images/chair_fun.png">

						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>休闲椅</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>
            <li tagid="97" onetagid="94" tagname="凳子">
                <a href="goods/sort.do?ctgrId=404" sensors-disable="true">
						<span class="imgbox">
							<img alt="凳子" class="tag-img" src="images/seat.png">
						</span>
                    <h3 class="tag-name tag-clickname">
                        <span>凳子</span>
                        <span class="two_tag-icon two_tag-icon-hidden"></span>
                        <i class="tag-count-flag">15</i>
                    </h3>
                </a>
            </li>

        </ul>
    </div>
    <!--筛选产品 End-->

    <!--展示列表-->
    <div class="index-wrapper" style="">
        <div class="layout-wrap">
            <div class="prefectgoods-container store-goods-wrap clearfixed">
                <c:forEach var="sofa" items="${goodsList}">
                    <div class="index-goods-box">
                        <a class="basic" target="_blank" shape="rect" sensors-disable="true" href="goods/queryByNo.do?prodNo=${sofa.prodNo}" style="display: flex;align-items: center;justify-content: center">
                            <img class alt="" src="images/product/${sofa.image}.jpg" style="visibility: visible;display: inline;width: 100%;height: auto;margin-top: 70px">
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
                <!-- 分页栏 -->
                <div class="clearfix"></div>
                <div class="page-nav" style="text-align: center">
                    <a href="goods/sort.do?pageNo=1"><span class="iconfont icon-doubleleft" style="color: black"></span></a>
                    <a href="goods/sort.do?pageNo=${productPage.pageNo-1}"><span class="iconfont icon-left" style="color: black;margin-left: 50px;;margin-right: 50px;"></span></a>
                    <c:if test="${not empty productPage}">
                        ${productPage.pageNo}/${productPage.totalPage}
                    </c:if>
                    <a href="goods/sort.do?pageNo=${productPage.pageNo+1}"><span class="iconfont icon-right" style="color: black;margin-left: 50px;"></span></a>
                    <a href="goods/sort.do?pageNo=${productPage.totalPage}"><span class="iconfont icon-doubleright" style="color: black;margin-left: 50px;"></span></a>
                </div>
                <!-- 分页栏  End-->
            </div>
        </div>
    </div><!--展示列表 End-->

</div>
<!--界面主体 End-->

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
                        <a href="aboutus.html" class="menu" target="_blank" rel="nofollow" sensors-disable="true" btnname="关于造作">关于贵美</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="团队介绍">团队介绍</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="设计师团">设计师团</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="媒体报道">媒体报道</a>
                        <a href="aboutus.html" target="_blank" rel="nofollow" sensors-disable="true" btnname="加入造作">加入贵美</a>
                        <a href="aboutus.html" class="international" target="_blank" rel="nofollow" sensors-disable="true"
                           btnname="Designer Hiring">Designer Hiring</a>
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
            // console.log($('body').get(0));
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
