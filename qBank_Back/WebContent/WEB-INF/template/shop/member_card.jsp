<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page  import="java.util.*" %>
<%@page  import="java.text.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
	<base href="http://localhost:8080/qbank/template/shop/" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="快借宝，快借宝网站,理财,贷款">
    <meta name="description" content="网络银行、在线理财">
    <title>我的银行卡</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<%
	DateFormat df = DateFormat.getDateInstance();
%>

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
            
                        <div class="blank0"></div>
                        <div class="SortBySelectTab">
                            <ul>
                       <!--          <li class="active">全部</li>
                                <li>充值</li>
                                <li>提现</li>
                                <li>投资</li> -->
                                <!-- <li>收益</li> -->
                            </ul>
                        </div>
                        <div class="blank0"></div>
                        <!--近期交易开始-->
                        <div>
                            <div class="PerProductListTitleNew">
                                <div class="left w140 marginL10 marginR30"><span>交易时间</span></div>
                                <div class="left w140 marginR10"><span>银行</span></div>
                                <div class="left w120 marginR10"><span>卡号</span></div>
                                <div class="left w120 marginR10"><span>姓名</span></div>
                                <div class="left w400 marginR10"><span>电话</span></div>
                            </div>
                            <div class="PerProductListNew">
                                <ul>
                  				<c:forEach items="${cardList}" var="accountRecord" varStatus="vs">
                                    <li>
                                        <div class="left w140 marginR30"><fmt:formatDate value="${accountRecord.createDate}" pattern="yyyy-MM-dd" /></div>
                                        <div class="left w140">${accountRecord.bank}
                                        </div>
                                        <div class="left w120 marginL10">${accountRecord.cardNumber}</div>
                                        <div class="left w120 marginL10">${accountRecord.name}</div>
                                        <div class="left w120 marginL10">${accountRecord.phone}</div>
                                    </li>   
                                </c:forEach>
                                <c:if test="${empty cardList}">
                                <li style=" text-align: center;">还没有绑定银行卡哦</li>
                                </c:if>
                                </ul>
                            </div>
                        </div>
                        <!--近期交易结束-->
                        <div class="page"><a href="#">首页</a><a href="#">上一页</a><a href="#">下一页</a><a href="#">尾页</a></div>
                        <div class="blank0"></div>
                    </div>
                    <!--消息结束-->
                </div>
            </div>
            <div class="blank0"></div>
        </div>
        <%@include file="common/footer.jsp" %>
        <!-- Javascript -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- JS Page Level -->
        <script type="text/javascript" src="js/NavScroll.js"></script>
        <script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
        <script type="text/javascript" src="js/SortBy.js"></script>
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
        $(function() {

            $(".btn-slide").click(function() {
                $(".PanelSortBy").slideToggle(0);
                $(this).toggleClass("active");
                return false;
            });


        });
        </script>
        <script type="text/javascript">
        jQuery("#nav").slide({
            defaultIndex: "2",
            titCell: "#navs dt",
            mainCell: "#menu"
        });
        </script>
        <script>
			$("#3").addClass("active").siblings().removeClass("active");
			$("#index").addClass("active").siblings().removeClass("active");
		</script>
</body>

</html>
