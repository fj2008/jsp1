<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%= URLDecoder.decode(request.getParameter("title"),"UTF-8") %></h1>
	<p>현재 시각 : <%=request.getParameter("date") %>
	
</body>
</html>