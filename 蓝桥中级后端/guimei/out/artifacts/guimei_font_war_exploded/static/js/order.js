$(function () {
    tagsRelatedFunction();
    tagsHighLight();
    scrollToShowTop();
    clickTochangeClass();
    selfInfo();
    $('#provincesSelect').provinceCity();
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
        var $imgname2 = $imgname.replace('.png', '_light.png');
        $img.attr('src', $imgname2);
    }, function () {
        var $img = $(this).find('.tag-img');
        var $imgname = $img.attr('src');
        var $imgname2 = $imgname.replace('_light.png', '.png');
        $img.attr('src', $imgname2);
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

//城市联级选择
$.fn.provinceCity = function(){
  var $self = this;

  var $sProvince = $('#s_province');
  var $sCity = $('#s_city');
  var $sCounty = $('#s_county');

  var index1 = '';

  $.each(GP,function (index,data) {
        $sProvince.append("<option value='"+data+"'>"+data+"</option>");
    });

  $sProvince.change(function () {
      $sCity[0].options.length = 0;
      $sCounty[0].options.length = 0;

      index1 = this.selectedIndex;

      if (index1 !== 0){
          $.each(GT[index1-1],function (index, data) {
              $sCity.append("<option value='"+data+"'>"+data+"</option>");
          });
          $.each(GC[index1-1][0],function (index, data) {
              $sCounty.append("<option value='"+data+"'>"+data+"</option>");
          })
      }

  }).change();

  var index2 = '';
  $sCity.change(function () {
      $sCounty[0].options.length = 0;
      index2 = this.selectedIndex;
      $.each(GC[index1-1][index2],function (index, data) {
          $sCounty.append("<option value='"+data+"'>"+data+"</option>");
      })
  });
  return $self;
};

//点击按钮切换样式
function clickTochangeClass() {
    $('.icon_zaozuosvg_tick').click(function () {
        if ($(this).parents('.radio').hasClass('radio-click')) {
            $(this).parents('.radio').removeClass('radio-click');
        }else {
            $(this).parents('.radio').addClass('radio-click');
        }
    });
}

//登录后显示用户导航栏
function selfInfo() {
    $('.selfinfo,.userbar').hover(function () {
        if ($(this).next('.userbar').is(':hidden')) {
            $(this).next('.userbar').hide();
        }else {
            $(this).next('.userbar').show();
        }

    });
}