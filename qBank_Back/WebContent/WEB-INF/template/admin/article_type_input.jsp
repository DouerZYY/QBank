<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.qbank.entity.ArticleType"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="http://localhost:8080/qbank/" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>添加/编辑文章类型 - </title>
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
	ArticleType articleType = (ArticleType)request.getAttribute("articleType");
	if(null!= articleType){
		flag=2;
	}
%>
</head>
<body class="input">
	<div class="bar">
		
	</div>
	<div class="body">
		<form id="validateForm"<%if(flag==1){ %>action="admin/article_type!save.action"<%} else{%> action="admin/article_type!update.action" <%} %>method="post">
			<input type="hidden" name="id" <%if(flag==2){ %> value="${articleType.id}"<%} %> />
			<table class="inputTable">
				<tr>
					<th>
						文章类型名称:
					</th>
					<td>
						<input type="text" id="articleType.typeName" name="articleType.typeName"  <%if(flag==2){%> value="${articleType.typeName}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						文章类型编码:
					</th>
					<td>
						<input type="text" id="articleType.artTypeCode" name="articleType.artTypeCode"  <%if(flag==2){%> value="${articleType.artTypeCode}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						父类型:
					</th>
					<td>
						<select name="articleType.parentId" >
								<option value="">请选择</option>
								<c:forEach items="${articleTypeList}" var="articleTypes" varStatus="vs">
								<option value="${articleTypes.id}" <c:if test="${articleTypes.id==articleType.parentId}">selected=true</c:if>>${articleTypes.typeName}</option>
								</c:forEach>  
						</select>
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