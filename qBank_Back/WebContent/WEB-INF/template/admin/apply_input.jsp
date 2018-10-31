<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.qbank.entity.Apply"%>
<%@page import="com.qbank.entity.Attachment"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="http://localhost:8080/qbank/" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>借款编辑/添加 - </title>
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
	Apply apply = (Apply)request.getAttribute("apply");
	if(null!= apply){
		flag=2;
	}
%>
</head>
<body class="input">
	<div class="bar">
		
	</div>
	<div class="body">
		<form id="validateForm"<%if(flag==1){ %>action="admin/apply!save.action"<%} else{%> action="admin/apply!update.action" <%} %> enctype="multipart/form-data" method="post">
			<input type="hidden" name="id" <%if(flag==2){ %> value="${apply.id}"<%} %> />
			<table class="inputTable">
				<tr>
					<th>
						借款人姓名:
					</th>
					<td>
						<input type="text" id="apply.applyName" name="apply.applyName" class="formText {maxlength:125,required: true}"  <%if(flag==2){%> value="${apply.applyName}"<%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						借款人身份证号码:
					</th>
					<td>
						<input type="text" id="apply.idNumber" name="apply.idNumber" class="formText {maxlength:125,required: true}"   <%if(flag==2){%> value="${apply.idNumber}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						借款金额:
					</th>
					<td>
						<input type="text" id="apply.applyAmount" name="apply.applyAmount" class="formText {required: true, min: 0}"  <%if(flag==2){%> value="${apply.applyAmount}"<%}%>/>	 
						元<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
				    <th>
						借款周期:
					</th>
					<td>
						<select name="apply.applyTime" id= "apply.applyTime" class="{required: true}">
								<option value="">请选择…</option>
								<c:forEach items="${zqList}" var="dicZQ" varStatus="vs">  
								<option value="${dicZQ.dicCode}" <c:if test="${dicZQ.dicCode==apply.applyTime}">selected=true</c:if>>${dicZQ.dicName}</option>
								</c:forEach>  
						</select>
					</td>
					
				</tr>
				<tr>
				    <th>
						提款时间:
					</th>
					<td>
						<select name="apply.payDate" class="{required: true}" >
								<option value="">请选择…</option>
								<c:forEach items="${tkList}" var="dicTK" varStatus="vs">  
								<option value="${dicTK.dicCode}"<c:if test="${dicTK.dicCode==apply.payDate}">selected=true</c:if>>${dicTK.dicName}</option>
								</c:forEach>  
						</select>
					</td>
				</tr>
				<tr>
				    <th>
						申请状态:
					</th>
					<td>
						<select name="apply.applyStatus" class="{required: true}" >
								<option value="">请选择…</option>
								<c:forEach items="${ztList}" var="dicZT" varStatus="vs">  
								<option value="${dicZT.dicCode}"<c:if test="${dicZT.dicCode==apply.applyStatus}">selected=true</c:if>>${dicZT.dicName}</option>
								</c:forEach>  
						</select>
					</td>
				</tr>
				<tr>
				    <th>
						审核资料:
					</th>
					<td>
						<input type="file" name="attach"  /><%if (flag==2){%> &nbsp;&nbsp;&nbsp;<a href="/qbank${apply.attachment.getAttachmentUrl()}" class="imagePreview" target="_blank">查看</a><%} %>
					</td>
				</tr>
			</table>
			<div class="buttonArea">
				<input type="submit"  class="formButton" value="确  定"  />&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" class="formButton" onclick="window.history.back(); return false;" value="返  回" />
			</div>
		</form>
	</div>
</body>
</html>