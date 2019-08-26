$(function () {
    tagsRelatedFunction();
    titleTagsRelatedFunction();
    tagsHighLight();
	goodsHover();
    scrollToShow();
    scrollToShowTop();
    selfInfo();
});

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

/*导航栏在滚动界面时切换样式*/
var scrollToShow = function(){
    var $window = $(window);
    $window.scroll(function () {
        if($(document).scrollTop() >= 200){
            $('.preheating-header-black').addClass('show-panel');
        }else {
            $('.preheating-header-black').removeClass('show-panel');
        }
    })
};

/*标题栏选中显示分类div*/
var titleTagsRelatedFunction = function () {
    $('.navigator-wrapper > li').hover(function () {
        var $me = $(this),
            $tags = $me.find('ul'),
            $div = $me.find('div');
        $tags.attr('style','display:block;');
    }, function () {
        var $me = $(this),
            $tags = $me.find('ul'),
            $div = $me.find('div');
        $tags.attr('style','display:none;');
    });
};

/*侧边悬浮窗滚动时出现返回顶部*/
var scrollToShowTop = function () {
    var $window = $(window);
    $window.scroll(function () {
        if($(document).scrollTop() >= 500){
            $('.icon-70-top').attr('style','display:block;');
        }else {
            $('.icon-70-top').attr('style','display:none;');
        }
    })
};

//导航栏登录后显示用户导航栏
function selfInfo() {
    $('.selfinfo,.userbar').hover(function () {
        if ($(this).next('.userbar').is(':hidden')) {
            $(this).next('.userbar').hide();
        }else {
            $(this).next('.userbar').show();
        }

    });
}