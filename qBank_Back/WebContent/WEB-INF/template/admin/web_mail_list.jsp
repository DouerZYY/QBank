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
		站内信列表
	</div>
	<div class="body">
		<form id="listForm" action="admin/rates!search.action" method="post">
			<div class="listBar">
				<input type="button" class="formButton" onclick="location.href='admin/web_mail!add.action'" value="添加"/>
				<label>查找:</label>
				<select name="pager.property">
					<option value="rates.rateCode" >
						编码
					</option>
				</select>
				<input type="text" name="pager.keyword" id="page.keyword" />
				<input type="submit" id="searchButton" class="formButton"  value="搜 索" />
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>每页显示:</label>
				<select name="pager.pageSize" id="pageSize">
					<option value="10" >
						10
					</option>
					<option value="20" >
						20
					</option>
					<option value="50">
						50
					</option>
					<option value="100" >
						100
					</option>
				</select>
			</div>
			<table id="listTable" class="listTable">
				<tr>
					<th class="check">
						
					</th>
					<th>
					  发送人
					</th>
					<th>
					接收人
					</th>
					<th>
						是否已读
					</th>
					<th>
						创建日期
					</th>
					<th>
						操作
					</th>

				</tr>
				<c:forEach items="${pager.list}" var="mail" varStatus="vs">  
					<tr>
					<td></td>
						<td>
						${mail.admin.adminName}
						</td>
						<td>
						${mail.User.name}
						</td>
						<td>
						<c:if test="${mail.isRead==1}">是</c:if>
						<c:if test="${mail.isRead==0}">否</c:if>
						</td>
						<td>
						<fmt:formatDate value="${rates.createDate }" type="both" dateStyle="long" timeStyle="short"/>	
						</td>
						<td>
							<a href="admin/web_mail!delete.action?id=${rates.id}" title="[删除]">[删除]</a>
						</td>
					</tr>
				</c:forEach>  	
				
			</table>
			<c:if test="${isNull==0}">
				<div class="noRecord">
					没有找到任何记录!
				</div>
			</c:if>
		</form>
	</div>
</body>
</html>