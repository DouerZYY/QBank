<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.qbank.entity.AdPosition"%>
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
	AdPosition adPosition = (AdPosition)request.getAttribute("AdPosition");
	if(null!= adPosition){
		flag=2;
	}
%>
</head>
<body class="input">
	<div class="bar">
		
	</div>
	<div class="body">
		<form id="validateForm"<%if(flag==1){ %>action="admin/ad_position!save.action"<%} else{%> action="admin/ad_position!update.action" <%} %>method="post">
			<input type="hidden" name="id" <%if(flag==2){ %> value="${adPosition.id}"<%} %> />
			<table class="inputTable">
				<tr>
					<th>
						广告位置名称:
					</th>
					<td>
						<input type="text" id="adPosition.positionName" name="adPosition.positionName"  class="formText {maxlength:125,required: true}"  <%if(flag==2){%> value="${adPosition.positionName}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						广告位置代码:
					</th>
					<td>
						<input type="text" id="adPosition.positionCode" name="adPosition.positionCode" class="formText {maxlength:125,required: true}" <%if(flag==2){%> value="${adPosition.positionCode}" <%}%>/>	 
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