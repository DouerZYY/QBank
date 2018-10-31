<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
	<base href="http://localhost:8080/qbank/template/shop/" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="快借宝，快借宝网站,理财,贷款">
    <meta name="description" content="网络银行、在线理财">
    <title>注册</title>
    <link rel="icon" href="images/KingF.ico" type="image/x-icon">
    <link rel="shortcut icon" href="images/KingF.ico" type="image/x-icon">
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body style="overflow-x: hidden;">
    <!--[if IE 6]>
      <style type="text/css">
      .banner,.header,.ui-container,.footer{display:none;}
      .pop-mask,html,body {width: 100%; height: 100%; overflow: hidden;zoom:1;}
      .browser-list .chrome { display: block; height: 96px; width: 96px; margin: 0 auto; background: url(images/T1LNFcXklAXXXXXXXX.png) 0 0 no-repeat scroll transparent; }
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
    <div id="primary-navigation" class="nav nav-home" style="position:static">
        <div class="inner-nav fn-clear" style="position:static">
            <div class="brand fn-left">
                 <!-- <a href="#" class="nav-brand"> <img src="images/Logo.png" alt="" data-another="images/Logo.png"> </a> -->
                    <p> 快 借 宝 </p>
            </div>
            <div class="nav-menu fn-right">
                <ul class="nav-list fn-left">
                    <li><a href="/qbank/shop/index!index.action"><span>首页</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="container" class="ui-container light-gray">
        <div id="pt" class="bm cl">
            <div class="z">
                <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em class="marginL10 marginR10">>></em> <a href="/qbank/shop/register!index.action">注册</a>
            </div>
        </div>
        <div class="main">
            <div class="productDetailpage productDetailpanel">
                <div class="marginB20 forgotpasswordbgtitle"><span class="forgotpasswordtitle f22px fB">注册成功</span></div>
                <div class="left greenBackground registerComplete">
                    <div class="left"></div>
                    <div class="left margin10 table-right">
                        <p class="f20px fB"><span class="marginR12"><img src="images/Hook1.png" width="32" height="32" /></span><span>恭喜您注册成功</span></p>
                        <p class="marginL44 left">恭喜您获得<strong class=" f20px ping">30</strong><span class="black">元现金券</span></p>
                    </div>
                </div>
                <p>5 秒自动跳转到个人中心</p>
                <div class="blank20"></div>
                <p class="marginB20">继续完成以下认证，再送您<strong class=" marginL4 marginR4 f20px ping">20元</strong>现金券</p>
                <div class="marginB20 registertitle"></div>
                <div class="left marginL52 marginB40">
                    <p class="f14px fB"><span class="marginR12"><img src="images/Hook2.png" width="24" height="24" /></span><span>实名认证</span></p>
                    <p class="marginL36">为了您的账户和资金安全，需要确认您的实名身份</p>
                </div>
                <div class="blank0"></div>
                <div class="marginB20 registertitle"></div>
                <div class="blank0"></div>
                <div class="left marginL52 marginB40">
                    <p class="f14px fB"><span class="marginR12"><img src="images/Hook2.png" width="24" height="24" /></span><span>邮箱认证</span></p>
                    <p class="marginL36">用于接收，充值、投资、项目到期、提现等重要通知</p>
                </div>
                <div class="blank0"></div>
                <div class="marginB20 registertitle"></div>
                <div class="blank0"></div>
            </div>
            <div class="blank0"></div>
        </div>
    </div>
    <%@include file="common/footer.jsp" %>
    <!-- Javascript -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>

</html>
