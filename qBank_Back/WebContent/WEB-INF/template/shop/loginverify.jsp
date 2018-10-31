<!DOCTYPE html>
<%@ page language="java" import="java.util.*,java.io.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<script type="text/javascript">
	var user = <%=session.getAttribute("user")%>;
	if (user == null){
		window.open('login!login.action','_top');
	}
</script>
