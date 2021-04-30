<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>session01에서 세션에 저장한 아이디와 비밀번호</h1>
	<p>아이디 : <%=(String)request.getAttribute("id") %></p>
	<p>비밀번호 : <%=(String)request.getAttribute("pw") %> </p>
	<!-- session은 request처럼 내장객체이다 -->
	<hr>
<%
	session.removeAttribute("id");	
%>
	<h1>세션에 저장된 아이디를 삭제한 후</h1>
	<p>아이디 : <%=(String)request.getAttribute("id") %></p>
	<p>비밀번호 : <%=(String)request.getAttribute("pw") %> </p>
	
	<hr>
<%
	session.removeAttribute("pw");
%>
	<h1>세션에 저장된 비밀번호를 삭제한 후</h1>
	<p>아이디 : <%=(String)request.getAttribute("id") %></p>
	<p>비밀번호 : <%=(String)request.getAttribute("pw") %> </p>
</body>
</html>