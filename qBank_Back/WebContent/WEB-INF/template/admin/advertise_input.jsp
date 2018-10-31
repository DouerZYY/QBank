<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.qbank.entity.Advertise"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="http://localhost:8080/qbank/" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>添加/编辑广告信息 - </title>
<meta name="Author" content="" />
<meta name="Copyright" content="" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link href="template/admin/css/base.css" rel="stylesheet" type="text/css" />
<link href="template/admin/css/admin.css" rel="stylesheet" type="text/css" />
<link href="template/common/css/jquery.datepicker.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="template/common/js/jquery.js"></script>
<script type="text/javascript" src="template/common/js/jquery.tools.js"></script>
<script type="text/javascript" src="template/common/js/jquery.livequery.js"></script>
<script type="text/javascript" src="template/common/js/jquery.datepicker.js"></script>
<script type="text/javascript" src="template/common/js/jquery.metadata.js"></script>
<script type="text/javascript" src="template/common/js/jquery.validate.js"></script>
<script type="text/javascript" src="template/common/js/jquery.validate.methods.js"></script>
<script type="text/javascript" src="template/common/js/jquery.validate.cn.js"></script>
<script type="text/javascript" src="/qbank/template/common/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="template/admin/js/base.js"></script>
<script type="text/javascript" src="template/admin/js/admin.js"></script>


<script type="text/javascript">
$().ready( function() {

	var $systemUrl = $("#systemUrl");
	var $url = $("#url");

	// 将选择的系统内容地址填充至链接地址中
	$systemUrl.change( function() {
		$url.val($systemUrl.val());
	});
	
	// 链接地址内容修改时，系统内容选择框修改为不选择任何项目
	$url.keypress( function() {
		$systemUrl.val("");
	});
})
	// 日期选择框
	var $currentDatePicker;
	var datePickerOptions = {
        format: "Y-m-d",
		date: new Date(),
		calendars: 1,
		starts: 1,
		position: "right",
		prev: "<<",
		next: ">>",
		locale: {
			days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
			daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
			daysMin: ["日", "一", "二", "三", "四", "五", "六", "日"],
			months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
			monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
			weekMin: ' '
		},
		onBeforeShow: function(){
			$currentDatePicker = $(this);
			var currentDate = $.trim($currentDatePicker.val());
			if (currentDate != "") {
				var reg = /^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/;
				if(currentDate.match(reg) != null) {
					$currentDatePicker.DatePickerSetDate($currentDatePicker.val(), true);
				}
			}
		},
		onChange: function(formated, dates){
			$currentDatePicker.val(formated);
		}
    };
    $("input.datePicker").DatePicker(datePickerOptions);
	
	// 重新绑定日期选择框
	$.bindDatePicker = function () {
		$("input.datePicker").DatePicker(datePickerOptions);
	}
</script>
<%	
	int flag = 1;//1为添加，2为编辑
	Advertise advertise = (Advertise)request.getAttribute("advertise");
	if(null!= advertise){
		flag=2;
	}
%>
</head>
<body class="input">
	<div class="bar">
		
	</div>
	<div class="body">
		<form id="validateForm"<%if(flag==1){ %>action="admin/advertise!save.action"<%} else{%> action="admin/advertise!update.action" <%} %>method="post">
			<input type="hidden" name="id" <%if(flag==2){ %> value="${advertise.id}"<%} %> />
			<table class="inputTable">
				<tr>
					<th>
						广告名称:
					</th>
					<td>
						<input type="text" id="advertise.adName" name="advertise.adName" class="formText {maxlength:125,required: true}" <%if(flag==2){%> value="${advertise.adName}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						图片位置:
					</th>
					<td>
						<input type="text" id="advertise.adUrl" name="advertise.adUrl" class="formText {maxlength:125,required: true}"  <%if(flag==2){%> value="${advertise.adUrl}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						广告位置:
					</th>
					<td>
						<input type="text" id="advertise.adPositon" name="advertise.adPositon" class="formText {maxlength:125,required: true}"  <%if(flag==2){%> value="${advertise.adPositon}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
				    <th>
						开始时间:
					</th>
					<td>
						<input type="text" id="advertise.startTime" name="advertise.startTime" class="Wdate formText {required: true}" <%if(flag==2){%> value="${advertise.startTime}" <%}%>  onFocus="WdatePicker({isShowClear:true,readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" />	 
						<label class="requireField">*</label>
					</td>
					
				</tr>
				<tr>
				    <th>
						结束时间:
					</th>
					<td>
						<input type="text" id="advertise.endTime" name="advertise.endTime" class="Wdate formText {required: true}"  <%if(flag==2){%> value="${advertise.endTime}" <%}%>  onFocus="WdatePicker({isShowClear:true,readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" />	 
						<label class="requireField">*</label>
					</td>
				</tr>
			</table>
			<div class="buttonArea">
				<input type="submit"  class="formButton" value="确  定"  />&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" class="formButton" onclick="javascript:history.go(-1)" value="返  回" />
			</div>
		</form>
	</div>
</body>
</html>