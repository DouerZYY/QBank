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
    <title>登录</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/login.css" />
</head>

<body style="overflow-x: hidden;">
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
    <div class="login_register-con login-page" style="background: url(images/loginBanner1.png) center no-repeat;">
        <div class="login_register-inner">
            <div class="wrap">
                <div class="tab">
                    <ul class="tab-hd">
                        <li class="active">账号登录</li>
                        <li>快速登录</li>
                    </ul>
                    <ul class="tab-bd">
                        <li class="thisclass">
                            <div class="login-inner">
                                <form class="login-form" id="login_form" action="/qbank/shop/login!login.action" method="post">
                                    <div class="form-group email">
                                        <label class="sr-only" for="login-email">手机号</label>
                                        <!-- <span class="form-control-error" id="phone_error">手机号不能为空</span> -->
                                        <input id="" name="user.phoneNumber" type="text" class="form-control login-email-input" style="width:90%" placeholder="手机号">
                                    </div>
                                    <!--//form-group-->
                                    <div class="form-group password">
                                        <label class="sr-only" for="login-password">密码</label>
                                        <!-- <span class="form-control-error" id="password_error">密码不能为空</span> -->
                                        <input id="" name="user.password" type="password" class="form-control login-password-input" style="width:90%" placeholder="密码">
                                    </div>
                                    <!--//form-group-->
                                    <div class="checkbox remember left">
                                        <label>
                                            <input type="checkbox"/>记住密码
                                        </label>
                                    </div>
                                    <!--//checkbox-->
                                    <div class="forgot-password right">
                                        <a href="/qbank/shop/forgotpassword_step1!index.action">忘记密码？</a>
                                    </div>
                                    <div class=" blank0"></div>
                                    <div><input type="submit" class="btn btn-block btn-cta-primary" style="width:270px;" value="登录"></input></div>
                                    <!-- <div><a href="" class="btn btn-block btn-cta-primary" style="width:270px;">登录</a></div> -->
                                </form>
                            </div>
                        </li>
                        <li>
                            <div class="login-inner">
                                <form class="login-form" action="/qbank/shop/login!login2.action" method="post">
                                    <div class="form-group email">
                                        <label class="sr-only" for="login-email">手机号</label>
                                        <!-- <span class="form-control-error">手机号不能为空</span> -->
                                        <input id="quick_phone" name="user.phoneNumber" type="Email" class="form-control login-email-input" style="width:90%" placeholder="手机号"/>
                                    </div>
                                    <!--//form-group-->
                                    <div class="form-group password">
                                        <label class="sr-only" for="login-password">验证码</label>
                                        <!-- <span class="form-control-error">验证码不能为空</span> -->
                                        <input id="login-password" name="code.code" type="password" class="form-control login-password-input" style="width:200px !important" placeholder="密码"/>
                                        <a onclick="code();">获取验证码</a>
                                    </div>
                                    <!--//form-group-->
                                    <button type="submit" class="btn btn-block btn-cta-primary">通过手机安全登录</button>
                                </form>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <%@include file="common/footer.jsp" %>
    <!-- Javascript -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script>
    $(function() {
        function tabs(tabTit, on, tabCon) {
            $(tabTit).children().hover(function() {
                $(this).addClass(on).siblings().removeClass(on);
                var index = $(tabTit).children().index(this);
                $(tabCon).children().eq(index).show().siblings().hide();
            });
        };
        tabs(".tab-hd", "active", ".tab-bd");
    });
    
    function code(){
 		$.ajax({
			url: "/qbank/shop/login!code.action",
			dataType:"json",
			data:{
				phoneNumber:document.getElementById("quick_phone").value
			},
			success:function(data){
			},error:function(XMLHttpRequest, textStatus, errorThrown){
				 alert(textStatus);
			}
		})
    	
    }
    
    function login(){
    	document.getElementById("login_form").submit();
    }
    </script>
</body>

</html>
