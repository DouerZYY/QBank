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
    <title>忘记密码Step2</title>
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
                <p>快 借 宝</p>
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
                <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em class="marginL10 marginR10">>></em> <a href="javascript:;">找回密码</a>
            </div>
        </div>
        <div class="main">
            <div class="productDetailpage productDetailpanel">
                <div class="marginB20 forgotpasswordbgtitle"><span class="forgotpasswordtitle f22px fB">找回密码</span></div>
                <div class="blank30"></div>
                <div class="forgotpassword_step">
                    <div class="forgotpassword_stepT">
                        <ul>
                            <li class="forgotpasswordTitleActive"><span class="f24px">1.</span>验证身份</li>
                            <li class="forgotpasswordTitleActive"><span class="f24px">2.</span>重置密码</li>
                            <li class="forgotpasswordSetpTitle"><span class="f24px">3.</span>完成</li>
                        </ul>
                    </div>
                    <div class="forgotpassword_stepB">
                        <ul>
                            <li class="forgotpassword_stepB_1">&nbsp;</li>
                            <li class="forgotpassword_stepB_2">&nbsp;</li>
                            <li>&nbsp;</li>
                        </ul>
                    </div>
                </div>
                <div class="blank30"></div>
                <div class="forgotbox">
                    <form>
                        <div class="form-group password">
                            <label class="sr-only f16px" for="login-password">新密码</label>
                            <span class="form-control-error"></span>
                            <input id="login-password" name="login-password" type="password" class="form-control login-password-input" style="width:90%" placeholder="新密码">
                        </div>
                        <!--//form-group-->
                        <div class="form-group password">
                            <label class="sr-only f16px" for="login-password">确认密码</label>
                            <span class="form-control-error"></span>
                            <input id="login-password" name="login-password" type="password" class="form-control login-password-input" style="width:90%" placeholder="确认密码">
                        </div>
                        <!--//form-group-->
                        <a href="/qbank/shop/forgot_password_step3!index.action" class="btn btn-block btn-cta-primary" style="width:372px;">下一步</a>
                    </form>
                </div>
                <div class="blank50"></div>
                <p class="table-center">若您无法使用上述方法找回，请联系客服400-0088-100或重新注册.</p>
                <div class="blank40"></div>
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
