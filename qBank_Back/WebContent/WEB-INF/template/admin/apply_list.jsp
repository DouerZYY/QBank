<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="http://localhost:8080/qbank/" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>借款申请列表</title>
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
		借款申请列表
	</div>
	<div class="body">
		<form id="listForm" action="admin/apply!list.action" method="post">
			<div class="listBar">
				<input type="button" class="formButton" onclick="location.href='admin/apply!add.action'" value="添加"/>
				<label>查找:</label>
				<select name="pager.property">
					<option value="applyName">
					申请人姓名
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
					  	申请人姓名
					</th>
					<th>
						申请人身份证号码
					</th>
					<th>
						申请金额
					</th>
					<th>
						创建日期
					</th>
					<th>
						编辑 ${isNull}
					</th>

				</tr>
				<c:forEach items="${pager.list}" var="apply" varStatus="vs">  
					<tr>
					<td></td>
						<td>
						${apply.applyName}
						</td>
						<td>
						${apply.idNumber}
						</td>
						<td>
						${apply.applyAmount}元
						</td>
						<td>
						<fmt:formatDate value="${apply.createDate}" type="both" dateStyle="long" timeStyle="short"/>	
						</td>
						<td>
							<a href="admin/apply!edit.action?id=${apply.id}" title="[编辑]">[编辑]</a>
							<a href="admin/apply!delete.action?id=${apply.id}" title="[删除]">[删除]</a>
						</td>
					</tr>
				</c:forEach>  	
				
			</table>
			<c:if test="${pager.list.size() ==0}">
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