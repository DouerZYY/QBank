<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
<base href="http://localhost:8080/qbank/template/shop/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="keywords" content="快借宝，快借宝网站,理财,贷款"/>
<meta name="description" content="网络银行、在线理财"/>
<title>媒体报道</title> <!-- Global CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/global.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/owl-carousel/owl.carousel.css"/>
</head>

<body style="overflow-x: hidden;">
	<%@include file="common/header1.jsp" %>
	<div id="container" class="ui-container">
		<div id="pt" class="bm cl">
			<div class="z">
				<span class="marginR10">您所在的位置:</span><a
					href="/qbank/shop/index!index.action">首页</a> <em
					class="marginL10 marginR10">>></em> <a
					href="/qbank/shop/media_reports!index.action">新闻中心</a>
			</div>
		</div>
		<div class="main">
			<div class="row">
				<div class="SSbankNav">
				<input type="hidden" id="types" value="${type}" />
					<ul class="SSbankNavContainer">
					
					<c:forEach items="${listTitle}" var="articletype" varStatus="vs">
						<li><a class="lt-nav" id="${articletype.artTypeCode}" href="/qbank/shop/article!news.action?type=${articletype.artTypeCode}">${articletype.typeName }</a></li>
					</c:forEach>
					</ul>
				</div>
				<div id="content" class="with-sidebar article">
					<div class="about_media">
						<div class="tt" id="title">
						${typeName }
						</div>
						<div class="cn">
							<ul>
								<c:forEach items="${articleList}" var="article" varStatus="vs">
									<li><a
										href="/qbank/shop/article!detail.action?id=${article.id}"><img
											src="/qbank${article.pictureUrl}" /> </a>
										<div class="left">
											<a
												href="/qbank/shop/article!detail.action?id=${article.id}">
												<strong>${article.articleTitle}</strong><span><fmt:formatDate
														value="${article.modifyDate}" /> </span>
											</a>
											<p></p>
											
											
										</div></li>
								</c:forEach>
							</ul>
						</div>
						<div class="page">
							<a href="#">首页</a><a href="#">上一页</a><a
								href="#">下一页</a><a href="#">尾页</a>
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
            var type = $("#types").val();
            $("#"+type).removeClass().addClass("lt-nav-cur");
           //$(".tt").text(type);
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
