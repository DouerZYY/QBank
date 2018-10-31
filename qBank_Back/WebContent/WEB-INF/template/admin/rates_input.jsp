<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.qbank.entity.Rates"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="http://localhost:8080/qbank/" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>添加/编辑利率 - </title>
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
	Rates rates = (Rates)request.getAttribute("rates");
	if(null!= rates){
		flag=2;
	}
%>
</head>
<body class="input">
	<div class="bar">
		
	</div>
	<div class="body">
		<form id="validateForm"<%if(flag==1){ %>action="admin/rates!save.action"<%} else{%> action="admin/rates!update.action" <%} %>method="post">
			<input type="hidden" name="id" <%if(flag==2){ %> value="${rates.id}"<%} %> />
			<table class="inputTable">
				<tr>
					<th>
						编码:
					</th>
					<td>
						<input type="text" id="rates.rateCode" name="rates.rateCode" class="formText {required: true, min: 0}" <%if(flag==2){%> value="${rates.rateCode}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						利率数值:
					</th>
					<td>
						<input type="text" id="rates.rateAmount" name="rates.rateAmount" class="formText {required: true, min: 0}" <%if(flag==2){%> value="${rates.rateAmount}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						类型:
					</th>
					<td>
						<select name="rates.rateType" class="{required: true}" >
							<option value="">请选择…</option>
							<c:forEach items="${dicList}" var="dics" varStatus="vs">
							<option value="${dics.dicCode}"<c:if test="${dics.dicCode==rates.rateType}">selected=true</c:if>>${dics.dicName}</option>
							</c:forEach>  
						</select>
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
				    <th>
						是否启用:
					</th>
					<td>
						<select name="rates.isEnable"  class="{required: true}">
								<option value="">请选择…</option>
								<option value="1" <c:if test="${1==rates.isEnable}">selected=true</c:if>>是</option>
								<option value="0" <c:if test="${0==rates.isEnable}">selected=true</c:if>>否</option>
						</select>
					</td>
					
				</tr>
			</table>
			<div class="buttonArea">
				<input type="submit"  class="formButton" value="确  定"  />&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" class="formButton" onclick="window.history.back(); return false;" value="返  回"/>
			</div>
		</form>
	</div>
</body>
</html>