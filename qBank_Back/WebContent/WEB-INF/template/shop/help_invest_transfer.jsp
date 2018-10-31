<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
	<base href="http://localhost:8080/qbank/template/shop/" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="快借宝，快借宝网站,理财,银行，贷款">
    <meta name="description" content="网络银行、在线理财">
    <title>投资与转让</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/Help.css" />
</head>

<body style="overflow-x: hidden;">
    <%@include file="common/header1.jsp" %>
    <div id="pt" class="bm cl">
        <div class="z">
            <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em class="marginL10 marginR10">>></em> <a href="javascript:;">投资与转让</a>
        </div>
    </div>
    <div class="screen first">
        <div class="bottom">
            <div class="star">
            </div>
        </div>
        <div class="center"></div>
    </div>
    <div class="middle">
        <div class="line"></div>
        <div class="automiddle">
            <div class="m1"></div>
            <div class="m2"></div>
            <div class="m3"></div>
            <div class="m4"></div>
            <div class="m5-cover"></div>
            <div class="m5"></div>
        </div>
        <div class="bottom">
            <div class="star">
            </div>
        </div>
    </div>
    <div class="screen more">
        <div class="center2">
            <a href="/qbank/shop/product!index.action" class="hover"></a>
        </div>
    </div>
    <div class="tip">
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
    </div>
    <%@include file="common/footer.jsp" %>
    <%@include file="common/login_modal.jsp" %>
    <%@include file="common/signup_modal.jsp" %>
    <ul id="side-bar" class="side-pannel side-bar">
        <a href="javascript:;" class="gotop" style="display:none;">
            <s class="g-icon-top"></s>
        </a>
    </ul>
    <!-- Javascript -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- JS Page Level -->
    <script>
    (function() {
        var n = 0;
        $(window).scroll(function() {
            if (n == 0 && $(window).scrollTop() > 150) {
                n = 1;
                $('.line').show().animate({
                    'height': '1800'
                }, 1000, function() {
                    $('.automiddle div').each(function() {
                        var _this = this;
                        var top = parseInt($(this).css('top').replace('px', ''));
                        $(_this).css({
                            'top': top - 100
                        }).animate({
                            'top': top + 30,
                            'opacity': '0.6'
                        }, 600, function() {
                            $(_this).animate({
                                'top': top - 10,
                                'opacity': '0.8'
                            }, 200, function() {
                                $(_this).animate({
                                    'top': top,
                                    'opacity': '1'
                                }, 200);
                            })
                        })
                    });
                });
            }
            if ($(window).scrollTop() < $(window).height() / 2) {
                $('.tip').css({
                    'background-position': '-6px 0'
                });
            } else if ($(window).scrollTop() < $(window).height() / 2 + 1800 && $(window).scrollTop() >= $(window).height() / 2) {
                $('.tip').css({
                    'background-position': '-36px 0'
                });
            } else {
                $('.tip').css({
                    'background-position': '-68px -3px'
                });
            }
        })

        $(window).resize(function() {
            $('.screen,.center,.center2').css({
                'height': $(window).height() - 126
            });
            $('.line').css('left', $(window).width() / 2);
            $('.hover').css('top', $(window).height() / 2 - 56);
        }).resize();
        setInterval(function() {
            $('.star').animate({
                'margin-top': '38px'
            }, 1000, function() {
                $('.star').css('margin-top', '16px');
            })
        }, 1000);
        var b = $('.bottom');
        b.eq(0).click(function() {
            $('html,body').animate({
                'scrollTop': $(window).height()
            }, 1000);
        })
        b.eq(1).click(function() {
            $('html,body').animate({
                'scrollTop': $(window).height() + 1800
            }, 1000);
        })
        $('.center2 a').click(function() {
            external.AppCmd(external.GetSID(window), "", "main.openurl", "chrome://newtab", "1.0", function(r, s) {
                window.opener = null;
                window.open('', '_self');
                window.close();
            })
        })
        $('.tip a').click(function() {
            var i = $(this).index();
            if (i == 0) {
                $('html,body').stop(true, true).animate({
                    'scrollTop': 0
                }, 1000);
            } else if (i == 1) {
                $('html,body').stop(true, true).animate({
                    'scrollTop': $(window).height()
                }, 1000);
            } else if (i == 2) {
                $('html,body').stop(true, true).animate({
                    'scrollTop': $(window).height() + 1800
                }, 1000);
            }
        })

        $('html,body').animate({
            'scrollTop': '37px'
        }, 100);
    })()
    </script>
    <script type="text/javascript">
    $(function() {
        $(window).scroll(function() {
            if ($(window).scrollTop() > 100) {
                $("#side-bar .gotop").fadeIn();
            } else {
                $("#side-bar .gotop").hide();
            }
        });
        $("#side-bar .gotop").click(function() {
            $('html,body').animate({
                'scrollTop': 0
            }, 500);
        });
    });
    </script>
    <script>
			$("#index").addClass("active").siblings().removeClass("active");
		</script>
</body>

</html>
