<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page  import="com.qbank.entity.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--[if IE 6]>
      <style type="text/css">
      .banner,.header,.ui-container,.footer{display:none;}
      .pop-mask,html,body {width: 100%; height: 100%; overflow: hidden;zoom:1;}
      .browser-list .chrome { display: block; height: 96px; width: 96px; margin: 0 auto; background: url(Images/T1LNFcXklAXXXXXXXX.png) 0 0 no-repeat scroll transparent; }
      .pop-mask,.pop-main { display: block; position: absolute;}
      .pop-mask { z-index: 999998; top: 0; left: 0; background-color: #000; }
      .pop-main { z-index: 999999; width: 600px; height: 400px; top: 50%; left: 50%; margin-left: -300px; margin-top: -200px;}
      .pop-main h3, .pop-main h4{ color: #fff; margin-top: 60px; height: 100px; line-height: 50px; text-align: center; font-size: 24px;}
      .pop-main h4 {height:auto}
      </style>
      <style>
      .pop-main {background:#000;}
      </style>
      <div class="pop-mask"></div>
      <div class="pop-main">
      <h3>T_T 这位使用IE的童鞋你好，我们不支持IE6及以下核心的浏览器访问。<br />求求你升级下浏览器吧，拜托拜托。</h3>
      <h4>推荐安装</h4>
      <ul class="browser-list">
      <li><a title="下载Chrome" class="chrome" href="http://www.google.com/intl/zh-CN/chrome/" target="_blank"></a></li>
      </ul>
      </div>
      <![endif]-->
   
      
<div class="header" style="height: 80px;">
	<div id="primary-navigation" class="nav nav-home nav-fixed"
		style="visibility: visible;">
		<div class="inner-nav fn-clear">
			<div class="brand fn-left">
				 <a href="/qbank/shop/index!index.action" class="nav-brand"> <img src="/qbank/template/shop/images/logo.jpg" height="50" width="150" alt="" data-another="/qbank/template/shop/images/logo.jpg" /> </a>
			</div>
			<div class="nav-menu fn-right">
				<ul class="nav-list fn-left">
					<li><a href="/qbank/shop/index!index.action" id="index"><span>首页</span></a></li>
					<li><a href="/qbank/shop/project!list.action" id="product"><span>理财</span></a></li>
					<li><a href="/qbank/shop/loan!index.action" id="loan"><span>借款</span></a></li>
					<li><a href="/qbank/shop/security!index.action" id="security"><span>安全</span></a></li>
					<li><a href="/qbank/shop/about!index.action" id="about"><span>关于</span></a></li>
				</ul>
				<div class="marginT4 fn-left">
				<c:if test="${empty user.id}">
					<a href="/qbank/shop/login!index.action"
						class="login-trigger btn btn-link">登录</a> | 
					<a href="/qbank/shop/user!register.action"
						class="login-trigger btn btn-link">注册</a>
						
				</c:if>
				<c:if test="${not empty user.id}">
					<a href="/qbank/shop/member!index.action"
						class="login-trigger btn btn-link">个人中心</a> | 
					<a href="/qbank/shop/login!logout.action"
						class="login-trigger btn btn-link">退出</a>
				</c:if>
				</div>

				<!-- 未注册 -->
			</div>
		</div>
	</div>
</div>