<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>管理中心 - Powered By ${setting.systemName}${base} </title>
<meta name="Author" content="SHOP++ Team" />
<meta name="Copyright" content="SHOP++" />
<base href="${base} " />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link href="template/admin/css/base.css" rel="stylesheet" type="text/css" />
<link href="template/admin/css/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="template/common/js/jquery.js"></script>
<script type="text/javascript" src="template/admin/js/base.js"></script>
<script type="text/javascript" src="${base}/template/admin/js/admin.js"></script>
<script type="text/javascript">
$().ready(function() {

	var $menuItem = $("#menu .menuItem");
	var $previousMenuItem;
	
	$menuItem.click( function() {
		var $this = $(this);
		if ($previousMenuItem != null) {
			$previousMenuItem.removeClass("current");
		}
		$previousMenuItem = $this;
		$this.addClass("current");
	})

})
</script>
</head>
<body class="header">
	<div class="body">
		<div class="bodyLeft">
			
		</div>
		<div class="bodyRight">
			<div class="link">
				<span class="welcome">
					&nbsp;您好!&nbsp;${adminName}
				</span>
				<a href="page!index.action" target="mainFrame">后台首页</a>|
                <a href="http://www.ssbank.com/about.html" target="_blank">关于我们</a>|
                <a href="http://www.ssbank.com/contact.html" target="_blank">联系我们</a>
			</div>
			<div id="menu" class="menu">
				<ul>
					    <li class="menuItem">
							<a href="admin/menu_project.html" target="menuFrame" >项目管理</a>
						</li>
						<li class="menuItem">
							<a href="admin/menu_apply.html" target="menuFrame" >申请管理</a>
						</li>
						<li class="menuItem">
							<a href="admin/menu_member.html" target="menuFrame">会员管理</a>
						</li>
						<li class="menuItem">
							<a href="admin/admin_manage.html" target="menuFrame">管理员</a>
						</li>
						<li class="menuItem">
							<a href="admin/menu_setting.html" target="menuFrame">网站设置</a>
						</li>
					<li class="home">
						<a href="" target="_blank" >网站首页</a>
					</li>
	            </ul>
	            <div class="info">
					<a class="logout" href="admin/login!logout.action" target="_top">退出</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>