<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.qbank.entity.Grade"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="http://localhost:8080/qbank/" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>添加/编辑广告位置 - </title>
<meta name="Author" content="" />
<meta name="Copyright" content="" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link href="template/admin/css/base.css" rel="stylesheet" type="text/css" />
<link href="template/admin/css/admin.css" rel="stylesheet" type="text/css" />
<link href="template/common/css/jquery.datepicker.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="template/common/js/jquery.js"></script>
<script type="text/javascript" src="template/common/js/jquery.metadata.js"></script>
<script type="text/javascript" src="template/common/js/jquery.validate.js"></script>
<script type="text/javascript" src="template/common/js/jquery.validate.methods.js"></script>
<script type="text/javascript" src="template/common/js/jquery.validate.cn.js"></script>
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
</script>
<%	
	int flag = 1;//1为添加，2为编辑
	Grade grade = (Grade)request.getAttribute("grade");
	if(null!= grade){
		flag=2;
	}
%>
</head>
<body class="input">
	<div class="bar">
		
	</div>
	<div class="body">
		<form id="validateForm"<%if(flag==1){ %>action="admin/grade!save.action"<%} else{%> action="admin/grade!update.action" <%} %>method="post">
			<input type="hidden" name="id" <%if(flag==2){ %> value="${grade.id}"<%} %> />
			<table class="inputTable">
				<tr>
					<th>
						用户等级名称
					</th>
					<td>
						<input type="text" id="grade.name" name="grade.name" class="formText {maxlength:125,required: true}"  <%if(flag==2){%> value="${grade.name}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						用户等级借款金额:
					</th>
					<td>
						<input type="text" id="grade.amount" name="grade.amount" class="formText {min:0,required: true}"  <%if(flag==2){%> value="${grade.amount}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						用户信用等级特权:
					</th>
					<td>
						<input type="text" id="grade.level" name="grade.level"  <%if(flag==2){%> value="${grade.level}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						信用等级编码:
					</th>
					<td>
						<input type="text" id="grade.gradeCode" name="grade.gradeCode" class="formText {min:0,required: true}" <%if(flag==2){%> value="${grade.gradeCode}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>				
			</table>
			<div class="buttonArea">
				<input type="submit"  class="formButton" value="确  定"  />&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" class="formButton" onclick="javascript:history.go(-1)" value="返  回"  />
			</div>
		</form>
	</div>
</body>
</html>