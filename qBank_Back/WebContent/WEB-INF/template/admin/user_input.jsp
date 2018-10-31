<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.qbank.entity.User"%>
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
<script type="text/javascript" src="template/common/js/jquery.metadata.js"></script>
<script type="text/javascript" src="template/common/js/jquery.validate.js"></script>
<script type="text/javascript" src="template/common/js/jquery.validate.methods.js"></script>
<script type="text/javascript" src="template/common/js/jquery.validate.cn.js"></script>
<script type="text/javascript" src="template/admin/js/base.js"></script>
<script type="text/javascript" src="template/admin/js/admin.js"></script>
<style type="text/css">
.PerProductListTitleNew {
    background-color: #f4f4f4;
    padding: 6px 10px;
    height: 24px;
    line-height: 24px;
    font-size: 14px;
    font-weight: 700;
}
.PerProductListNew {
    color: #666;
}
.w220 {
    width: 220px!important;
}
.w200 {
    width: 200px!important;
}
.table-center {
    text-align: center;
}
.left {
    FLOAT: left;
}
.marginB20 {
    margin-bottom: 20px!important;
}
.Padding20 {
    padding: 20px;
}
.marginL18 {
    margin-left: 18px!important;
}
.marginL40 {
    margin-left: 40px!important;
}
.marginL36 {
    margin-left: 36px!important;
}
.PerProductListNew li {
    color: #666;
    font-size: 14px;
    padding: 10px 20px;
    height: 18px;
    border-bottom: 1px solid #f4f4f4;
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
	var $tab = $("#tab");
	
	// Tab效果
	$tab.tabs(".tabContent", {
		tabs: "input"
	});
	$('input:radio').click(function () { 
		//用户是否有房
		if(this.name=="user.isHouse"){
			if(this.value==1){
				$("#house").fadeIn(300);
				$("#houseValue").attr("class","formText {min:0,required: true}");
			}else{
				$("#houseValue").attr("class","");
				$("#house").fadeOut(300);
				
			}
			
		}
		if(this.name=="user.isCar"){
			if(this.value==1){
				$("#car").fadeIn(300);
				$("#carValue").attr("class","formText {min:0,required: true}");
			}else{
				$("#carValue").attr("class","");
				$("#car").fadeOut(300);	
			}
		}
		//用户是否有车
	}); 
$("#submitButton").click(function(){
	var str="";
	($("#message_recharge").attr("checked"))?str+="1":str+="0";
	($("#email_recharge").attr("checked"))?str+="1":str+="0";
	($("#phone_recharge").attr("checked"))?str+="1":str+="0";
	str+="||";
	($("#message_withdraw").attr("checked"))?str+="1":str+="0";
	($("#email_withdraw").attr("checked"))?str+="1":str+="0";
	($("#phone_withdraw").attr("checked"))?str+="1":str+="0";
	str+="||";
	($("#message_loan_yes_account").attr("checked"))?str+="1":str+="0";
	($("#email_loan_yes_account").attr("checked"))?str+="1":str+="0";
	($("#phone_loan_yes_account").attr("checked"))?str+="1":str+="0";
	str+="||";
	($("#message_loan_pay").attr("checked"))?str+="1":str+="0";
	($("#email_loan_pay").attr("checked"))?str+="1":str+="0";
	($("#phone_loan_pay").attr("checked"))?str+="1":str+="0";
	str+="||";
	$("#notifition").val(str);
	$("#validateForm").submit();
	});
})
</script>
<%	
	int flag = 1;//1为添加，2为编辑
	User user = (User)request.getAttribute("User");
	if(null!= user){
		flag=2;
	}
%>
</head>
<body class="input">
	<div class="bar">
		
	</div>
	<div class="body">
		<form id="validateForm"<%if(flag==1){ %>action="admin/user!save.action"<%} else{%> action="admin/user!update.action" <%} %>method="post">
			<input type="hidden" name="id" <%if(flag==2){ %> value="${user.id}"<%} %> />
			<input type="hidden" id="notifition" name="user.notifition" <%if(flag==2){ %> value="${user.notifition}"<%} %> />
			<ul id="tab" class="tab">
				<li>
					<input type="button" value="基本信息" hidefocus="true" />
				</li>
				<li>
					<input type="button" value="财产信息" hidefocus="true" />
				</li>
				<li>
					<input type="button" value="用户设置" hidefocus="true" />
				</li>
			</ul>
			<table class="inputTable tabContent">
				<tr>
					<th>
						用户名:
					</th>
					<td>
						<input type="text" id="user.name" name="user.name" class="formText {maxlength:125,required: true}"  <%if(flag==2){%> value="${user.name}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						性别:
					</th>
					<td>
						 
						<input type="radio" id="user.sex" name="user.sex"  value= "1"  checked="checked">男
						<input type="radio" id="user.sex" name="user.sex" value="2" <c:if test="${2 == user.sex}">checked="checked"</c:if>>女
						<input type="radio" id="user.sex" name="user.sex" value="3" <c:if test="${3 == user.sex}">checked="checked"</c:if>>其他
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						年龄:
					</th>
					<td>
						<input type="text" id="user.age" name="user.age" class="formText {min:0,required: true}" <%if(flag==2){%> value="${user.age}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						用户身份证号:
					</th>
					<td>
						<input type="text" id="user.idNumber" name="user.idNumber" class="formText {maxlength:125,required: true}" <%if(flag==2){%> value="${user.idNumber}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>				
				<tr>
					<th>
						用户邮箱:
					</th>
					<td>
						<input type="text" id="user.email" name="user.email" class="formText {email:true,required: true}" <%if(flag==2){%> value="${user.email}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
							
				<tr>
					<th>
						用户地址:
					</th>
					<td>
						<input type="text" id="user.address" name="user.address" class="formText {maxlength:125,required: true}" <%if(flag==2){%> value="${user.address}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>	
				<tr>
					<th>
						用户电话号码:
					</th>
					<td>
						<input type="text" id="user.phoneNumber" name="user.phoneNumber" class="formText {min:0,required: true}" <%if(flag==2){%> value="${user.phoneNumber}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						用户真实姓名:
					</th>
					<td>
						<input type="text" id="user.realName" name="user.realName" class="formText {maxlength:125,required: true}" <%if(flag==2){%> value="${user.realName}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>	
				<tr>
					<th>
						用户学历:
					</th>
					<td>
						<select name = "user.degree" id="user.degree" class="{required: true}">
							<option value="">请选择…</option>
							<c:forEach items="${xlList}" var="dics" varStatus="vs">
							<option value="${dics.dicCode}"<c:if test="${dics.dicCode==user.degree}">selected=true</c:if>>${dics.dicName}</option>
							</c:forEach>  
						</select> 
					</td>
				</tr>
				<tr>
					<th>
						用户婚姻状况:
					</th>
					<td>
						<select name ="user.isMarriage" class="{required: true}" >
								<option value="">请选择…</option>
							<c:forEach items="${dicList}" var="dic" varStatus="vs">
								<option value = "${dic.dicCode}" <c:if test="${dic.dicCode==user.isMarriage}">selected=true</c:if>>${dic.dicName}</option>
							</c:forEach>
						</select>
					</td>
					
				</tr>
				<tr>
					<th>
						用户等级:
					</th>
					<td>
						<select name = "user.grade" class="{required: true}">
							<option value="">请选择…</option>
							<c:forEach items="${gradeList}" var="grade" varStatus="vs">
							<option value="${grade.gradeCode}"<c:if test="${grade.gradeCode==user.grade}">selected=true</c:if>>${grade.name}</option>
							</c:forEach>  
						</select> 
					</td>
				</tr>	
				</table>
				<!-- 用户财产 -->
				<table class="inputTable tabContent">
				<tr>
					<th>
						用户月收入:
					</th>
					<td>
						<input type="text" id="user.income" name="user.income" class="formText {min:0,required: true}" <%if(flag==2){%> value="${user.income}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>
				<tr>
					<th>
						用户是否有房:
					</th>
					<td>
						
						<input type="radio" id="user.isHouse" name="user.isHouse"  value= "1" checked="checked">是
						<input type="radio" id="user.isHouse" name="user.isHouse" value="0" <c:if test="${0 == user.isHouse}">checked="checked"</c:if>>否
					</td>
				</tr>
				
				<tr id ="house">
					<th>
						用户房屋价值:
					</th>
					<td>
						<input type="text" id="houseValue" name="user.houseValue" class="formText {min:0,required: true}"  <%if(flag==2){%> value="${user.houseValue}" <%}%> />	 
					</td>
				</tr>
				
				<tr>
					<th>
						用户是否拥有车辆:
					</th>
					<td>
						<input type="radio" id="user.isCar" name="user.isCar"  value= "1" checked="checked">是
						<input type="radio" id="user.isCar" name="user.isCar" value="0" <c:if test="${0 == user.isCar}">checked="checked"</c:if>>否	 
						
					</td>
				</tr>
				<tr id="car">
					<th>
						用户车辆价值:
					</th>
					<td>
						<input type="text" id="carValue" name="user.carValue" class="formText {min:0,required: true}" <%if(flag==2){%> value="${user.carValue}" <%}%>/>	 
						<label class="requireField">*</label>
					</td>
				</tr>																																							
			</table>
			<!-- 用户设置-->
			<table class="inputTable tabContent">
				<tr>
					<td>
						<div class="marginB20 Padding20"> 
							<div class="PerProductListTitleNew">
							<div class="left w200 marginL40"><span>&nbsp;</span></div>
							<div class="left w200 marginL36"><span>系统消息通知</span></div>
							<div class="left w200 marginL36"><span>邮件通知</span></div>
							<div class="left w140 marginL18"><span>短信通知</span></div>
							</div>
						<div class="PerProductListNew">

							<ul>
							<li>
							 <div class="left w200 table-center">充值操作</div>
							 <div class="left w220 table-center"><label style="display:block"><input type="checkbox"  name="message_recharge" id="message_recharge" value="1"></label></div>
							 <div class="left w220 table-center"><label style="display:block"><input type="checkbox"  name="email_recharge" id="email_recharge" value="1"></label></div> 
							 <div class="left w220 table-center"><label style="display:block"><input type="checkbox"  name="phone_recharge" id="phone_recharge" value="1"></label></div>  
							</li>
							<li>
							 <div class="left w200 table-center">提现操作</div>
							 <div class="left w220 table-center"><label style="display:block"><input type="checkbox"  name="message_withdraw" id="message_withdraw" value="1"></label></div>
							 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" name="email_withdraw" id="email_withdraw" value="1"></label></div> 
							 <div class="left w220 table-center"><label style="display:block"><input type="checkbox"  name="phone_withdraw" id="phone_withdraw" value="1"></label></div>  
							</li>
							<li>
							 <div class="left w200 table-center">投资成功</div>
							 <div class="left w220 table-center"><label style="display:block"><input type="checkbox"  name="message_loan_yes_account" id="message_loan_yes_account" value="1"></label></div>
							 <div class="left w220 table-center"><label style="display:block"><input type="checkbox"  name="email_loan_yes_account" id="email_loan_yes_account" value="1"></label></div> 
							 <div class="left w220 table-center"><label style="display:block"><input type="checkbox" name="phone_loan_yes_account" id="phone_loan_yes_account" value="1"></label></div>  
							</li>
							<li>
							 <div class="left w200 table-center">还本付息</div>
							 <div class="left w220 table-center"><label style="display:block"> <input type="checkbox" name="message_loan_pay" id="message_loan_pay" value="1"></label></div>
							 <div class="left w220 table-center"><label style="display:block"> <input type="checkbox" name="email_loan_pay" id="email_loan_pay" value="1"></label></div> 
							 <div class="left w220 table-center"><label style="display:block"> <input type="checkbox" name="phone_loan_pay" id="phone_loan_pay" value="1"></label></div>  
							</li>
							</ul>
							</div>
							</div>
					</td>
				</tr>
			</table>
			<div class="buttonArea">
				<input type="button" id="submitButton" class="formButton" value="确  定"  />&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" class="formButton" onclick="javascript:history.go(-1)" value="返  回"  />
			</div>
		</form>
	</div>
</body>
</html>