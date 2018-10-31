<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>管理中心登录 </title>
<meta name="Author" content="SHOP++ Team" />
<meta name="Copyright" content="SHOP++" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link href="/qbank/template/admin/css/base.css" rel="stylesheet" type="text/css" />
<link href="/qbank/template/admin/css/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="template/common/js/jquery.js"></script>
<script type="text/javascript" src="template/admin/js/base.js"></script>
<script type="text/javascript" src="template/admin/js/admin.js"></script>

</head>
<body class="login">
	<script type="text/javascript">

		// 登录页面若在框架内，则跳出框架
		if (self != top) {
			top.location = self.location;
		};

	</script>
	<div class="blank"></div>
	<div class="blank"></div>
	<div class="blank"></div>
	<div class="body">
		<form id="loginForm" action="/qbank/admin/page!loginCheck.action" method="post">
            <table class="loginTable">
            	<tr>
            		<td rowspan="3">
            			<!-- <img src="" alt="" /> -->
            		</td>
                    <th>
                    	用户名:
                    </th>
					<td>
                    	<input type="text" id="admin.adminName" name="admin.adminName" class="formText" />
                    </td>
                </tr>
                <tr>
					<th>
						密&nbsp;&nbsp;&nbsp;码:
					</th>
                    <td>
                    	<input type="password" id="admin.adminPassword" name="admin.adminName" class="formText" />
                    </td>
                </tr>
                <tr>
                	
                </tr>
                <tr>
                	
                </tr>
                <tr>
                	<td>
                		&nbsp;
                	</td>
                	<th>
                		&nbsp;
                	</th>
                    <td>
                        <input type="button" class="homeButton" value="" onclick="window.open('${base}shop/index!index.action')" hidefocus="true" /><input type="submit" class="submitButton" value="登 录" hidefocus="true" />
                    </td>
                </tr>
            </table>
            
        </form>
	</div>
</body>
</html>
</#escape>