<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String name = "이호겸";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<jsp:forward page="exSecond.jsp">
		<jsp:param value="20210419" name="id"/>	
		<jsp:param value="<%=name %>" name="name"/>
	</jsp:forward>
</body>
</html>