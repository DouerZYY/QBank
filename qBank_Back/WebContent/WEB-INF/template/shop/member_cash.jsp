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
    <title>提现</title>
    <!-- Global CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/global.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body style="overflow-x: hidden;">
    <%@include file="common/header1.jsp" %>
    <form action="/qbank/shop/member!cash.action" method="post">
    <div id="container" class="ui-container light-gray">
        <div id="pt" class="bm cl">
            <div class="z"> <span class="marginR10">您所在的位置:</span><a href="/qbank/shop/index!index.action">首页</a> <em class="marginL10 marginR10">>></em><a href="javascript:;">个人中心</a></div>
        </div>
        <div class="main">
            <div class="personal_info_banner">
                <div id="nav">
                    <%@include file="common/personal_nav.jsp" %>
                </div>
                <div style="margin:4px 0px;">
                    <!--提现开始-->
                    <div class="marginB40" style="height:180px;padding:20px">
                        <div class="blank20"></div>
                        <div class="left perisonDetail" style="margin-left:20px;">
                        	
                            <ul>
                                <li>
                                    <div class=" marginB20"><span class="gray marginR4 fB">提现</span></div>
                                </li>
                                <li>
                                    <div class="ProductDetailForm clearfix">
                                        <div style="margin-left: 70px; color:#e25353; line-height:16px;"></div>
                                        <div class="left LineH30 f14px marginR10 w100 gray">全部余额</div>
                                        <div class="left LineH30 f14px marginR10 w200 gray">${account.totalAmount }</>元</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="ProductDetailForm clearfix">
                                        <div style="margin-left: 70px; color:#e25353; line-height:16px;"></div>
                                        <div class="left LineH30 f14px marginR10 w100 gray">可提现金额</div>
                                        <div class="left LineH30 f14px marginR10 w200 gray">${account.amount }元</div>
                                    </div>
                                </li>
                                
                                <li>
                                    <div class="ProductDetailForm clearfix" onChanger="changeUser()">
                                        <div style="margin-left: 70px; color:#e25353; line-height:16px;"></div>
                                        <div class="left LineH30 f14px marginR10 w100 gray">收款账号</div>
                                        <div class="left LineH30 f14px marginR10 w430 gray">
                                			<select id="cardList" onchange="changeUser();">
                                				<option value="" selected="selected" name="cardId">请选择</option>
                                			<c:forEach items="${cardList }" var="card" >        		
                                        		<option value="${card.id}">${card.bank }-${card.cardNumber }</option>
                                        	</c:forEach>
                                        	</select>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="ProductDetailForm clearfix">
                                        <div style="margin-left: 70px; color:#e25353; line-height:16px;"></div>
                                        <div class="left LineH30 f14px marginR10 w100 gray">收款人</div>
                                        <div class="left LineH30 f14px marginR10 w200 gray" id="carduser"></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="ProductDetailForm clearfix">
                                        <div style="margin-left: 70px; color:#e25353; line-height:16px;"></div>
                                        <div class="left LineH30 f14px marginR10 w100 gray">提现金额</div>
                                        <div class="ProductDetailAmount" style="width:250px">
                                            <input type="text" value="" class="" name="accountRecord.amount" autocomplete="off" style="width:218px;">
                                            <span class="marginL10">元</span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="ProductDetailForm clearfix">
                                        <div style="margin-left: 70px; color:#e25353; line-height:16px;"></div>
                                        <div class="left LineH30 f14px marginR10 w100 gray">交易密码</div>
                                        <div class="ProductDetailAmount">
                                            <input type="password" name="cashPassword" value="" class="" autocomplete="off" style="width:218px;">
                                        </div>
                                    </div>
                                </li>
          <!--                       <li>
                                    <div class="ProductDetailForm clearfix">
                                        <div style="margin-left: 70px; color:#e25353; line-height:16px;"></div>
                                        <div class="left LineH30 f14px marginR10 w100 gray">手机验证码</div>
                                        <div class="ProductDetailAmount">
                                            <input type="text"  value="" class="" autocomplete="off" style="width:130px;">
                                            <a href="javascript:;" >获取验证码</a>
                                        </div>
                                    </div>
                                </li> -->
                            </ul>
                            
                            <div class="blank10"></div>
                            <!-- <div style="margin-left:110px;"><a href="#" style="width:180px;" class="btn4 btn-block btn-cta-primary" data-toggle="modal" data-target="#account-modal">提现</a></div> -->
                            <div style="margin-left:110px;"><input  style="width:180px;" class="btn4 btn-block btn-cta-primary" data-toggle="modal" data-target="#account-modal" value="提现"></div>
                            
                            <div class="blank40"></div>
                            <div class="blank40"></div>
                            <div class="SSbank_note" style="margin-left:110px;  width: 790px;"> <span class="Note_title">温馨提示：</span>
                                <p>1.提现手续费收取说明及提现金额的先后顺序：</p>
                                <p>a. 已赚取利息（免手续费）</p>
                                <p>b. 到期本金(免手续费；投资可得续投积分，积分可以兑换优惠券)</p>
                                <p>c. 充值未投资金额（收取0.5%手续费）</p>
                                <p>2.为了您的资金安全，请确保提现银行账号的姓名和您进行实名验证的姓名一致。</p>
                                <p>3.请确保您输入的是正确的储蓄卡账号，而非信用卡账号。</p>
                                <p>4.您确认提现后，我们将在1个工作日(国家节假日除外)之内将钱转入您网站上填写的银行账号。规则如下：</p>
                                <p> 每个工作日17:50之前的用户提现申请，将在下个工作日进行打款操作。</p>
                                <p> 17:50之后的提现申请将同下个工作日的申请一并处理。</p>
                                <p>5.您进行提现操作之后资金会被冻结。资金提现到账后，冻结金额可能不会立即更新。待资金划入银行卡且银行返回到账信息后，冻结金额才会更新。</p>
                                <p>6.提现过程遇到问题，请联系客服，400-0088-100</p>
                            </div>
                            <div class="blank40"></div>
                        </div>
                        <div class="blank0"></div>
                        <!--提现结束-->
                    </div>
                </div>
                <div class="blank0"></div>
            </div>
            <%@include file="common/footer.jsp" %>
            <!-- 第三方开户 Modal -->
            <div class="modal modal-login" id="account-modal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width:520px;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="divider"><span class="f22px black">银行卡认证</span></div>
                            <div class="login-form-container">
                                <div class="ProductDetailForm clearfix">
                                    <!-- <div style="margin-left: 120px; color:#e25353; line-height:16px;">请输入姓名</div> -->
                                    <span class="left LineH30 f14px w120 table-right"><span class="gray2 marginR4">*</span>姓名</span>
                                    <div class="ProductDetailInput">
                                        <div class="ProductDetailAmount">
                                            <input type="text" value="" autocomplete="off" style="width:280px;">
                                        </div>
                                    </div>
                                </div>
                                <div class="ProductDetailForm clearfix">
                                    <div style="margin-left: 120px; color:#e25353; line-height:16px;"></div>
                                    <span class="left LineH30 f14px w120 table-right"><span class="gray2 marginR4"></span><span class="marginR10">短信验证码</span></span>
                                    <div class="ProductDetailInput">
                                        <div class="ProductDetailAmount">
                                            <input type="text" class="left " name="code" autocomplete="off" style="width:120px;">
                                            <!-- <div class="marginL10 left" style="margin-top:-6px;"><a href="#" class="btn3 btn-cta btn-cta-PrimaryGray" data-toggle="modal" data-target="#account-modal">验证码</a></div> -->
                                            <div class="marginL10 left" style="margin-top:-6px;"><a href="javascript:;" class="btn3 btn-cta btn-cta-PrimaryGray" data-toggle="modal" >验证码</a></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- <div style="margin-left:120px;"><a href="/qbank/shop/personal_bank!index.action" class="btn btn-cta btn-cta-primary" style="width:160px;">验证并绑定银行卡</a></div> -->
                                <div style="margin-left:120px;"><input type="submit" value="验证银行卡并提现" class="btn btn-cta btn-cta-primary" style="width:160px;"></a></div>
                                <div class="blank20"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>
     </form>
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
    	 if('${cash_result}'){
    		 alert('${cash_result}');	 
    	 }
    	 
    	 
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
     
     </script>
     <script type="text/javascript">
     $(function() {
         $(".isBank").click(function() {
             $(this).addClass("hover").siblings().removeClass("hover");
         })
     })
     
     function changeUser(){
    	 var cardlist = $("#cardList");
    	 var cardList ="${cardList[0].name}"
    	 
    	 var name = "${cardList[0].name}";
    	 $("#carduser").html(name.substr(0,1)+'*');
     }
     
     </script>
     <script>
			$("#7").addClass("active").siblings().removeClass("active");
			$("#index").addClass("active").siblings().removeClass("active");
	</script>
	
</body>

</html>
