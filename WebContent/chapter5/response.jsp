<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		response.sendRedirect("http://www.google.com"); 
	%>
</body>
</html>
<!-- response.sendRedirect객체 사용경우
로그인 
성공 : 로그인된 페이지로이동
실패 : 로그인 실패 페이지로 이동

게시글 작성
작성한 게시글의 상세 페이지로 이동
게시글의 목록으로 이동 -->