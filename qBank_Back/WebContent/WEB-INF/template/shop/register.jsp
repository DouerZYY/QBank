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
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/support.css" />
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
                <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em class="marginL10 marginR10">>></em> <a href="javascript:;">注册</a>
            </div>
        </div>
        <div class="main">
            <div class="productDetailpage productDetailpanel">
                <div class="left" style="width:450px;">
                    <div class="modal-body">
                        <div class="marginB20"><span class="f22px fB">用户注册</span></div>
                        <form action="/qbank/shop/user!save.action" onsubmit="return check()">
                            <div class="form-group email">
                                <label class="sr-only" for="login-email">手机号</label>
                                <!-- <span class="form-control-error">手机号不能为空</span>   form-control-error -->
                                <input id="phoneNumber" name="phoneNumber" type="Email" class="form-control  login-email-input" style="width:90%" placeholder="手机号">
                            </div>
                            <!--//form-group-->
                            <div class="form-group password">
                                <label class="sr-only" for="login-password">验证码</label>
                                <input id="login-password" name="code.code" type="text" class="left form-control login-YZM-input" placeholder="验证码">
                                <a href="javascript:;" onclick="getCode();" class="right btn btn-block btn-cta-primary" style="width:40%;">发送验证码</a>
                            </div>
                            <!--//form-group-->
                            <div class="form-group password">
                                <label class="sr-only" for="login-password">密码</label>
                                <input id="login-password" name="user.password" type="password" class="form-control login-password-input" style="width:90%" placeholder="密码">
                            </div>
                            <!--//form-group-->
                            <div class="entry nobottom">
                                <div class="top_faq_question">
                                    <div class="entry-title SupportTitle" style="padding: 10px 0px 10px 0px;background-color: #ffffff;">
                                        <div class="SupportArrowClose"></div>
                                        <div>推荐人手机号（选填）</div>
                                    </div>
                                </div>
                                <div class="top_faq_answer" style="margin-left: 0px;">
                                    <p>
                                        <input id="login-email" name="login-email" type="Email" class="form-control login-email-input" style="width:90%" placeholder="手机号">
                                    </p>
                                </div>
                            </div>
                            <div class="blank20"></div>
                            
                            <div class="checkbox remember">
                                <label>
                                    <input id="readcheck" type="checkbox" >我已阅读并同意<a href="/qbank/shop/use_terms!index.action" target="_blank" class="signup-information">《快借宝用户协议》</a>
                                </label>
                            </div>
                            <input type="submit" class="btn btn-block btn-cta-primary" style="width:390px;" value="注册" >
                            <!--//checkbox-->
                        </form>
                    </div>
                </div>
                <div class="left">
                    <div class="register-login">
                        <p>已注册？现在就 <a href="/qbank/shop/login!index.action">登录</a></p>
                        <img style="display:block;margin:50px 0 0 60px;" src="images/login_register_50.png" width="220" height="225">
                    </div>
                </div>
                <div class="blank0"></div>
            </div>
            <div class="blank0"></div>
        </div>
    </div>
    <%@include file="common/footer.jsp" %>
    <!-- Javascript -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
    var $ = jQuery.noConflict();

    $(document).ready(function() {
        $('div.top_faq_question').click(function() {


            if ($(this).children().children().first().hasClass('SupportArrowOpen')) {
                //alert("1");
                $('div.top_faq_answer').slideUp('normal');
                $(this).children().children().first().removeClass('SupportArrowOpen').addClass('SupportArrowClose');
            } else {
                //alert("2");
                $('div.SupportArrowOpen').removeClass('SupportArrowOpen').addClass('SupportArrowClose');
                $(this).children().children().first().removeClass('SupportArrowClose').addClass('SupportArrowOpen');
                $('div.top_faq_answer').slideUp('normal');
                $(this).next().slideDown('normal');
            }


        });
    });
    
    function getCode(){
		if(validatemobile(document.getElementById("phoneNumber").value)){
	 		$.ajax({
				url: "/qbank/shop/user!resgisterCode.action",
				dataType:"json",
				data:{
					phoneNumber:document.getElementById("phoneNumber").value
				},
				success:function(data){
				},error:function(XMLHttpRequest, textStatus, errorThrown){
					
				}
			})
			
		}
		
    }
    
    function check(){
  /*   	if(!$("#readcheck").attr("checked")){
    		alert("请先阅读协议");
    		return false;
    	}	 */
    	return true;
    }
    
    function validatemobile(mobile)
    {
        if(mobile.length==0)
        {
           alert('请输入手机号码！');
           return false;
        }    
        if(mobile.length!=11)
        {
            alert('请输入有效的手机号码！');
            return false;
        }
        return true;
    }
    
    </script>
</body>

</html>
