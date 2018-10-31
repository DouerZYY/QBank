<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
	<base href="http://localhost:8080/qbank/template/shop/" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="快借宝，快借宝网站,理财,银行,贷款">
    <meta name="description" content="网络银行、在线理财">
    <title>站点消息</title>
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
                    <!--消息开始-->
                    <div class="marginB20 Padding20">
                        <div class="mymessage_notice">
                            <div class="left">
                                
                            </div>
                            <div class="left marginL20"></div>
                            <div class="right"><span>未读消息：</span><span class="marginR20">${unReadAmount}0</span><span>累计消息：</span><span>${totalAmt }</span></div>
                            <div class="blank10"></div>
                            <div class="mymessage_title">
                                <div class="left">消息内容</div>
                                <div class="right marginR20">发送时间</div>
                            </div>
                            <div class="cn">
                                <ul>
                                <c:forEach items="${mailList}" var="mail" varStatus="vs"> 
                                    <li>
                                        <div class="top_message_Q" style="height:40px;">
                                            <span class="left marginL4 marginR10 email-icon"></span>
                                            <a class="left" href="javascript:;">${mail.title}</a>
                                            <span class="left">
                                            <fmt:formatDate value="${mail.createDate }" dateStyle="short"/>
                                            </span>
                                        </div>
                                        <div style=" padding:0px 30px 20px 56px;display:none" class="top_message_A">
                                         ${mail.content }   
                                         </div>
                                    </li>
                                  </c:forEach> 
                                  <c:if test="${ empty mailList}">
                                  <li style=" text-align: center;">暂无新的消息哦</li>
                                  </c:if>
                                    
                                </ul>
                                <div class="page"><a href="#">首页</a><a href="#">上一页</a><a href="#">下一页</a><a href="#">尾页</a></div>
                            </div>
                        </div>
                        <div class="blank0"></div>
                    </div>
                    <!--消息结束-->
                </div>
            </div>
            <div class="blank0"></div>
        </div>
        <%@include file="common/footer.jsp" %>
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
            defaultIndex: "3",
            titCell: "#navs dt",
            mainCell: "#menu"
        });
        </script>
        <script type="text/javascript">
        var $ = jQuery.noConflict();

        $(document).ready(function() {
            $('div.top_message_Q').click(function() {


                if ($(this).children().children().first().hasClass('SupportArrowOpen')) {
                    //alert("1");
                    $('div.top_message_A').slideUp('normal');
                    $(this).children().children().first().removeClass('SupportArrowOpen').addClass('SupportArrowClose');
                } else {
                    //alert("2");
                    $('div.SupportArrowOpen').removeClass('SupportArrowOpen').addClass('SupportArrowClose');
                    $(this).children().children().first().removeClass('SupportArrowClose').addClass('SupportArrowOpen');
                    $('div.top_message_A').slideUp('normal');
                    $(this).next().slideDown('normal');
                }


            });
        });
        </script>
        <script>
			$("#8").addClass("active").siblings().removeClass("active");
		</script>
</body>

</html>
