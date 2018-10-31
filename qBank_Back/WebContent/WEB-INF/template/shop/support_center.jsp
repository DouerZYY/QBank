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
    <title>帮助中心</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/support.css" />
    <style>
    	.productDetailpanel {
    		min-height: 316px;
    	}
    </style>
</head>

<body style="overflow-x: hidden;">
    <%@include file="common/header1.jsp" %>
    <div id="container" class="ui-container light-gray">
        <div id="pt" class="bm cl">
            <div class="z">
                <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em class="marginL10 marginR10">>></em> <a href="javascript:;">帮助中心</a>
            </div>
        </div>
        <div class="main">
            <div class="productDetailpanel">
                <!-- 
<div class="searchboxsupport">
    <p><input type="text" class="search" placeholder="输入问题" /><button class="search2">搜索</button></p>
</div>   
 -->
                <!--FAQ1 starts-->
                <div class="Supportframe">
                    <h1>常见问题</h1>
                    <h2>1. 注册与登录</h2>
                    <!--FAQ1.1 starts-->
                    <div class="entry nobottom">
                        <div class="top_faq_question">
                            <div class="entry-title SupportTitle">
                                <div class="SupportArrowClose"></div>
                                <div>如何成为尚尚金服的注册用户？</div>
                            </div>
                        </div>
                        <div class="top_faq_answer">
                            <p>进入尚尚金服官网首页（www.ssbank.com），点击右上方的“注册”按钮，在页面的操作提示下 ，完成注册流程即可。</p>
                        </div>
                    </div>
                    <!--FAQ1.1 ends-->
                    <!--FAQ1.2 starts-->
                    <div class="entry nobottom">
                        <div class="top_faq_question">
                            <div class="entry-title SupportTitle">
                                <div class="SupportArrowClose"></div>
                                <div>登录尚尚金服账户有几种方式？</div>
                            </div>
                        </div>
                        <div class="top_faq_answer">
                            <p>1.在尚尚金服完成注册后登录（推荐）</p>
                            <p></p>
                            <p>2.可使用合作账户新浪微博、QQ账号登录尚尚金服</p>
                            <p></p>
                            <p>3.在尚尚金服，您的用户名、认证手机号码和注册邮箱一样，都可以用来登录。您可以输入其中任意一项进行登录。</p>
                        </div>
                    </div>
                    <!--FAQ1.2 ends-->
                    <!--FAQ1.3 starts-->
                    <div class="entry nobottom">
                        <div class="top_faq_question">
                            <div class="entry-title SupportTitle">
                                <div class="SupportArrowClose"></div>
                                <div>忘记登录用户名、登录密码怎么办？如何找回？</div>
                            </div>
                        </div>
                        <div class="top_faq_answer">
                            <p>忘记登录密码，具体步骤如下：</p>
                            <p>1.点击首页“登录”按钮进入用户登录页面，点击“忘记密码”；</p>
                            <p>2.填写您当时注册的手机号或用户名，输入验证码，点击“下一步”；</p>
                            <p>3.“验证身份”选择找回方式手机或邮箱，完成相关操作点击进入“下一步”，就可重置密码了；</p>
                            <p>4.您的注册邮箱中将会收到一封标题为“重置登录密码”的邮件，点击邮件中的“点击重置密码”按钮或是链接地址，将会进入“重置登录密码”页面；</p>
                            <p>5.重新输入设置您的登录密码。</p>
                        </div>
                    </div>
                    <!--FAQ1.3 ends-->
                </div>
                <!--FAQ1 ends-->
                <div class="blank0"></div>
            </div>
            <div class="blank0"></div>
        </div>
    </div>
    <%@include file="common/footer.jsp" %>
	<%@include file="common/login_modal.jsp" %>
	<%@include file="common/signup_modal.jsp" %>
    <ul id="side-bar" class="side-pannel side-bar">
        <a href="javascript:;" class="gotop" style="display:none;">
            <s class="g-icon-top"></s>
        </a>
    </ul>
    <!-- Javascript -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
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
    </script>
    <script>
	$("#index").addClass("active").siblings().removeClass("active");
</script>
</body>

</html>
