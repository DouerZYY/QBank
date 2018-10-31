
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>会员中心 -个人信息</title>
<meta name="Author" content="SHOP++ Team" />
<meta name="Copyright" content="SHOP++" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/global.css" />
<link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/style.css" />
<link href="/qbank/template/common/css/jquery.datepicker.css" rel="stylesheet" type="text/css" />
	<!--[if lte IE 6]>
	<script type="text/javascript" src="${base}/template/common/js/belatedPNG.js"></script>
	<script type="text/javascript">
		// 解决IE6透明PNG图片BUG
		DD_belatedPNG.fix(".belatedPNG");
	</script>
<![endif]-->
</head>
<body style="overflow-x: hidden;">
	<div class="header" style="height: 80px;">
		<%@include file="common/header1.jsp"%>
	</div>

	<div id="container" class="ui-container light-gray">
		<div id="pt" class="bm cl">
			<div class="z">
				<span class="marginR10">您所在的位置:</span><a href="index.html">首页</a> <em
					class="marginL10 marginR10"></em><a href="product.html">个人中心</a>
			</div>
		</div>
		<div class="main">
			<div class="personal_info_banner">
				<div id="nav">
                    <%@include file="common/personal_nav.jsp" %>
                </div>
				<!--个人信息开始-->
				<form id="validateForm" action="member!info.action" method="post">
				<div class="marginB40" style="height: 180px; padding: 20px">
					<div class="blank20"></div>
					<div class="left perisonDetail" style="margin-left: 20px;">
						<ul>
							<li>
								<div class=" marginB20">
									<span class="gray marginR4 fB"></span>
								</div>
							</li>
							<li>
								<div class="ProductDetailForm clearfix">
									<div
										style="margin-left: 70px; color: #e25353; line-height: 16px;"></div>
									<div
										class="left LineH30 f14px marginR10 w130 gray3 table-right">性别</div>
									<div class="left LineH30 f14px marginR10 w200 gray">
										<input type="radio" id="male" value="0" name="user.sex" checked/>&nbsp; <label for="male" >男</label>
											&nbsp;&nbsp; <input type="radio" id="female" value="1"
											name="user.sex" />&nbsp; <label for="female" >女</label>
												&nbsp;&nbsp; 
									</div>
								</div>
							</li>
							<li>
								<div class="ProductDetailForm clearfix">
									<div
										style="margin-left: 70px; color: #e25353; line-height: 16px;"></div>
									<div
										class="left LineH30 f14px marginR10 w130 gray3 table-right">用户年龄</div>
									<div class="left LineH30 f14px marginR10 w200 gray">
										<div class="ProductDetailAmount">
											<input type="text" id="user.age"
												class="formText {required: true}" name="user.age"
												value="${user.age}"
												/>
										</div>
									</div>
							</li>
							<li>
								<div class="ProductDetailForm clearfix">
									<div
										style="margin-left: 140px; color: #e25353; line-height: 16px;"
										id="nicknametip"></div>
									<div
										class="left LineH30 f14px marginR10 w130 gray3 table-right">用户昵称</div>
									<div class="ProductDetailAmount">
										<input type="text" value="${user.name}"  name="user.name" id="user.name" class="" autocomplete="off"
											style="width: 218px;" />
									</div>
								</div>
							</li>
							<li>
								<div class="ProductDetailForm clearfix">
									<div
										style="margin-left: 140px; color: #e25353; line-height: 16px;"></div>
									<span
										class="left LineH30 f14px marginR10 w130 gray3 table-right">最高学历</span>
									<select name="user.degree" id="education" class="bank" style="width: 224px;" required>
										<option value="">请选择</option> 
										<c:forEach items="${xlList}" var="dics" varStatus="vs">
											<option value="${dics.dicCode}">${dics.dicName}</option>
										</c:forEach>  
									</select>


								</div>
							</li>
							<li>
								<div class="ProductDetailForm clearfix">
									<div
										style="margin-left: 140px; color: #e25353; line-height: 16px;"></div>
									<div
										class="left LineH30 f14px marginR10 w130 gray3 table-right">婚姻状态</div>

									<div class="left LineH30">
								 <input type="radio" id="male" value="0" name="user.isMarriage" checked="true" />&nbsp; <label for="male">已婚</label>
											&nbsp;&nbsp; <input type="radio" id="female" value="1" name="user.isMarriage" />&nbsp; <label for="female">未婚</label>
												&nbsp;&nbsp; 
									</div>
								</div>
							</li>
							<li>
								<div class="ProductDetailForm clearfix">
									<div style="margin-left: 140px; color: #e25353; line-height: 16px;"></div>
									<div class="left LineH30 f14px marginR10 w130 gray3 table-right">居住地址</div>
									<div class="ProductDetailAmount">
										<input type="text" value="${user.address}" class="" id="address" name="user.address" autocomplete="off"
											style="width: 218px;" />
									</div>
								</div>
							</li>		
							
							<li>
								<div class="ProductDetailForm clearfix">
									<div style="margin-left: 140px; color: #e25353; line-height: 16px;"></div>
									<div class="left LineH30 f14px marginR10 w130 gray3 table-right">月收入</div>
									<div class="ProductDetailAmount">
										<input type="number" value="${user.income}" class="" id="address" name="user.income" autocomplete="off" style="width: 218px;" />
									</div>
								</div>
							</li>
							<li>
								<div class="ProductDetailForm clearfix">
									<div style="margin-left: 140px; color: #e25353; line-height: 16px;"></div>
									<div class="left LineH30 f14px marginR10 w130 gray3 table-right">房屋价值（无房屋可不填）</div>
									<div class="ProductDetailAmount">
										<input type="number" value="${user.houseValue}" class="" id="address" name="user.carValue" autocomplete="off" style="width: 218px;" />
									</div>
								</div>
							</li>
							<li>
								<div class="ProductDetailForm clearfix">
									<div style="margin-left: 140px; color: #e25353; line-height: 16px;"></div>
									<div class="left LineH30 f14px marginR10 w130 gray3 table-right">车辆价值（无车辆可不填）</div>
									<div class="ProductDetailAmount">
										<input type="number" value="${user.carValue}" class="" id="address" name="user.carValue" autocomplete="off" style="width: 218px;" />
									</div>
								</div>
							</li>
						</ul>
						<div class="blank10"></div>
						<div style="margin-left: 140px;">
							<input type="submit" style="width: 200px;" class="btn4 btn-block btn-cta-primary" value= "保存"/>	
						</div>
						<div class="blank40"></div>
						<div class="blank40"></div>
					</div>
					<div class="blank0"></div>
				</div>
				</form>
				<!--个人信息结束-->



				<div class="blank0"></div>
			</div>

		</div>
		</div>
		<%@include file="common/footer.jsp"%>
		<ul id="side-bar" class="side-pannel side-bar">
			<a href="javascript:;" class="gotop" style="display: none;"><s
				class="g-icon-top"></s></a>
			<a href="#" target="_blank" class="text"><s class="g-icon-qq1"></s><span>在线咨询</span></a>
			<a href="#" target="_blank" class="text weibo"><s
				class="g-icon-weibo1"></s><span>微博</span></a>
			<a href="#" class="qr"><s class="g-icon-qr1"></s><i></i></a>
			<a href="#" class="text survey" target="_blank"><s
				class="g-icon-survey1"></s><span>调查</span></a>
		</ul>

		<div class="modal modal-login" id="upateconfirm" tabindex="-1"
			role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width: 450px;">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="divider">
							<span class="f22px black"></span>
						</div>
						<div class="login-form-container">
							<div class="left marginL64 table-right">
								<p class="f20px fB" id="showSuss">
									<span class="marginR12"><img
										src="/qbank/template/shop/images/Hook1.png" width="48"
										height="48"></span><span>恭喜您，保存成功。</span>
								</p>
								<p class="f20px fB" id="showFail">
									<span class="marginR12"><img
										src="/qbank/template/shop/images/Hook3.png" width="48"
										height="48"></span><span>保存失败，请重新保存。</span>
								</p>
							</div>

							<div class="blank40"></div>
							<div style="margin-left: 120px;">
								<a href="#" onclick="showClose()"
									class="btn btn-cta btn-cta-primary" style="width: 120px;">确定</a>
							</div>
							<div class="blank20"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Javascript -->
		<script type="text/javascript"
			src="/qbank/template/shop/js/jquery.min.js"></script>
		<script type="text/javascript"
			src="/qbank/template/shop/js/bootstrap.min.js"></script>

		<!-- JS Page Level -->
		<script type="text/javascript" src="/qbank/template/shop/js/NavScroll.js"></script>
		<script type="text/javascript" src="/qbank/template/shop/js/jquery.SuperSlide.js"></script>
		<script type="text/javascript" src="/qbank/template/shop/js/SortBy.js"></script>
		<script type="text/javascript"
			src="/qbank/template/common/js/jquery.datepicker.js"></script>
		<script type="text/javascript"
			src="/qbank/template/common/js/My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="/qbank/template/admin/js/base.js"></script>
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
						'scrollTop' : 0
					}, 500);
				});
			});
		</script>
		<script language="javascript">
			function animate() {
				$(".charts").each(function(i, item) {
					var a = parseInt($(item).attr("w"));
					$(item).animate({
						width : a + "%"
					}, 1000);
				});
			}
			animate();
		</script>
		<script type="text/javascript">
			//用户nickname唯一性校验
			function nickCheck() {
				var nickname = $("#nickname").val();
				$
						.ajax({
							url : "/ssbank/shop/member_center!checkNickName.action",
							data : {
								nickname : nickname
							},
							type : "POST",
							dataType : "text",
							success : function(data) {
								data = parseInt(data, 10);
								if (data == 0) {
									$("#nicknametip")
											.html(
													"<font color='#339933'>√ 该昵称可以使用，输入正确</font>");
								} else {
									$("#nicknametip")
											.html(
													"<font color='#dd4b39'>× 该昵称已被使用，请重新输入</font>");
								}
							}
						});
			}
			//关闭确定框
			function showClose() {
				$('#upateconfirm').modal('hide');
			}
			$("#6").addClass("active").siblings().removeClass("active");
			$("#index").addClass("active").siblings().removeClass("active");
		</script>
		<script type="text/javascript">
        jQuery("#nav").slide({
            defaultIndex: "4",
            titCell: "#navs dt",
            mainCell: "#menu"
        });
        </script>
        <script >
	      	$("#10").addClass("active").siblings().removeClass("active");
			$("#index").addClass("active").siblings().removeClass("active");
		</script>
        
</body>
</html>
