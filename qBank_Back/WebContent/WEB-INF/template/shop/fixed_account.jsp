<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
	<base href="http://localhost:8080/qbank/template/shop/" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!-- 我的理财->定期理财-->
    <meta name="keywords" content="快借宝，快借宝网站,理财,银行,贷款">
    <meta name="description" content="网络银行、在线理财">
    <title>定期理财</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body style="overflow-x: hidden;">
    <%@include file="common/header1.jsp" %>
    <div id="container" class="ui-container light-gray">
        <div id="pt" class="bm cl">
            <div class="z"> <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em class="marginL10 marginR10">>></em><a href="javascript:;">个人中心</a></div>
        </div>
        <div class="main">
            <div class="personal_info_banner">
                <div id="nav">
                    <%@include file="common/personal_nav.jsp" %>
                </div>
                <div style="margin:4px 0px;">
                    <div class="marginB60" style="height:100px;padding:20px">
                        <div class="left perisonDetail" style="margin-left:10px;">
                            <ul>
                                <li>
                                    <div class="blank40"></div>
                                    <div class="left marginR20 w200">
                                        <div class="gray2">当前本金</div>
                                        <span class="marginR4 f26px fB gray">759,284.00</span><span class="f12px gray2">元</span> </div>
                                    <div class="left marginR20 w200 ">
                                        <div class="gray2">已收收益</div>
                                        <span class="marginR4 f26px fB gray">759,284.00</span><span class="f12px gray2">元</span></div>
                                    <div class="left marginR20 w200">
                                        <div class="gray2">待收收益</div>
                                        <span class="marginR4 f26px fB gray">759,284.00</span><span class="f12px gray2">元</span></div>
                                    <div class="left marginR20 w200">
                                        <div class="gray2">累计收益</div>
                                        <span class="marginR4 f26px fB gray">759,284.00</span><span class="f12px gray2">元</span></div>
                                </li>
                            </ul>
                        </div>
                        <div class="blank50"></div>
                    </div>
                    <div class="blank0"></div>
                    <!--项目开始-->
                    <div class="perisonTitle">
                        <ul class="sortbar left">
                            <li class="active"><a href="javascript:;">所有项目</a></li>
                            <li><a href="javascript:;">理财中</a></li>
                            <li><a href="javascript:;">已完成</a></li>
                            <li style="border-right: 0px solid #ccc;"><a href="javascript:;">已退出</a></li>
                        </ul>
                        <div class="blank0"></div>
                    </div>
                    <div>
                        <div class="PerProductListTitleNew-2">
                            <div class="left w220 marginL10 marginR30"><span>项目名称</span></div>
                            <div class="left w100 marginR10"><span>投资时间</span></div>
                            <div class="left w100 marginR10"><span>到期日期</span></div>
                            <div class="left w150 marginR10"><span>应收</span></div>
                            <div class="left w80 marginR10"><span>状态</span></div>
                            <div class="left w220 marginR10"><span>操作</span></div>
                        </div>
                        <div class="PerProductListNew-2">
                            <ul>
                                <li>
                                    <div class="left w220 marginR30"><span>广告传媒公司融资项目(2期) (GZ1507301342)</span></div>
                                    <div class="left w100 marginR10"><span>2015-07-30 11:30：03</span></div>
                                    <div class="left w100 marginR10"><span>2015-11-30</span></div>
                                    <div class="left w150 marginR10">
                                        <div><span class="marginR4">本金</span><span>2345000.00</span></div>
                                        <div><span class="marginR4">利息</span><span>123.00</span></div>
                                    </div>
                                    <div class="left w80 marginR10"><span>正在付息</span></div>
                                    <div class="left w220 marginR10">
                                        <div class="left marginR10"><a href="javascript:;" class="btn6 btn-block btn-cta-primary">查看协议</a></div>
                                        <div class="left marginR10"><a href="javascript:;" class="btn6 btn-block btn-cta-primary">下载协议</a></div>
                                        <div class="left"><a href="#" class="btn6 btn-block btn-cta-primary" data-toggle="modal" data-target="#signup-modal">转让申请</a></div>
                                    </div>
                                </li>
                            </ul>
                            <div class="page"><a href="#">首页</a><a href="#">上一页</a><a href="#">1</a><a href="javascript:void(0)" class="active">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">下一页</a><a href="#">尾页</a></div>
                        </div>
                    </div>
                </div>
                <!--项目结束-->
            </div>
        </div>
        <div class="blank0"></div>
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
    <script type="text/javascript" src="js/NavScroll.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
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
    <script language="javascript">
    function animate() {
        $(".charts").each(function(i, item) {
            var a = parseInt($(item).attr("w"));
            $(item).animate({
                width: a + "%"
            }, 1000);
        });
    }
    animate();
    </script>
    <script type="text/javascript">
    jQuery("#nav").slide({
        defaultIndex: "1",
        titCell: "#navs dt",
        mainCell: "#menu"
    });
    </script>
    <script type="text/javascript">
    var $ = jQuery.noConflict();

    $(document).ready(function() {
        $('div.Title_personal').click(function() {
            if ($(this).hasClass('personalArrowOpen')) {
                //alert("1");
                $('div.Title_personal_dteail').slideUp('normal');
                $(this).removeClass('personalArrowOpen').addClass('personalArrowClose');
            } else {
                //alert("2");
                $('div.personalArrowOpen').removeClass('personalArrowOpen').addClass('personalArrowClose');
                $(this).removeClass('personalArrowClose').addClass('personalArrowOpen');
                $('div.Title_personal_dteail').slideUp('normal');
                $(this).prev().slideDown('normal');
            }


        });
    });
    </script>
    <script>
		$("#2").addClass("active").siblings().removeClass("active");
		$("#product").addClass("active").siblings().removeClass("active");
	</script>
</body>

</html>
