$(function () {
    tagsRelatedFunction();
    tagsHighLight();
    scrollToShowTop();
    count();
});

/*导航栏选中显示分类div*/
var tagsRelatedFunction = function () {
    $('.navigator-bar > li').hover(function () {
        var $me = $(this),
            $tags = $me.find('ul'),
            $div = $me.find('div');
        $tags.addClass('show');
        $div.addClass('hover').siblings('li').removeClass('hover');
    }, function () {
        var $me = $(this),
            $tags = $me.find('ul'),
            $div = $me.find('div');
        $tags.removeClass('show');
        $div.removeClass('hover');
    });
};

/*侧边悬浮窗滚动时出现返回顶部*/
var scrollToShowTop = function () {
    var $window = $(window);
    $window.scroll(function () {
        if ($(document).scrollTop() >= 200) {
            $('.icon-70-top').attr('style', 'display:block;');
        } else {
            $('.icon-70-top').attr('style', 'display:none;');
        }
    })
};

/*导航栏选中高亮*/
var tagsHighLight = function () {
    $('.navigator-bar > li > ul > li').hover(function () {
        var $img = $(this).find('.tag-img');
        var $imgname = $img.attr('src');
        var $imgname2 = $imgname.replace('.png', '_light.png');
        $img.attr('src', $imgname2);
    }, function () {
        var $img = $(this).find('.tag-img');
        var $imgname = $img.attr('src');
        var $imgname2 = $imgname.replace('_light.png', '.png');
        $img.attr('src', $imgname2);
    });
};

var count = function () {
    var $dom = $(document);

    var $allCheck = $('.radio');                            //全部的选择按钮
    var $checkAll = $('#checked_item');                     //全选按钮
    var $cartbox = $('.cart-box');                          //每个商品
    var $check = $('.radio').not('#checked_item'); //每个商品下的单选按钮

    //选择与不选择
    $allCheck.click(function () {
        if ($(this).hasClass('radio-click')) {
            $(this).removeClass('radio-click');
        } else {
            $(this).addClass('radio-click');
        }
        totalMoney();
    });

    //全选
    $checkAll.click(function () {
        var $checkBox = $cartbox.find('.radio');
        if ($(this).hasClass('radio-click')) {
            $checkBox.addClass('radio-click');
        } else {
            $checkBox.removeClass('radio-click');
        }
        totalMoney();
    });

    // console.log($allCheck);

    //全选时取消单选，同时取消全选
    $check.each(function () {
        $(this).click(function () {
            if ($(this).hasClass('radio-click')) {
                var length = $check.length;
                var num = 0;

                $check.each(function () {
                    if ($(this).hasClass('radio-click')) {
                        num++;
                    }
                });

                if (num === length) {
                    $checkAll.addClass('radio-click');
                }
            } else {
                $checkAll.removeClass('radio-click');
            }
        })
        totalMoney();
    });

    var $add = $('.add-btn');
    var $reduce = $('.reduce-btn');
    var $total = $('.total-val');

    //增加数量
    $add.click(function () {
        var $thisTotal = $(this).prev('.total-val');
        var $count = parseInt($thisTotal.text()) + 1;
        var $sumPriceObj = $(this).parents('.cart-box').find('.ga-cartprice');
        var $price = $(this).parents('.cart-box').find('.price').html();
        var $sumPrice = $count * parseInt($price.substring(1));

        $thisTotal.text($count);
        $sumPriceObj.text('¥' + $sumPrice);
        totalMoney();
    });

    //减少数量
    $reduce.click(function () {
        var $thisTotal = $(this).next('.total-val');
        var $count = parseInt($thisTotal.text()) - 1;
        var $sumPriceObj = $(this).parents('.cart-box').find('.ga-cartprice');
        var $price = $(this).parents('.cart-box').find('.price').html();
        var $sumPrice = $count * parseInt($price.substring(1));

        if ($thisTotal.text() > 1) {
            $thisTotal.text($count);
            $sumPriceObj.text('¥' + $sumPrice);
        }
        totalMoney();
    });

    //结算栏统计数据
    function totalMoney() {
        var total_money = 0;
        var total_count = 0;

        $check.each(function () {
            if ($(this).hasClass('radio-click')) {
                var money = parseInt($(this).parents('.cart-box').find('.ga-cartprice').html().substring(1));
                var count = parseInt($(this).parents('.cart-box').find('.total-val').text());

                total_money += money;
                total_count += count;
            }
            $('.radio').find('em').text(total_count);
            $('.cart-price-pay').find('i').text(total_money);
        })
    }

    //点击修改按钮弹出模态框
    $('.cart-edit-btn').click(function () {
        $(this).next('.cart-edit-popbox').empty().append(
            `<div class="cart-edit-closebtn"></div>
                <div class="item-quickbuy clearfixed item-buy-box">
                    <div class="itemimgs-show">
                        <dl class="itemimgs-big">
                            <dt>
                                <!--商品图片-->
                                <img class="small" src="#">
                            </dt>
                        </dl>
                    </div>
                    <div class="itembuy-styles-box">
                        <div class="styles-box">
                            <div class="buygoods-total" style="display: block;">
                                <span>¥</span>
                                <em class="now">1599</em>
                                <i style="display: none;">起</i>

                            </div>
                            <!-- 预计发货时间 -->
                            <div class="stock-title yuji clearfixed nostock-title" id="stock_full"
                                 style="display: block;">
                                <span class="bb">今天下单，将于2019-08-18前发货，大件家具会致电确认</span>
                            </div>

                            <p style="display: none;">
                                <span id="sku-price">1599元</span>
                                <span id="sku-price-origin" style="display:none;">1599元</span>

                            </p>

                            <div class="styles-wrapper">
                                <div class="styles-error-box" style="display: none;">
                                    <div class="styles-error-closebtn">X</div>
                                    <p>请选择商品信息</p>
                                </div>
                                <dl class="last-child clearfixed model-title">
                                    <dt><span>颜色</span></dt>
                                    <dd class="clearfixed">
                                        <!--如果已下架则用"model-box-false"样式-->
                                        <!--如果已选中则用"model-box-click selected"样式-->
                                        <div type="button" class="model-box zz-option" title="米黄">米黄</div>
                                        <div type="button" class="model-box zz-option model-box-click selected" title="咖棕">咖棕</div>
                                    </dd>
                                </dl>
                                <dl class="last-child clearfixed model-title">
                                    <dt><span>款型</span></dt>
                                    <dd class="clearfixed">
                                        <!--如果已下架则用"model-box-false"样式-->
                                        <!--如果已选中则用"model-box-click selected"样式-->
                                        <div type="button" class="model-box zz-option model-box-false" title="转角大三人座">转角大三人座</div>                                                                                                                                  
                                        <div type="button" class="model-box zz-option" title="单人座">单人座</div>
                                    </dd>
                                </dl>
                                <dl class="last-child clearfixed model-title">
                                    <dt><span>类别</span></dt>
                                    <dd class="clearfixed">
                                        <!--如果已下架则用"model-box-false"样式-->
                                        <!--如果已选中则用"model-box-click selected"样式-->
                                        <div type="button" class="model-box zz-option" title="沙发套">
                                            沙发套
                                        </div>
                                        <div type="button"
                                             class="model-box zz-option model-box-false" title="沙发">
                                            沙发
                                        </div>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="cart-edit-surebtn">确认修改</div>
                    </div>
                </div>
            </div> <!--修改弹出模态框 End-->
            <script>
                $(function() {
                    //关闭模态框
                    $('.cart-edit-closebtn').click(function () {
                        $(this).parents('.cart-edit-popbox').hide(300);
                    });
                    
                    //款式选择
                    $('.zz-option').click(function() {
                        if ($(this).hasClass('model-box-click')) {
                            $(this).removeClass('model-box-click','selected');
                        }else {
                            $(this).addClass('model-box-click','selected');
                            $(this).siblings('.zz-option').removeClass('model-box-click','selected');
                        }
                    });
                })
            </script>`
        ).show(300);
    });

    //删除商品
    $('.cart_delete_btn').click(function () {
        $(this).parents('.cart-box').remove();
        totalMoney();
    });
};