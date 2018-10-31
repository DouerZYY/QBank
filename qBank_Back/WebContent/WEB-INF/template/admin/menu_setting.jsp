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
					<span>基础数据管理</span>
				</dt>
					<dd>
						<a href="admin/dic_type!list.action" target="mainFrame">字典类型</a>
					</dd>
					<dd>
						<a href="admin/dictionary!list.action" target="mainFrame">字典信息</a>
					</dd>
				<dt>
					<span>文章管理</span>
				</dt>
					<dd>
						<a href="admin/article!list.action" target="mainFrame">文章信息管理</a>
					</dd>
					<dd>
						<a href="admin/article_type!list.action" target="mainFrame">文章类型管理</a>
					</dd>
				<dt>
					<span>广告管理</span>
				</dt>
					<dd>
						<a href="admin/advertise!list.action" target="mainFrame">广告管理</a>
					</dd>
					<dd>
						<a href="admin/ad_position!list.action" target="mainFrame">广告位置管理</a>
					</dd>
			</dl>
	</div>
</body>
</html>