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
    <title>帮助中心</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/owl-carousel/owl.carousel.css">
</head>

<body style="overflow-x: hidden;">
    <%@include file="common/header1.jsp" %>
    <div id="container" class="ui-container fade-in">
        <div id="pt" class="bm cl">
            <div class="z">
                <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em class="marginL10 marginR10">>></em> <a href="javascript:;">帮助中心</a>
            </div>
        </div>
        <div class="main">
            <ul>
                <li class="content-wrapper" style="height:500px;">
                    <div class="content fn-clear app">
                        <div class="HelpIcon2">
                            <ul>
                                <li>
                                    <div class="Icon3_2">
                                        <img src="images/Help_ICON_1.png" />
                                        <h3 class="table-center fB">注册与登录</h3>
                                        <p>注册与登录介绍内容注册与登录介绍内容注册与登录介绍内容</p>
                                        <a href="javascript:;" class="marginL33H link-button">了解详情</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="Icon3_2">
                                        <img src="images/Help_ICON_2.png" />
                                        <h3 class="table-center fB">认证与安全</h3>
                                        <p>注册与登录介绍内容注册与登录介绍内容注册与登录介绍内容</p>
                                        <a href="javascript:;" class="marginL33H link-button">了解详情</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="Icon3_2">
                                        <img src="images/Help_ICON_3.png" />
                                        <h3 class="table-center fB">充值与体验</h3>
                                        <p>注册与登录介绍内容注册与登录介绍内容注册与登录介绍内容</p>
                                        <a href="javascript:;" class="marginL33H link-button">了解详情</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="content-wrapper light-gray" style="height:500px;">
                    <div class="content fn-clear app">
                        <div class="HelpIcon2">
                            <ul>
                                <li>
                                    <div class="Icon3_2">
                                        <img src="images/Help_ICON_4.png" />
                                        <h3 class="table-center fB">投资与转让</h3>
                                        <p>注册与登录介绍内容注册与登录介绍内容注册与登录介绍内容</p>
                                        <a href="/qbank/shop/help_invest_transfer!index.action" class="marginL33H link-button">了解详情</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="Icon3_2">
                                        <img src="images/Help_ICON_5.png" />
                                        <h3 class="table-center fB">常见问题</h3>
                                        <p>注册与登录介绍内容注册与登录介绍内容注册与登录介绍内容</p>
                                        <a href="/qbank/shop/support_center!index.action" class="marginL33H link-button">了解详情</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="Icon3_2">
                                        <img src="images/Help_ICON_6.png" />
                                        <h3 class="table-center fB">工具箱</h3>
                                        <p>注册与登录介绍内容注册与登录介绍内容注册与登录介绍内容</p>
                                        <a href="javascript:;" class="marginL33H link-button">了解详情</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
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
    <script type="text/javascript">
    jQuery(document).ready(function() {
        OwlCarousel.initOwlCarousel();
    });
    </script>
    <script>
			$("#index").addClass("active").siblings().removeClass("active");
		</script>
</body>

</html>
