<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>order</title>
    <script src="static/js/jquery-2.2.4.js"></script>
    <script src="static/js/order.js"></script>
    <script src="static/js/bootstrap.js"></script>
    <script src="static/js/provincesData.js"></script>
    <link rel="stylesheet" href="static/css/order.css">
    <link rel="stylesheet" href="static/css/iconfont.css">
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/sweetalert.css">
    <link rel="stylesheet" href="static/css/animate.css">
    <script src="static/js/sweetalert.min.js"></script>
</head>

<body class="body-white-bg wf-active">
<!--头部导航栏-->
<header class="header-fixed preheating-header-black" hover="false" style="top: 0px;">
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
            <li><a href="#" rel="nofollow">了解贵美</a></li>
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
</header>
<!--头部导航栏 End-->

<!--地址-->
<div class="userinfor-content-container orderconfirm-content-container">
    <div class="userinfor-content">
        <div class="orderconfirm-modelbox">
            <h3 class="pb pt-6">收货地址</h3>
            <div class="default-address userinfor-default-address clearfixed" id="div-address-all">
                <div class="orderconfirm-add-address" data-toggle="modal" data-target="#addAddressModal">
                    <span class="iconfont icon-icon_add_outline"></span><span>添加收货地址</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!--地址 End-->

<!--商品清单-->
<div class="receipt-wrapper gray">
    <div class="orderconfirm-modelbox pb">
        <h3>商品清单</h3>

        <!--单品-->
        <c:forEach var="cart" items="${cart.values()}">
            <div class="cart-part-list">
                <div class="buy-goodslist p-small clearfixed">
                    <div class="combination-buy-gooodsinfo ga-order-wrapper buyitem-container">
                        <div class="cart-box buyitem-wrapper ga-order-wrapper">
                            <div class="cart-index cart-item-flag clearfixed">
                                <!--商品详情超链接-->
                                <a class="big" href="#" target="_blank">
                                    <!--商品图片-->
                                    <img src="images/product/${cart.product.image}.jpg">
                                </a>
                                <div class="cart-infor">
                                    <dl class="cart-goods-name">
                                        <!--商品名-->
                                        <dt>${cart.product.prodName}</dt>
                                        <dd>
                                            <!--款式-->
                                            <span class="type">${cart.product.descr}</span>
                                        </dd>
                                    </dl>
                                    <div class="cart-class">预计<em>2019-08-19</em>前发货</div>
                                    <div class="cart-edit-wrapper">
                                        <div class="shopping-num shopping-num-item clearfixed">
                                            <div class="cart-item-price">
                                                <!--价格-->
                                                <span class="ga-cartprice">¥${cart.product.price}</span>

                                            </div>
                                            <!--数量-->
                                            <p class="total-val">×${cart.quantity}</p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        <!--单品 End-->

    </div>
</div>
<!--商品清单 End-->

<!--备注-->
<div class="orderconfirm-modelbox">
    <h3 class="pb">发票信息</h3>
    <div class="receipt-wrapper receipt-other-wrapper">
        <div class="invoice-ct">
            <div class="radio fix"><span class="iconfont icon-check icon_zaozuosvg_tick"></span></div>
            <p id="open_inv_op" class="open-inv-op">我要开发票</p>
        </div>
    </div>
    <h3 class="pt-4">订单备注</h3>
    <div class="receipt-wrapper receipt-other-wrapper">
        <textarea name="remarks-textarea" id="remarks_textarea" placeholder="在此处添加备注"></textarea>
    </div>
</div>
<!--备注 End-->

<!--统计-->
<div class="orderconfirm-modelbox border" id="receipt_wrapper">
    <div class="receipt-wrapper receipt-other-wrapper">
        <div class="order-infos-wrapper orderconfirm-content border-wrapper clearfixed">
            <dl class="order-infos">
                <dt style="position: relative;" id="discountBox">
                    <ul class="order-detail-infos">
                        <li class="clearfixed total">
                            <span class="name">商品合计</span>
                            <!--总价-->
                            <span class="price">¥${totalPrice}</span>
                        </li>
                    </ul>
                </dt>
                <dd>
                    <ul class="order-fee-detail-infos">
                        <li class="clearfixed fee">
                            <span class="name">运费</span>
                            <!--收货地址-->
                            <span class="price" price-content="0">0元</span>
                        </li>
                    </ul>
                </dd>
                <dd>
                    <ul class="order-pay-detail-infos">
                        <!--实际付款-->
                        <li class="clearfixed pay"><span class="name">实付</span><span class="price">¥${totalPrice}</span></li>
                    </ul>
                </dd>
            </dl>
        </div>
    </div>
    <div class="agreement-confirm-wrapper">
        <div class="agreement-confirm-container clearfixed" id="orderconfirm_agreement">
            <p>我已同意<a href="https://www.zaozuo.com/user-agreement" target="_blank">《贵美物流及售后协议》</a></p>
            <div class="radio radio-click"><span class="iconfont icon-check icon_zaozuosvg_tick"></span></div>
        </div>
    </div>
</div>
<!--统计 End-->

<!--结算-->
<div class="sure-pay-wrapper">
    <div class="receipt-wrapper clearfixed receipt-stage-wrapper receipt-other-wrapper">
        <p class="orderconfirm-address-show" id="address_show">
            <span class="big name">111</span>
            <span class="big en">15777568426</span>
            <span class="clearfixed">广西 桂林 雁山区</span>
            <span class="clearfixed">桂林理工大学</span>
        </p>
        <div class="orderconfirm-confirm-btn nopromotion">
            <div id="confirm_order">结算</div>
        </div>
        <h1 class="order-totalprice" id="orderVal"><span>¥${totalPrice}</span></h1>
        <span style="display: none;" class="coupon-head-name" coupon_discount="0" coupon_type="othercoupon" coupon_id="0" coupon_fee_discount="0" coupon_fee_id="0" coupon_fee_discount_bak="0" coupon_fee_id_bak="0">优惠券</span>
    </div>
</div>
<!--结算 End-->

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
                    <div class="nf-icon nf-icon-wx" rel="nofollow" btnname="微信按钮" data-toggle="modal" data-target="#wxModal"></div>
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
                <a href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action" target="_blank" class=" last-child" rel="nofollow">增值电信业务经营许可证：京ICP证000001号</a>
            </p>
            <p><a style="padding-left: 0" href="https://www.zaozuo.com/">贵美</a>官网-全球设计师创作<a style="padding-left: 0" href="https://www.zaozuo.com/">家居品牌</a>
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

<!--新增地址弹窗-->
<div class="modal fade " id="addAddressModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">添加收货地址</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-box clearfixed" id="provincesSelect">
                    <select required="" id="s_province" name="s_province"><option value="">省</option></select>
                    <select class="middle" required="" id="s_city" name="s_city"><option value="" disabled="" selected="" hidden="">市</option></select>
                    <select required="" id="s_county" name="s_county"><option value="" disabled="" selected="" hidden="">区/县</option></select>
                </div>

                <div class="form-box clearfixed">
                    <input type="text" placeholder="详细地址" id="address_text" class="address-input">
                </div>

                <h4 id="second">添加收货人信息</h4>

                <div class="form-box clearfixed">
                    <input type="text" id="receipt_name" placeholder="收货人姓名">
                    <input type="text" id="receipt_phone" placeholder="收货人手机号码">
                </div>

                <div class="form-box clearfixed">
                    <div class="pop-set-default" id="pop_set_default"><i class="icon_zaozuosvg_tick"></i><span>设为默认地址</span></div>
                    <div class="greenbg-btn new-address-btn mt-40" id="addr-save" data-dismiss="modal">保存并使用</div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--新增地址弹窗 End-->

<!--微信分享弹窗-->
<div class="modal fade" id="wxModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
        payBoxScroll();

        var $province;
        var $city;
        var $county;
        var $address;
        var $name;
        var $phone;

        $('#addr-save').click(function () {
            console.log("123456");
            $province = $('#s_province option:selected').val();
            $city = $('#s_city option:selected').val();
            $county = $('#s_county option:selected').val();
            console.log("省："+$province+"市："+$city+"区："+$county);
            $address = $('#address_text').val();
            console.log("详细地址："+$address);
            $name = $('#receipt_name').val();
            $phone = $('#receipt_phone').val();
            console.log("收货人姓名："+$name+"收货人电话："+$phone);

            $('.name').text($name);
            $('.en').text($phone);
            $('#address_show').find('span:eq(2)').text($province+$city+$county);
            $('#address_show').find('span:last').text($address);
            $('#address_show').show();
        });

        //点击结算后,封装信息到controller处理
        $('#confirm_order').click(function () {
            $.get('goods/submitOrder.do',{province:$province,city:$city,county:$county,
                address:$address,name:$name,phone:$phone},function (res) {
                if (res.result) {
                    swal({
                        title: "成功！",
                        text: "商品已结算"
                    });
                }else {
                    swal({
                        title: "失败",
                        text: "商品结算失败！",
                        type: "error"
                    });
                }
            },'json');
        });
    });

    //结算栏定位
    var payBoxScroll = function() {
        var o = $(window),
            e = $('.sure-pay-wrapper'),
            i = function () {
                var i = o.height(),
                    n = $(document).outerHeight(),
                    r = $('.newfooter').outerHeight(),
                    s = o.scrollTop();
                if (s >= n - r - i){
                    e.addClass('sure-pay-wrapper-nofixed');
                    $("#receipt_wrapper").removeClass('mb-5');
                } else {
                    e.removeClass('sure-pay-wrapper-nofixed');
                    $("#receipt_wrapper").addClass('mb-5');
                }
            };

        return o.on('scroll',function () {
            i()
        }),{
            init:function () {
                i()
            }
        }
    };
</script>
</body>
</html>
