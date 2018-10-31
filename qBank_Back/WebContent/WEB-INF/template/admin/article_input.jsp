<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.qbank.entity.Article"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	Article article = (Article)request.getAttribute("article");
	if(null!= article){
		flag=2;
	}
%>
</head>
<body class="input">
	<div class="bar">
		
	</div>
	<div class="body">
		<form id="validateForm"<%if(flag==1){ %>action="admin/article!save.action"<%} else{%> action="admin/article!update.action" <%} %>method="post" enctype="multipart/form-data">
			<input type="hidden" name="id" <%if(flag==2){ %> value="${article.id}"<%} %> />
			<table class="inputTable">
				<tr>
					<th>
						文章标题:
					</th>
					<td>
						<input type="text" id="article.articleTitle" name="article.articleTitle" class="formText {maxlength:125,required: true}"  <%if(flag==2){%> value="${article.articleTitle}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						文章作者:
					</th>
					<td>
						<input type="text" id="article.articleAuthor" name="article.articleAuthor" class="formText {maxlength:125,required: true}"  <%if(flag==2){%> value="${article.articleAuthor}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
				<tr>
					<th>
						文章热点:
					</th>
					<td>
						<input type="text" id="article.articleHot" name="article.articleHot" class="formText {maxlength:125,required: true}"  <%if(flag==2){%> value="${article.articleHot}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						文章图片:
					</th>
					<td>
						<input type="file" id="article.pictureUrl" name="img" />
						<%if (flag==2){%> &nbsp;&nbsp;&nbsp;<a href="/qbank${article.pictureUrl}" class="imagePreview" target="_blank">查看</a><%} %>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						文章类型:
					</th>
					<td>
						<select name="articleTypeId" >
							<option value="">请选择</option>
							<c:forEach items="${artTypeList}" var="articleType" varStatus="vs">  
							<option value="${articleType.id}"<c:if test="${articleType.id==article.articleType.id}">selected=true</c:if>>${articleType.typeName}</option>
							</c:forEach>  	
						</select>
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						内容:
					</th>
					<td>
						<textarea id="editor" name="article.content" class="editor {required: true, messagePosition: '#contentMessagePosition'}" rows="20" cols="100">
							<%if(flag==2){%> ${article.content} <%}%>
						</textarea>
						<div class="blank"></div>
						<span id="contentMessagePosition"></span>
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