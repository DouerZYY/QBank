<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="http://localhost:8080/qbank/" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>管理菜单 </title>
<meta name="Author" content="SHOP++ Team" />
<meta name="Copyright" content="SHOP++" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link href="template/admin/css/base.css" rel="stylesheet" type="text/css" />
<link href="template/admin/css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body class="menu">
	<div class="body">
			<dl>
				<dt>
					<span>会员管理</span>
				</dt>
					<dd>
						<a href="admin/user!list.action" target="mainFrame">会员基本信息管理</a>
					</dd>
				<dt>
					<span>信用管理</span>
				</dt>
					<dd>
						<a href="admin/grade!list.action" target="mainFrame">信用管理</a>
					</dd>
					
			</dl>
	</div>
</body>
</html>