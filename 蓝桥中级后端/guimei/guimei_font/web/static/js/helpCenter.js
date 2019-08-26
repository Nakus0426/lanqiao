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

$(function () {
    tagsRelatedFunction();
    tagsHighLight();
    scrollToShowTop();
    selfInfo();
});