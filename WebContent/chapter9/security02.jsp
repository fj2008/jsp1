<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>사용자명 :<%=request.getRemoteUser() %></p><!-- 인증한 사람이 누군지 -->
	<p>인증방법 :<%=request.getAuthType() %></p><!-- 형식 -->
	<p>인증한 사용자명이 역할명 "tomcat"에 속하는 사용자인가요? <%=request.isUserInRole("tomcat") %></p>
	<p>인증한 사용자명이 역할명 "role1"에 속하는 사용자인가요? <%=request.isUserInRole("role1") %></p>
</body>
</html>