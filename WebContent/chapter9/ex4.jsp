<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 언어코드는 정해져있음 크롬에 언어코드라고 검색하면 나옴 -->
	<%=response.getLocale() %>
	
	<fmt:setLocale value="ko"/>
	<%=response.getLocale() %>
	
	<fmt:setLocale value="ja"/>
	<%=response.getLocale() %>
	
	<fmt:setLocale value="en"/>
	<%=response.getLocale() %>
	
</body>
</html>