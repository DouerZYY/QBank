/***
 *	SSBANK JavaScript
 *
 *	http://www.ssbank.cn
 *
 *	Copyright © 2015 ssbank.cn All Rights Reserved.
 **/

ssbank = {
	base: "",
	currencySign: "￥",
	currencyUnit: "元",
	priceScale: "2",
	priceRoundType: "roundHalfUp",
	orderScale: "2",
	orderRoundType: "roundHalfUp"
};

$().ready( function() {

	var $body = $("body");
	
	/* ---------- MemberVerify ---------- */
	
	$.memberVerify = function () {
		if(getCookie("memberUsername") != null) {
			var booleanStatus = false;
			$.ajax({
				type: "POST",
				url: ssbank.base + "/shop/member!ajaxMemberVerify.action",
				dataType: "json",
				async: false,
				success: function(data) {
					if (data.status) {
						booleanStatus = true;
					}
				}
			});
			return booleanStatus;
		} else {
			return false;
		}
	}
	
	$.loadMessage = function() {
		var booleanStatus = false;
		$.ajax({
			type: "POST",
			url: ssbank.base + "/shop/member_center!messageNotify.action",
			dataType: "json",
			async: false,
			success: function(data) {
				if (data.status) {
					booleanStatus = true;
				}
			}
		});
		return booleanStatus;
	}
	
	//切换点击效果
	$.changeClass = function(target) {
		var $thisSpan = $(target).children("span");
		var tag = $thisSpan.attr("class");
		if(tag.indexOf("arrowdown") > 0){
			$thisSpan.attr("class", "Icon16 personal_info_arrowup");
		}else{
			$thisSpan.attr("class", "Icon16 personal_info_arrowdown");
		}
	}
	
	var isLogin = $.memberVerify();
	
	/* ---------- Header ---------- */
	var $loginHtmlTag = $('#loginHtmlTag');
	var htmlContent = "";
	if(isLogin){
		htmlContent += "<div class='hd-login'>";
		htmlContent += "<ul class='hd-login-win'>";
		htmlContent += "<li class='h-l-w-item clearfix'>";
		htmlContent += "<a href='#'><span class='left marginR6'>您好，<span class='orange fB' onclick='$.changeClass(this)'>"+getCookie("memberUsername")+"</span></span><span class='left css-triangle a-r180'></span></a>";
		htmlContent += "<div class='hd-login-handle fadeIn-1s'>";
		htmlContent += "<ul class='hd-login-list'>";
		htmlContent += "<li class='h-l-h-item'><a href='/member/center/index.htm'>进入我的账户</a></li>";
		htmlContent += "<li class='h-l-h-item'><a href='/member/logout.htm'>退出</a></li>";
		htmlContent += "</ul></div>";
		htmlContent += "<span class='hd-triangle-1 fadeIn-1s'></span>";
		htmlContent += "<span class='hd-triangle fadeIn-1s'></span>";
		if($.loadMessage()){
			htmlContent += "<a href='/shop/member_center_message.htm'><div id='msgTag' class='envelopeA'></div></a>";
		}else{
			htmlContent += "<a href='/shop/member_center_message.htm'><div id='msgTag' class='envelopeN'></div></a>";
		}
		htmlContent += "</li></ul>";
		htmlContent += "<ul style='display:none;' class='hd-login-in'>";
		htmlContent += "<li class='hd-login-btn'><a href='/html/login.html'>登录</a></li>";
		htmlContent += "<li class='hd-regist-btm'><a href='/html/register.htm'>注册</a></li>";
		htmlContent += "</ul></div>";
	}else{
		htmlContent += "<div class='hd-login'>";
		htmlContent += "<ul class='hd-login-win' style='display:none;'>";
		htmlContent += "<li class='h-l-w-item clearfix'>";
		htmlContent += "<a href='#'><span class='left marginR6'>您好，<span class='orange fB' onclick='$.changeClass(this)'>"+getCookie("memberUsername")+"</span></span><span class='left css-triangle a-r180'></span></a>";
		htmlContent += "<div class='hd-login-handle fadeIn-1s'>";
		htmlContent += "<ul class='hd-login-list' style='display:none;'>";
		htmlContent += "<li class='h-l-h-item'><a href='/member/center/index.htm'>进入我的账户</a></li>";
		htmlContent += "<li class='h-l-h-item'><a href='/member/logout.htm'>退出</a></li>";
		htmlContent += "</ul></div>";
		htmlContent += "<span class='hd-triangle-1 fadeIn-1s'></span>";
		htmlContent += "<span class='hd-triangle fadeIn-1s'></span>";
		htmlContent += "</li></ul>";
		htmlContent += "<ul class='hd-login-in'>";
		htmlContent += "<li class='hd-login-btn'><a href='/html/login.html'>登录</a></li>";
		htmlContent += "<li class='hd-regist-btm'><a href='/html/register.htm'>注册</a></li>";
		htmlContent += "</ul></div>";
	}
	$loginHtmlTag.after(htmlContent);
	
	if(isLogin){
		//定时读取站内消息 5分钟一次
		setInterval(function(){
			if($.loadMessage()){
				$("#msgTag").attr("class", "envelopeA");
			}else{
				$("#msgTag").attr("class", "envelopeN");
			}
		}, 5 * 60 * 1000);
	}
});