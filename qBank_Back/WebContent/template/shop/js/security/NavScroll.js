// JavaScript Document
jQuery(function($) {
  // 显示Tab 标签
  var fixedLayer;
  (fixedLayer = function() {
    if ($(window).scrollTop() > 
      $('.PosFixed').map(function() {
        return $(this).offset().top - 118;
      })[0]) 
    {
      return $('.fix-layer').fadeIn(0);
    } else {
      return $('.fix-layer').fadeOut(0);
    }
  })();
  
  $(window).scroll(function() {
    clearTimeout(fixedLayer.timer);
    return fixedLayer.timer = setTimeout(fixedLayer, 50);
  });
  
    var rightsidebar;
    (rightsidebar = function() {
      var scrollBottom = $(document).height() - $(window).height() - $(window).scrollTop();
    if ($(window).scrollTop() > $('.PosFixed2').map(function() {
      return $(this).offset().top - 100;
    })[0]) 
    {
      $('#show_corp_img').hide();
      $('#hide_corp_img').show();
      if(scrollBottom > 498) {
        return $('.rightsidebar').fadeIn(0);
      }
    } else {
      $('#hide_corp_img').hide();
      $('#show_corp_img').show();
      return $('.rightsidebar').fadeOut(0);
    }
    })();
    
    $(window).scroll(function() {
      clearTimeout(rightsidebar.timer);
      return rightsidebar.timer = setTimeout(rightsidebar, 50);
    });
 
    var rightsidebar2;
    (rightsidebar2 = function() {
      var scrollBottom = $(document).height() - $(window).height() - $(window).scrollTop();
    if ($(window).scrollTop() > $('.PosFixed2').map(function() {
      return $(this).offset().top - 100;
    })[0]) {
      $('#show_corp_info').hide();
      $('#hide_corp_info').show();
      if(scrollBottom > 498) {
        return $('.rightsidebar2').fadeIn(0);
      }
    } else {
      $('#show_corp_info').show(300);
      $('#hide_corp_info').hide(300);
      return $('.rightsidebar2').fadeOut(0);
    }
    })();
    
    $(window).scroll(function() {
      /*var height = $(document).height();
    var fixedHeight = $('#hide_corp_info').height() + 88;
    sideTop = height - fixedHeight,
    //top = $(window).scrollTop();
    $('#hide_corp_info').css({position: "fixed", top:(88 - ($(window).scrollTop() - sideTop))+"px"});*/
    clearTimeout(rightsidebar2.timer);
    return rightsidebar2.timer = setTimeout(rightsidebar2, 50);
    });

    var fixedrongzi;
    (fixedrongzi = function() {
    if ($(window).scrollTop() > $('.location').map(function() {
      return $(this).offset().top - 0;
    })[0]) {
      return $('.fix-rongzi').fadeIn(0);
    } else {
      return $('.fix-rongzi').fadeOut(0);
    }
    })();
    $(window).scroll(function() {
      clearTimeout(fixedrongzi.timer);
      return fixedrongzi.timer = setTimeout(fixedrongzi, 50);
    });

});

!function(n) {
    "use strict";
    window.nifty = {
        container: n("#container"),
        contentContainer: n("#content-container"),
        navbar: n("#navbar"),
        mainNav: n("#mainnav-container"),
        aside: n("#aside-container"),
        footer: n("#footer"),
        scrollTop: n("#scroll-top"),
        window: n(window),
        body: n("body"),
        bodyHtml: n("body, html"),
        document: n(document),
        screenSize: "",
        isMobile: function() {
            return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
        } (),
        randomInt: function(n, t) {
            return Math.floor(Math.random() * (t - n + 1) + n);
        },
        transition: function() {
            var n = document.body || document.documentElement,
            t = n.style,
            e = void 0 !== t.transition || void 0 !== t.WebkitTransition;
            return e;
        } ()
    },
    nifty.window.on("load", 
    function() {
        var t = n(".add-tooltip");
        t.length && t.tooltip();
        var e = n(".add-popover");
        e.length && e.popover();
        var i = n(".nano");
        i.length && i.nanoScroller({
            preventPageScrolling: !0
        }),
        n("#navbar-container .navbar-top-links").on("shown.bs.dropdown", ".dropdown", 
        function() {
            n(this).find(".nano").nanoScroller({
                preventPageScrolling: !0
            });
        }),
        nifty.body.addClass("nifty-ready");
    });
} (jQuery);



$(function(){
  //最后一个没有边框
  $("nav dl:last,.shouyi dl:last").css("border","0");
  /**
  //安全设置 手机号码下一步  
  $(".sjyz-one-next").click(function(){
    $(this).parents("form").next(".sjyz-two").show();
    $(this).parents(".sjyz-one").hide();
    $(this).parents("dd").find(".Step li:eq(1)").addClass("stepCur");
    })  
  $(".sjyz-two-next").click(function(){
    $(this).parents(".sjyz-two").hide();
    $(this).parents("form").prev(".sjyz-one").hide();
    $(this).parents("dd").find(".sjyz-ok").show();
    $(this).parents("dd").find(".Step li:eq(2)").addClass("stepCur");
    })    
  **/
  // 安全设置 点击展开收起效果  
  $(".modify").click(function(){
    $(this).parents("dt").next("dd").toggle().siblings("dd").hide();
    });
  });
  
function next() {
  document.write("<a href='javascript:history.go(-1)'>后退</a>   &nbsp;&nbsp;<a href='javascript:history.go(0)'>刷新</a>&nbsp;&nbsp;<a href='javascript:history.go(1)'>前进</a>   <form>   <input name='ht' type='button' onclick='javascript:history.go(-1)' value='后退' />   <input name='sx' type='button' onclick='javascript:history.go(0)' value='刷新' />   <input name='qj' type='button' onclick='javascript:history.go(1)' value='前进' />   </form> ");
}

$(".user-drawings-bank dd").hover(function() {
  $(this).hasClass("user-drawings-add-bank") ? $(this).addClass("user-drawings-add-bank-hover") : $(this).addClass("hover");
}, function() {
  $(this).hasClass("user-drawings-add-bank") ? $(this).removeClass("user-drawings-add-bank-hover") : $(this).removeClass("hover");
});