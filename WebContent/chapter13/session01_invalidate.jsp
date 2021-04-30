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
	session.invalidate();	
%>
	<h1>세션전부를 삭제한 후</h1>
	<p>아이디 : <%=(String)request.getAttribute("id") %></p>
	<p>비밀번호 : <%=(String)request.getAttribute("pw") %> </p>
	

</body>
</html>