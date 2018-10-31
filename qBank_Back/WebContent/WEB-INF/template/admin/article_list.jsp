<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="http://localhost:8080/qbank/" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>利率列表 - Powered By ${setting.systemName}</title>
<meta name="Author" content="${setting.author}" />
<meta name="Copyright" content="${setting.copyright}" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link href="template/admin/css/base.css" rel="stylesheet" type="text/css" />
<link href="template/admin/css/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="template/common/js/jquery.js"></script>
<script type="text/javascript" src="template/common/js/jquery.pager.js"></script>
<script type="text/javascript" src="template/admin/js/base.js"></script>
<script type="text/javascript" src="template/admin/js/admin.js"></script>
</head>

<body class="list">
	<div class="bar">
		利率列表
	</div>
	<div class="body">
		<form id="listForm" action="admin/article!list.action" method="post">
			<div class="listBar">
				<input type="button" class="formButton" onclick="location.href='admin/article!add.action'" value="添加"/>
				<label>查找:</label>
				<select name="pager.property">
					<option value="articleTitle">
						文章标题
					</option>
					<option value="articleAuthor" >
						文章作者
					</option>
					<option value="articleHot" >
						文章热点
					</option>
				</select>
				<input type="text" name="pager.keyword" id="page.keyword" />
				<input type="button" id="searchButton" class="formButton" value="搜 索" />
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>每页显示:</label>
				<select name="pager.pageSize" id="pageSize">
					<option value="10"  <c:if test="${pager.pageSize ==10}">selected="selected"</c:if>>
						10
					</option>
					<option value="20" <c:if test="${pager.pageSize ==20}">selected="selected"</c:if>>
						20
					</option>
					<option value="50"<c:if test="${pager.pageSize ==50}">selected="selected"</c:if>>
						50
					</option>
					<option value="100" <c:if test="${pager.pageSize ==100}">selected="selected"</c:if>>
						100
					</option>
				</select>
			</div>
			<table id="listTable" class="listTable">
				<tr>
					<th class="check">
						
					</th>
					<th>
					  	文章标题
					</th>
					<th>
						文章作者
					</th>
					<th>
						文章热点
					</th>
					<th>
						创建日期
					</th>
					<th>
						编辑 
					</th>

				</tr>
				<c:forEach items="${pager.list}" var="article" varStatus="vs">  
					<tr>
					<td></td>
						<td>
						${article.articleTitle}
						</td>
						<td>
						${article.articleAuthor}
						</td>
						<td>
						${article.articleHot}
						</td>
						<td>
						<fmt:formatDate value="${article.createDate}" type="both" dateStyle="long" timeStyle="short"/>	
						</td>
						<td>
							<a href="admin/article!edit.action?id=${article.id}" title="[编辑]">[编辑]</a>
							<a href="admin/article!delete.action?id=${article.id}" title="[删除]">[删除]</a>
						</td>
					</tr>
				</c:forEach>  	
			</table>
			<c:if test="${ pager.list.size()== 0}">
				<div class="noRecord">
					没有找到任何记录!
				</div>
			</c:if>
			<div class="pager">
			<jsp:include page="/WEB-INF/template/admin/pager.jsp" />
			</div>
		</form>
	</div>
</body>
</html>