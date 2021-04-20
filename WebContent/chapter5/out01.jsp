<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		out.println("<h1>out 내장객체를 사용해 h1태그를 출력</h1>");
	%>
	<%="<h1>표현문을 사용해서 h1태그를 출력</h1>" %>
	
	<%
		out.println("<p>오늘의 날짜 :"+ LocalDateTime.now()+ " </p>");
	%>
	<%="<p>오늘의 날짜 :"+LocalDateTime.now()+"</p>" %>
	
	<%
		out.println("<strong>id ="+ request.getParameter("id")+" </strong>");
		%>
	<%="<strong>id =" +request.getParameter("id")+"</strong>" %>
</body>
</html>