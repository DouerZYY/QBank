﻿/***
 *	SSBANK Base JavaScript
 *
 *	http://www.ssbank.cn
 *
 *	Copyright © 2015 ssbank.cn All Rights Reserved. 
 **/
//获取从今天第i个月以后的日期
function current(i){ 
	var d=new Date(),str='';
	if((d.getMonth()+i)<12){
		a=d.getFullYear()+'-'; //获取当前年份 
		b=d.getMonth()+(i+1)+'-'; //获取当前月份（0——11） 
		c=d.getDate(); 
		str=a+b+c;
	}else{	
		a=d.getFullYear()+1+'-';
		b=(d.getMonth()+i-11)+'-';
		c=d.getDate(); 
		str=a+b+c;
	}
	return str; 
} 
//计算两个日期之间的天数
function DateDiff(sDate1, sDate2) {  //sDate1和sDate2是yyyy-MM-dd格式

	   
    var aDate, oDate1, oDate2, iDays;
  aDate = sDate1.split("-");
  oDate1 = new Date(aDate[0] , aDate[1] ,aDate[2]) //转换为12-18-2006格式 
	aDate = sDate2.split("-") 
	oDate2 = new Date(aDate[0] , aDate[1] , aDate[2]) ;
  iDays = parseInt(Math.abs(oDate1 - oDate2) / 1000 / 60 / 60 / 24); //把相差的毫秒数转换为天数
  return iDays;  //返回相差天数
}


// 解决IE6不缓存背景图片问题
if(!window.XMLHttpRequest) {
	document.execCommand("BackgroundImageCache", false, true);
}

// 添加收藏夹
function addFavorite(url, title) {
	if (document.all) {
		window.external.addFavorite(url, title);
	} else if (window.sidebar) {
		window.sidebar.addPanel(title, url, "");
	}
}

// html字符串转义
function htmlEscape(htmlString) {
	htmlString = htmlString.replace(/&/g, '&amp;');
	htmlString = htmlString.replace(/</g, '&lt;');
	htmlString = htmlString.replace(/>/g, '&gt;');
	htmlString = htmlString.replace(/'/g, '&acute;');
	htmlString = htmlString.replace(/"/g, '&quot;');
	htmlString = htmlString.replace(/\|/g, '&brvbar;');
	return htmlString;
}

// 设置Cookie
function setCookie(name, value) {
	var expires = (arguments.length > 2) ? arguments[2] : null;
	document.cookie = name + "=" + encodeURIComponent(value) + ((expires == null) ? "" : ("; expires=" + expires.toGMTString())) + ";path=" + ssbank.base;
}


// 获取Cookie
function getCookie(name) {
	var value = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
	if (value != null) {
		return decodeURIComponent(value[2]);
    } else {
		return null;
	}
}

// 删除cookie
function deleteCookie(name) {
	var expires = new Date();
	expires.setTime(expires.getTime() - 1000 * 60);
	setCookie(name, "", expires);
}

// 浮点数加法运算
function floatAdd(arg1, arg2) {
	var r1, r2, m;
	try{
		r1 = arg1.toString().split(".")[1].length;
	} catch(e) {
		r1 = 0;
	}
	try {
		r2 = arg2.toString().split(".")[1].length;
	} catch(e) {
		r2 = 0;
	}
	m = Math.pow(10, Math.max(r1, r2));
	return (arg1 * m + arg2 * m) / m;
}

// 浮点数减法运算
function floatSub(arg1, arg2) {
	var r1, r2, m, n;
	try {
		r1 = arg1.toString().split(".")[1].length;
	} catch(e) {
		r1 = 0
	}
	try {
		r2 = arg2.toString().split(".")[1].length;
	} catch(e) {
		r2 = 0
	}
	m = Math.pow(10, Math.max(r1, r2));
	n = (r1 >= r2) ? r1 : r2;
	return ((arg1 * m - arg2 * m) / m).toFixed(n);
}

// 浮点数乘法运算
function floatMul(arg1, arg2) {
	var m = 0, s1 = arg1.toString(), s2 = arg2.toString();
	try {
		m += s1.split(".")[1].length;
	} catch(e) {}
	try {
		m += s2.split(".")[1].length;
	} catch(e) {}
	return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) / Math.pow(10, m);
}

// 浮点数除法运算
function floatDiv(arg1, arg2) {
	var t1 = 0, t2 = 0, r1, r2;    
	try {
		t1 = arg1.toString().split(".")[1].length;
	} catch(e) {}
	try {
		t2 = arg2.toString().split(".")[1].length;
	} catch(e) {}
	with(Math) {
		r1 = Number(arg1.toString().replace(".", ""));
		r2 = Number(arg2.toString().replace(".", ""));
		return (r1 / r2) * pow(10, t2 - t1);
	}
}

// 设置数值精度
function setScale(value, scale, roundingMode) {
	if (roundingMode.toLowerCase() == "roundhalfup") {
		return (Math.round(value * Math.pow(10, scale)) / Math.pow(10, scale)).toFixed(scale);
	} else if (roundingMode.toLowerCase() == "roundup") {
		return (Math.ceil(value * Math.pow(10, scale)) / Math.pow(10, scale)).toFixed(scale);
	} else {
		return (Math.floor(value * Math.pow(10, scale)) / Math.pow(10, scale)).toFixed(scale);
	}
}

// 格式化商品价格货币
function priceCurrencyFormat(price) {
	price = setScale(price, shopxx.priceScale, shopxx.priceRoundType);
	return shopxx.currencySign + price;
}

// 格式化商品价格货币（包含货币单位）
function priceUnitCurrencyFormat(price) {
	price = setScale(price, shopxx.priceScale, shopxx.priceRoundType);
	return shopxx.currencySign + price + shopxx.currencyUnit;
}

// 格式化订单金额货币
function orderCurrencyFormat(price) {
	price = setScale(price, shopxx.orderScale, shopxx.orderRoundType);
	return shopxx.currencySign + price;
}

// 格式化订单金额货币（包含货币单位）
function orderUnitCurrencyFormat(price) {
	price = setScale(price, shopxx.orderScale, shopxx.orderRoundType);
	return shopxx.currencySign + price + shopxx.currencyUnit;
}

/**
 * 金额格式化
 * @param value 值
 * @param precision 精确到小数点后的位数
 * @returns {String}
 */
function moneyFormat(value, precision) {
	precision = precision > 0 && precision <= 20 ? precision : 2;
	value = parseFloat((value + "").replace(/[^\d\.-]/g, "")).toFixed(precision) + "";
	var l = value.split(".")[0].split("").reverse(), r = value.split(".")[1];
	var t = "";
	for (i = 0; i < l.length; i++) {
		t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? "," : "");
	}
	return t.split("").reverse().join("") + "." + r;
}

$().ready( function() {
	
	var $body;
	var $select;
	
	var dialogIdNumber = 0;
	var dialogZIndex = 100;
	var messageIdNumber = 0;
	
	$.dialog = function (settings) {
		
		var dialogId;
		
		if (settings.id != null) {
			dialogId = settings.id;
		} else {
			dialogId = "dialog" + dialogIdNumber;
			dialogIdNumber ++;
		}
		if (settings.content == null) {
			settings.content = "";
		}
		if (settings.width == null || settings.width == "auto") {
			settings.width = 320;
		}
		if (settings.height == null) {
			settings.height = "auto";
		}
		
		if ($body == null) {
			$body = $("body");
		}
		if(!window.XMLHttpRequest && $select == null) {
			$select = $("select");
		}
		if ($select != null) {
			$select.css("visibility", "hidden");
		}
		
		var dialogHtml = "";
		
		if (settings.modal == true) {
			dialogHtml += '<div id="dialogOverlay' + dialogId + '" class="dialogOverlay"></div>';
		}
		
		if (settings.className != null) {
			dialogHtml += '<div id="' + dialogId + '" class="baseDialog ' + settings.className + '"><div class="dialogWrap"></div><div class="dialogMain">';
		} else {
			dialogHtml += '<div id="' + dialogId + '" class="baseDialog"><div class="dialogWrap"></div><div class="dialogMain">';
		}
		
		if (settings.title != null) {
			dialogHtml += '<div id="dialogTitle' + dialogId + '" class="dialogTitle">' + settings.title + '</div><div id="dialogClose' + dialogId + '" class="dialogClose"></div>';
		} else {
			dialogHtml += '<div id="dialogClose' + dialogId + '" class="dialogClose"></div>';
		}
		
		if (settings.type != null) {
			dialogHtml += '<div id="dialogContent' + dialogId + '" class="dialogContent dialog' + settings.type + 'Icon">' + settings.content + '</div>';
		} else {
			dialogHtml += '<div id="dialogContent' + dialogId + '" class="dialogContent">' + settings.content + '</div>';
		}
		
		if (settings.ok != null || settings.cancel != null) {
			dialogHtml += '<div id="dialogButtonArea' + dialogId + '" class="dialogButtonArea">';
		}
		
		if (settings.ok != null) {
			dialogHtml += '<input type="button" id="dialogOk' + dialogId + '" class="formButton" value="' + settings.ok + '" hidefocus="true" />';
		}
		
		if (settings.cancel != null) {
			dialogHtml += '<input type="button" id="dialogCancel' + dialogId + '" class="formButton" value="' + settings.cancel + '" hidefocus="true" />';
		}
		
		if (settings.ok != null || settings.cancel != null) {
			dialogHtml += '</div>';
		}
		
		dialogHtml += '</div></div>';
		
		$body.append(dialogHtml);
		
		var isDialogTitleDown = false;
		var dialogX;
		var dialogY;
		
		var $dialogOverlay = $("#dialogOverlay" + dialogId);
		var $dialog = $("#" + dialogId);
		var $dialogTitle = $("#dialogTitle" + dialogId);
		var $dialogClose = $("#dialogClose" + dialogId);
		var $dialogOk = $("#dialogOk" + dialogId);
		var $dialogCancel = $("#dialogCancel" + dialogId);
		
		$dialog.css({"width": settings.width, "height": settings.height, "margin-left": - parseInt(settings.width / 2), "z-index": dialogZIndex ++});
		
		function dialogClose() {
			if ($select != null) {
				$select.css("visibility", "visible");
			}
			$dialogOverlay.remove();
			$dialog.remove();
		}
		
		if (settings.autoCloseTime != null) {
			setTimeout(dialogClose, settings.autoCloseTime);
		}
		
		$dialogClose.click( function() {
			if ($.isFunction(settings.cancelCallback)) {
				if (settings.cancelCallback.apply() != false) {
					dialogClose();
				}
			} else {
				dialogClose();
			}
		});
		
		$dialogOk.click( function() {
			if ($.isFunction(settings.okCallback)) {
				if (settings.okCallback.apply() != false) {
					dialogClose();
				}
			} else {
				dialogClose();
			}
		});
		
		$dialogCancel.click( function() {
			if ($.isFunction(settings.cancelCallback)) {
				if (settings.cancelCallback.apply() != false) {
					dialogClose();
				}
			} else {
				dialogClose();
			}
		});
		
		$dialogTitle.mousedown(function (event) {
			$dialog.css({"z-index": dialogZIndex ++});
			var offset = $(this).offset();
			if(!window.XMLHttpRequest) {
				dialogX = event.clientX - offset.left + 6;
				dialogY = event.clientY - offset.top + 6;
			} else {
				dialogX = event.pageX - offset.left + 6;
				dialogY = event.pageY - offset.top + 6;
			}
			isDialogTitleDown = true;
			return false;
		});
		
		$(document).mousemove(function (event) {
			if (!isDialogTitleDown) {
				return false;
			}
			$dialog.css({"top": event.clientY - dialogY, "left": event.clientX - dialogX, "margin": 0});
		}).mouseup(function () {
			isDialogTitleDown = false;
		});
		
		$dialog.keypress(function(event) {
			if(event.keyCode == 13) {
				if ($.isFunction(settings.okCallback)) {
					if (settings.okCallback.apply() != false) {
						dialogClose();
					}
				} else {
					dialogClose();
				}
			}  
		});
		
		$dialogOverlay.show();
		$dialog.show();
		$dialog.focus();
		
		return dialogId;
	}
	
	$.closeDialog = function (dialogId) {
		if ($select != null) {
			$select.css("visibility", "visible");
		}
		
		var $dialogOverlay = $("#dialogOverlay" + dialogId);
		var $dialog = $("#" + dialogId);
		
		$dialogOverlay.remove();
		$dialog.remove();
	}
	
	$.message = function (settings) {
	
		if (settings.content == null) {
			settings.content = "";
		}
		
		if ($body == null) {
			$body = $("body");
		}
		if(!window.XMLHttpRequest && $select == null) {
			$select = $("select");
		}
		if ($select != null) {
			$select.css("visibility", "hidden");
		}
		
		var messageId = "message" + messageIdNumber;
		messageIdNumber ++;
		
		var messageHtml;
		
		if (settings.type != null) {
			messageHtml = '<div id="' + messageId + '" class="baseMessage"><div class="messageContent message' + settings.type + 'Icon">' + settings.content + '</div></div>';
		} else {
			messageHtml = '<div id="' + messageId + '" class="baseMessage"><div class="messageContent">' + settings.content + '</div></div>';
		}
		
		$body.append(messageHtml);
		
		var $message = $("#" + messageId);
		
		$message.css({"margin-left": "-" + parseInt($message.width() / 2) + "px"}).show();
		
		setTimeout(function() {
			$message.animate({left: 0, opacity: "hide"}, "slow", function() {
				$message.remove();
				if ($select != null) {
					$select.css("visibility", "visible");
				}
			});
		}, 2000);
		
		return messageId;
	}

});