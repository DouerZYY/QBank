<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<base href="http://localhost:8080/qbank/template/shop/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="快借宝，快借宝网站,理财,贷款">
<meta name="description" content="网络银行、在线理财">
<title>行业新闻</title>
<!-- Global CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css"
	href="css/owl-carousel/owl.carousel.css">
</head>

<body style="overflow-x: hidden;">
	<%@include file="common/header1.jsp" %>
	<div id="container" class="ui-container">
		<div id="pt" class="bm cl">
			<div class="z">
				<span class="marginR10">您所在的位置:</span><a
					href="/qbank/shop/index!index.action">首页</a> <em
					class="marginL10 marginR10">>></em> <a
					href="/qbank/shop/media_report!index.action">新闻中心</a>
			</div>
		</div>
		<div class="main">
			<div class="row">
				<div class="SSbankNav">
					<ul class="SSbankNavContainer">
						<li><a class="" href="/qbank/shop/media_reports!index.action">媒体报道</a></li>
						<li><a class="lt-nav-cur" href="javascript:void(0)">行业新闻</a></li>
						<li><a class="" href="javascript:void(0)">公司新闻</a></li>
						<li><a class="" href="javascript:void(0)">最新动态</a></li>
						<li><a class="" href="javascript:void(0)">网站公告</a></li>
					</ul>
				</div>
				<div id="content" class="with-sidebar article">
					<div class="about_notice">
						<div class="tt">行业新闻</div>
						<div class="cn">
							<ul>
								<c:forEach items="${articleList }" var="article" varStatus="vs">
									<li><a class="left"
										href="/qbank/shop/news_detail!index.action?id=${article.id}">${article.articleTitle}</a>
										<span class="left"><fmt:formatDate
												value="${article.modifyDate}" /></span></li>
								</c:forEach>
							</ul>
							<div class="page">
								<a href="javascript:;">首页</a><a href="javascript:;">上一页</a><a href="javascript:;">1</a><a
									href="javascript:void(0)" class="active">2</a><a href="javascript:;">3</a><a
									href="javascript:;">4</a><a href="javascript:;">5</a><a href="javascript:;">6</a><a href="javascript:;">7</a><a
									href="javascript:;">下一页</a><a href="javascript:;">尾页</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="common/footer.jsp"%>
	<%@include file="common/login_modal.jsp"%>
	<%@include file="common/signup_modal.jsp"%>
	<!-- Javascript -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="css/owl-carousel/owl.carousel.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="js/owl-carousel.js"></script>
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
