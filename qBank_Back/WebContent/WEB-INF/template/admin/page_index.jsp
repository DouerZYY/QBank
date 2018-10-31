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
<title>后台首页- </title>
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
<style>
.list .listTable {
    clear: none;
  
}
</style>
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
</head>
<body class="input list">
	<div class="bar">
		
	</div>
	<div class="body">
			<table class="inputTable">
				<tr>
					<th>
						用户数:
					</th>
					<td>
						<label class="requireField">${memberNum }人</label>
					</td>
					<th>
						平台总投资:
					</th>
					<td>
						<label class="requireField">${totalInvest }元</label>
					</td>
				</tr>
				<tr>
					<th>
					借款申请待处理:
					</th>
					<td>
						<label class="requireField">${totalApply }个</label>
					</td>
				</tr>
				<tr>
					<th>
					债权转让申请:
					</th>
					<td>
						<label class="requireField">${totalTrans }个</label>
					</td>
					<th>
					
					</th>
					<td>
						
					</td>
				</tr>
			</table>
			</div>
			<div>
			<table id="listTable" class="listTable" style="width:575px;margin-top:20px;margin-left:10px;float:left">
				<tr >
					<th >
					  	投资时间
					</th>
					<th>
						投资金额
					</th>
					<th>
						投资人姓名
					</th>
					<th>
						支付状态
					</th>
				</tr>
				<c:forEach items="${pager.list}" var="p" varStatus="vs">  
					<tr>
					
						<td>
						<fmt:formatDate value="${p.createDate }" type="both" dateStyle="long" timeStyle="short"/>	
						</td>
						<td>
						${p.incestAmount }
						</td>
						<td>
						${p.userName }
						</td>
						<td>
						<c:if test="${p.payStatus==1 }">
						支付成功
						</c:if>
						<c:if test="${p.payStatus==2 }">
						支付失败
						</c:if>
						<c:if test="${p.payStatus==3 }">
						待支付
						</c:if>
						</td>
						
					</tr>
				</c:forEach>  	
			</table>
			<table id="listTable" class="listTable" style="width:575px;margin-top:20px;margin-left:40px;float:left">
				<tr >
					<th >
					  	申请人时间
					</th>
					<th>
						申请人姓名
					</th>
					<th>
						申请金额
					</th>
					<th>
						申请状态
					</th>
				</tr>
				<c:forEach items="${applyList}" var="p" varStatus="vs">  
					<tr>
					
						<td>
						<fmt:formatDate value="${p.createDate }" type="both" dateStyle="long" timeStyle="short"/>	
						</td>
						<td>
						${p.applyName }
						</td>
						<td>
						${p.applyAmount }
						</td>
						<td>
						<c:if test="${p.applyStatus==0 }">
						待审核
						</c:if>
						<c:if test="${p.applyStatus==1 }">
						审核通过待发标
						</c:if>
						<c:if test="${p.applyStatus==2 }">
						审核失败
						</c:if>
						
						</td>
						
					</tr>
				</c:forEach>  	
			</table>
			</div>
</body>
</html>