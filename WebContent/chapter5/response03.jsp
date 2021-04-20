<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>현재 시간은 <%=LocalDateTime.now() %>입니다</p>
	<p>이 페이지는 3초마다 새로고침됩니다.</p>
	
	<%
		response.setIntHeader("Refresh", 3);//해더값을 정수로 설정하겟다
	%>
</body>
</html>