$(function () {
    tagsRelatedFunction();
    tagsHighLight();
    filterHighLight();
    goodsHover();
    scrollToShowTop();
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

/*导航栏选中高亮*/
var tagsHighLight = function () {
    $('.navigator-bar > li > ul > li').hover(function () {
        var $img = $(this).find('.tag-img');
        var $imgname = $img.attr('src');
        var $imgname2 = $imgname.replace('.png','_light.png');
        $img.attr('src',$imgname2);
    }, function () {
        var $img = $(this).find('.tag-img');
        var $imgname = $img.attr('src');
        var $imgname2 = $imgname.replace('_light.png','.png');
        $img.attr('src',$imgname2);
    });
};

/*过滤器选中高亮*/
var filterHighLight = function () {
    $('#ptag-ul-click > li').hover(function () {
        var $img = $(this).find('.tag-img');
        var $imgname = $img.attr('src');
        var $imgname2 = $imgname.replace('.png','_light.png');
        $img.attr('src',$imgname2);
    }, function () {
        var $img = $(this).find('.tag-img');
        var $imgname = $img.attr('src');
        var $imgname2 = $imgname.replace('_light.png','.png');
        $img.attr('src',$imgname2);
    });
};

/*鼠标移到商品上显示简介*/
var goodsHover = function(){
    $(document).on("mouseover mouseout", ".index-goods-box > a > .index-goods-img-hover", function(e) {
        var i = $(this).closest(".index-goods-box")
            , o = i.find(".index-goods-layer")
            , n = i.find("#price")
            , s = i.find(".index-goods-img-hover");
        return i.hasClass("nohover") ? !1 : void ("mouseover" === e.type ? (
            n.stop().animate({
                opacity: "0"
            }, {
                duration: 200,
                easing: "swing"
            }),
                o.stop().animate({
                    opacity: "1"
                }, {
                    duration: 200,
                    easing: "swing"
                }),
                s.stop().animate({
                    opacity: "1"
                }, {
                    duration: 200,
                    easing: "swing"
                })) : "mouseout" === e.type && (
            o.stop().animate({
                opacity: "0"
            }, {
                duration: 200,
                easing: "swing"
            }),
                s.stop().animate({
                    opacity: "0"
                }, {
                    duration: 200,
                    easing: "swing"
                }),
                n.stop().animate({
                    opacity: "1"
                }, {
                    duration: 200,
                    easing: "swing"
                })))
    })
};

/*侧边悬浮窗滚动时出现返回顶部*/
var scrollToShowTop = function () {
    var $window = $(window);
    $window.scroll(function () {
        if($(document).scrollTop() >= 300){
            $('.icon-70-top').attr('style','display:block;');
        }else {
            $('.icon-70-top').attr('style','display:none;');
        }
    })
};