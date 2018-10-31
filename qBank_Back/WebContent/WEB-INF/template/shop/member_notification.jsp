<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<title>通知设置</title>
<link rel="icon" href="images/KingF.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/KingF.ico" type="image/x-icon">
<!-- Global CSS -->
<link rel="stylesheet" href="/qbank/template/shop/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/global.css"/>
<link rel="stylesheet" type="text/css" href="/qbank/template/shop/css/style.css"/>
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
		<%@include file="common/header1.jsp" %>

<div id="container" class="ui-container light-gray">
  <div id="pt" class="bm cl">
    <div class="z"> <span class="marginR10">您所在的位置:</span><a href="index.html">首页</a> <em class="marginL10 marginR10">>></em><a href="product.html">个人中心</a></div>
  </div>
  <div class="main">
<div class="personal_info_banner">

      <div id="nav">
         <%@include file="common/personal_nav.jsp" %>
     </div>
      
<div style="margin:4px 0px;">    
   

<!--消息开始-->   
   
<div class="marginB20 Padding20"> 

<div class="blank20"></div>

<div>
<div class="PerProductListTitleNew">
<div class="left w200 marginL40"><span>&nbsp;</span></div>
<div class="left w200 marginL36"><span>系统消息通知</span></div>
<div class="left w200 marginL36"><span>邮件通知</span></div>
<div class="left w140 marginL18"><span>短信通知</span></div>
</div>

<div class="PerProductListNew">
<ul>
<li>
 <div class="left w200 table-center">充值操作</div>
 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" id="message_recharge"/></label></div>
 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" id="phone_recharge"/></label></div> 
 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" id="email_recharge"/></label></div>  
</li>
<li>
 <div class="left w200 table-center">提现操作</div>
 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" id="message_withdraw"/></label></div>
 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" id="phone_withdraw" /></label></div> 
 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" id="email_withdraw" /></label></div>  
</li>
<li>
 <div class="left w200 table-center">投资成功</div>
 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" id="message_loan_yes_account"/></label></div>
 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" id="phone_loan_yes_account"/></label></div> 
 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" id="email_loan_yes_account" /></label></div>  
</li>
<li>
 <div class="left w200 table-center">还本付息</div>
 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" id="message_loan_pay" /></label></div>
 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" id="phone_loan_pay"/></label></div> 
 <div class="left w220 table-center"><label style="display:block"><input type="checkbox"id="email_loan_pay" /></label></div>  
</li>

</ul>
</div>
<div class="blank40"></div>
<div style=" margin-left:340px;"><input type="button" id="submitButton"  class="btn4 btn-block btn-cta-primary" style="width:270px;" value="确认提交"/></div>

</div>



</div>
<!--消息结束-->


   
</div> 
</div>
<div class="blank0"></div>


  </div>   




<%@include file="common/footer.jsp" %>



<ul id="side-bar" class="side-pannel side-bar">
  <a href="javascript:;" class="gotop" style="display:none;"><s class="g-icon-top"></s></a> <a href="#" target="_blank" class="text"><s class="g-icon-qq1"></s><span>在线咨询</span></a> <a href="#" target="_blank" class="text weibo"><s class="g-icon-weibo1"></s><span>微博</span></a> <a href="#" class="qr"><s class="g-icon-qr1"></s><i></i></a> <a href="#" class="text survey" target="_blank"><s class="g-icon-survey1"></s><span>调查</span></a>
</ul>

<!-- Javascript --> 
<script type="text/javascript" src="/qbank/template/shop/js/jquery.min.js"></script> 
<script type="text/javascript" src="/qbank/template/shop/js/bootstrap.min.js"></script> 

<!-- JS Page Level --> 
<script type="text/javascript" src="/qbank/template/shop/js/NavScroll.js"></script> 
<script type="text/javascript" src="/qbank/template/shop/js/jquery.SuperSlide.js"></script> 
<script type="text/javascript" src="/qbank/template/shop/js/SortBy.js"></script> 
<script type="text/javascript" src="/qbank/template/admin/js/base.js"></script>
<script type="text/javascript" src="/qbank/template/shop/js/shop.js"></script>
<script type="text/javascript">
$(function(){
	$(window).scroll(function(){
		if($(window).scrollTop()>100){
			$("#side-bar .gotop").fadeIn();	
		}
		else{
			$("#side-bar .gotop").hide();
		}
	});
	$("#side-bar .gotop").click(function(){
		$('html,body').animate({'scrollTop':0},500);
	});
	/*个人中心公共头部设置开始*/
				//设置选中的索引，每个页面只需要修改defaultIndex的值，下标从0开始
				$("#nav").slide({defaultIndex:"4", titCell:"#navs dt", mainCell:"#menu"});
				$.each($("#menu li"), function(i, n){
				$(n).removeClass();
				})
				$("#11").attr("class", "active");
				/*个人中心公共头部设置结束*/
});
</script> 
<script language="javascript">
function animate(){
	$(".charts").each(function(i,item){
		var a=parseInt($(item).attr("w"));
		$(item).animate({
			width: a+"%"
		},1000);
	});
}
animate();
</script> 

<script type="text/javascript">jQuery("#nav").slide({ defaultIndex: "4", titCell:"#navs dt", mainCell:"#menu"});</script>
<script>
//用户通知设置
$("#submitButton").click(function(){
	var str="";
	($("#message_recharge").prop("checked"))?str+="1":str+="0";
	($("#email_recharge").prop("checked"))?str+="1":str+="0";
	($("#phone_recharge").prop("checked"))?str+="1":str+="0";
	str+="||";
	($("#message_withdraw").prop("checked"))?str+="1":str+="0";
	($("#email_withdraw").prop("checked"))?str+="1":str+="0";
	($("#phone_withdraw").prop("checked"))?str+="1":str+="0";
	str+="||";
	($("#message_loan_yes_account").prop("checked"))?str+="1":str+="0";
	($("#email_loan_yes_account").prop("checked"))?str+="1":str+="0";
	($("#phone_loan_yes_account").prop("checked"))?str+="1":str+="0";
	str+="||";
	($("#message_loan_pay").prop("checked"))?str+="1":str+="0";
	($("#email_loan_pay").prop("checked"))?str+="1":str+="0";
	($("#phone_loan_pay").prop("checked"))?str+="1":str+="0";
	str+="||";
	var param = {};
	param.str=str;
	$.ajax({
				url: "member!notificationSets.action",
				data: param,
				dataType: "json",
				async: false,
				success:function(data){
				
				alert("设置成功！");
				
				}
			
			})
		

	}	
);		
				

</script>
<script>
jQuery("#nav").slide({
    defaultIndex: "5",
    titCell: "#navs dt",
    mainCell: "#menu"
});
$("#11").addClass("active").siblings().removeClass("active");
$("#index").addClass("active").siblings().removeClass("active");
</script>
</body>
</html>
