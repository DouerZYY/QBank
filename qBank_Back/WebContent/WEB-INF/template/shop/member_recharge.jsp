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
    <title>充值</title>
    <!-- Global CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body style="overflow-x: hidden;">
    <%@include file="common/header1.jsp" %>
    <div id="container" class="ui-container light-gray">
        <div id="pt" class="bm cl">
            <div class="z"> <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em class="marginL10 marginR10">>></em><a href="javascript:void(0)">个人中心</a></div>
        </div>
        <div class="main">
            <div class="personal_info_banner">
                <div id="nav">
                    <%@include file="common/personal_nav.jsp" %>
                </div>
                <div style="margin:4px 0px;">
                    <!--在线充值开始-->
                    <form action="/qbank/shop/member!recharge.action" method="post" id="rechargeForm">
                    <div class="marginB40" style="height:180px;padding:20px">
                        <div class="blank20"></div>
                        <div class="left perisonDetail" style="margin-left:20px;">
                            <ul>
                                <li>
                                    <div class=" marginB20"><span class="gray marginR4 fB">在线充值</span></div>
                                </li>
                                <li>
                                    <div class="ProductDetailForm clearfix">
                                        <div style="margin-left: 70px; color:#e25353; line-height:16px;"></div>
                                        <div class="left LineH30 f14px marginR10 w60 gray">充值金额</div>
                                        <div class="ProductDetailAmount">
                                            <input id="recharge-amount" type="number" name="accountRecord.amount" value="" class="" autocomplete="off" style="width:218px;" />
                                        </div>
                                        <span>元</span>
                                    </div>
                                    <div class="ProductDetailForm clearfix"><span style="margin-left:70px !important;" class="marginL10 gray">当前可用余额：</span><span class="marginR20">${account.amount }</span><span class="marginL10 gray">充值后余额：</span><span id="recharge-over-amount">${account.amount }元</span></div>
                                </li>
                                <!--          <li>
          
          <div class="left">
          <div style="margin-left: 70px; color:#e25353; line-height:16px;"></div>
          <div class="left LineH30 f14px marginR10 w60 gray">选择银行</div>
          </div>
          
            <div class="left personalUserPay">
          <ul class="clearfix">
            <li class="isBank">
              <label _bankid="83"> <img src="images/ICBC.jpg" width="143" height="38" alt="工商银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="95"> <img src="images/CCB.jpg" width="143" height="38" alt="建设银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="53"> <img src="images/ABC.jpg" width="143" height="38" alt="农业银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="74"> <img src="images/CMB.jpg" width="143" height="38" alt="招商银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="100"> <img src="images/PSBC.jpg" width="143" height="38" alt="邮政储蓄银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="86"> <img src="images/COMM.jpg" width="143" height="38" alt="交通银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="101"> <img src="images/BOC.jpg" width="143" height="38" alt="中国银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="56"> <img src="images/CIB.jpg" width="143" height="38" alt="兴业银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="57"> <img src="images/BOB.jpg" width="143" height="38" alt="北京银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="68"> <img src="images/BEA.jpg" width="143" height="38" alt="东亚银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="84"> <img src="images/NBCB.jpg" width="143" height="38" alt="宁波银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="85"> <img src="images/NJCB.jpg" width="143" height="38" alt="南京银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="87"> <img src="images/PAB.jpg" width="143" height="38" alt="平安银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="88"> <img src="images/CITIC.jpg" width="143" height="38" alt="中信银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="89"> <img src="images/CMBC.jpg" width="143" height="38" alt="民生银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="90"> <img src="images/CEB.jpg" width="143" height="38" alt="光大银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="92"> <img src="images/SPDB.jpg" width="143" height="38" alt="上海浦发银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="96"> <img src="images/HXB.jpg" width="143" height="38" alt="华夏银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="97"> <img src="images/BOS.jpg" width="143" height="38" alt="上海银行"><span class="icon-duigou1"></span> </label>
            </li>
            <li class="isBank">
              <label _bankid="99"> <img src="images/CGB.jpg" width="143" height="38" alt="广东发展银行"><span class="icon-duigou1"></span> </label>
            </li>
          </ul>
        </div>          
          
          </li>-->
                            </ul>
                            <div class="blank10"></div>
                            <!-- <div style="margin-left:70px;"><a href="123123.html" style="width:180px;" class="btn4 btn-block btn-cta-primary" data-toggle="modal" data-target="#account-modal" target="_blank" >充值</a></div> -->
                            <!-- <div style="margin-left:70px;" onclick="recharge();"><a  style="width:180px;" class="btn4 btn-block btn-cta-primary"  >充值</a></div> -->
                            <div style="margin-left:70px;"><input type="submit"  style="width:180px;" class="btn4 btn-block btn-cta-primary"  value="充值"/></div> 

                            <div class="blank40"></div>
                            <div class="blank40"></div>
                            <div class="SSbank_note"> <span class="Note_title">温馨提示：</span>
                                <p>1.您充值的资金若未投资就提现，第三方支付公司会收取您提现金额的0.5%作为转账费用。</p>
                                <p>2.您的账户资金将由第三方平台托管。</p>
                                <p>3.投资时，资金使用优先级为：优惠券&gt;到期本金&gt;充值未投资资金&gt;已赚取利息。</p>
                                <p>4.为了您的资金安全，请您在充值前完成手机绑定，身份认证及支付密码设置。</p>
                                <p>5.尚尚金服严禁信用卡充值、套现等行为，一经发现将予以处罚，包括但不限于：限制收款、冻结账户、永久停止服务，并会影响银行征信记录。</p>
                                <p>6.充值过程遇到问题，请联系客服，400-0088-100</p>
                            </div>
                            <div class="blank40"></div>
                        </div>
                        <div class="blank0"></div>
                        </form>
                        <!--在线充值结束-->
                    </div>
                </div>
                <div class="blank0"></div>
            </div>
            <%@include file="common/footer.jsp" %>
            <!-- 第三方开户 Modal -->
            <div class="modal modal-login fade" id="account-modal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width:450px;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="divider"><span class="f22px black">请在新开支付页面完成充值后选择</span></div>
                            <div class="login-form-container">
                                <div class="ProductDetailForm clearfix">
                                    <div class="left LineH30 f14px marginL30"><span class="marginR4"><img class="Icon16" style="margin-top:-2px;" src="images/Hook1.png" /></span><span class="gray2">充值成功</span><span class="marginL10 marginR10">|</span><span class="gray2">你可选择:</span><span class="marginL10"><a href="/qbank/shop/transaction_records!index.action" class="orange">查看充值记录</a></span></div>
                                    <div class="left LineH30 f14px marginL30"><span class="marginR4"><img class="Icon16" style="margin-top:-2px;" src="images/Hook3.png" /></span><span class="gray2">充值失败</span><span class="marginL10 marginR10">|</span><span class="gray2">建议尝试:</span><span class="marginL10"><a href="/qbank/shop/personal_recharge!index.action" class="orange">重新支付</a></span></div>
                                </div>
                                <div class="blank40"></div>
                                <div style="margin-left:120px;"><a href="/qbank/shop/personal_recharge!index.action" class="btn btn-cta btn-cta-primary" style="width:120px;">确定</a></div>
                                <div class="blank20"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <ul id="side-bar" class="side-pannel side-bar">
                <a href="javascript:;" class="gotop" style="display:none;">
                    <s class="g-icon-top"></s>
                </a>
            </ul>
            <!-- Javascript -->
            <script type="text/javascript" src="js/jquery.min.js"></script>
            <script type="text/javascript" src="js/bootstrap.min.js"></script>
            <!-- JS Page Level -->
            <script type="text/javascript" src="js/NavScroll.js"></script>
            <script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
            <!-- ECharts单文件引入 -->
            <script type="text/javascript" src="js/echarts.js"></script>
            <script type="text/javascript" src="js/echartsForUser.js"></script>
            <!--<script type="text/javascript" src="js/Custom.js"></script>-->
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
            jQuery("#nav").slide({
                defaultIndex: "2",
                titCell: "#navs dt",
                mainCell: "#menu"
            });
            </script>
            <script type="text/javascript">
            var $ = jQuery.noConflict();

            $(document).ready(function() {
                $('div.Title_personal').click(function() {


                    if ($(this).hasClass('personalArrowOpen')) {
                        //alert("1");
                        $('div.Title_personal_dteail').slideUp('normal');
                        $(this).removeClass('personalArrowOpen').addClass('personalArrowClose');
                    } else {
                        //alert("2");
                        $('div.personalArrowOpen').removeClass('personalArrowOpen').addClass('personalArrowClose');
                        $(this).removeClass('personalArrowClose').addClass('personalArrowOpen');
                        $('div.Title_personal_dteail').slideUp('normal');
                        $(this).prev().slideDown('normal');
                    }


                });
            });
            
            $("#recharge-amount").bind("input input",function(){
            	var amount = Number($("#recharge-amount").val())+Number("${account.amount }");
            	$("#recharge-over-amount").html(amount+'元')
            	
            })
            
            </script>
            <script type="text/javascript">
            $(function() {
                $(".isBank").click(function() {
                    $(this).addClass("hover").siblings().removeClass("hover");
                })
            })
          
            </script>
            <script>
			$("#6").addClass("active").siblings().removeClass("active");
			$("#index").addClass("active").siblings().removeClass("active");
		</script>
</body>

</html>
