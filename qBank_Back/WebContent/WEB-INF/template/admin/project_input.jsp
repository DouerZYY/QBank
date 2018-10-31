<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.qbank.entity.Project"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="http://localhost:8080/qbank/" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>添加/编辑管理员信息 - </title>
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
<script type="text/javascript" src="template/common/editor/kindeditor.js"></script>
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
	Project project = (Project)request.getAttribute("Project");
	if(null!= project){
		flag=2;
	}
%>
</head>
<body class="input">
	<div class="bar">
		
	</div>
	<div class="body">
		<form id="validateForm"<%if(flag==1){ %>action="admin/project!save.action"<%} else{%> action="admin/project!update.action" <%} %> enctype="multipart/form-data" method="post">
			<input type="hidden" name="id" <%if(flag==2){ %> value="${project.id}"<%} %> />
			<table class="inputTable">
				<tr>
					<th>
						项目名称:
					</th>
					<td>
						<input type="text" id="project.projectName" name="project.projectName" class="formText {maxlength:125,required: true}" <%if(flag==2){%> value="${project.projectName}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						申请人电话号码:
					</th>
					<td>
						<input type="text" id="userPhone" name="userPhone" class="formText {min:0,required: true}" <%if(flag==2){%> value="${project.user.phoneNumber}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						项目借款额度:
					</th>
					<td>
						<input type="text" id="project.loanAmount" name="project.loanAmount" class="formText {required: true, min: 0}" <%if(flag==2){%> value="${project.loanAmount}" <%}%>/>	 
						元<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						项目利率:
					</th>
					<td>
						<select name = "project.projectRate" class="{required: true}">
							<option value="">请选择</option>
							<c:forEach items="${dicList}" var="dic" varStatus="vs">
							<option value="${dic.dicCode}"<c:if test="${dic.dicCode==project.projectRate}">selected=true</c:if>>${dic.dicName}</option>
							</c:forEach>  
						</select> 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						项目期限:
					</th>
					<td>
						<select name = "project.term"  class="{required: true}">
							<option value="">请选择</option>
							<c:forEach items="${termList}" var="dics" varStatus="vs">
							<option value="${dics.dicCode}"<c:if test="${dics.dicCode==project.term}">selected=true</c:if>>${dics.dicName}</option>
							</c:forEach>  
						</select> 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						项目还款方式:
					</th>
					<td>
						<select name = "project.repayType"  class="{required: true}">
							<option value="">请选择</option>
							<c:forEach items="${hkList}" var="dics" varStatus="vs">
							<option value="${dics.dicCode}"<c:if test="${dics.dicCode==project.repayType}">selected=true</c:if>>${dics.dicName}</option>
							</c:forEach>  
						</select> 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						项目借款详情:
					</th>
					<td>
						<textarea id="editor" name="project.loanDetail" class="editor {required: true, messagePosition: '#contentMessagePosition'}" rows="20" cols="80">
							<%if(flag==2){%> ${project.loanDetail} <%}%>
						</textarea>
						<div class="blank"></div>
						<span id="contentMessagePosition"></span>
					</td>
				</tr>
				<tr>
					<th>
						项目图
					</th>
					<td>
						<input type="file" name="img" /><%if (flag==2){%> &nbsp;&nbsp;&nbsp;<a href="/qbank${project.projectImageUrl}" class="imagePreview" target="_blank">查看</a><%} %>
					</td>
				</tr>
				<tr>
				    <th>
						开始时间:
					</th>
					<td>
						<input type="text" id="project.startTime" name="project.startTime" class="Wdate formText {required: true}" <%if(flag==2){%> value="${project.startTime}" <%}%>  onFocus="WdatePicker({isShowClear:true,readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" />	 
						<label class="requireField">*</label>
					</td>
					
				</tr>
				<tr>
				    <th>
						结束时间:
					</th>
					<td>
						<input type="text" id="project.endTime" name="project.endTime" class="Wdate formText {required: true}"  <%if(flag==2){%> value="${project.endTime}" <%}%>  onFocus="WdatePicker({isShowClear:true,readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" />	 
						<label class="requireField">*</label>
					</td>
				</tr>								
			</table>
			<div class="buttonArea">
				<input type="submit"  class="formButton" value="确  定"  />&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" class="formButton" onclick="window.history.back(); return false;" value="返  回"  />
			</div>
		</form>
	</div>
</body>
</html>