<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage = "/JSPBook/chapter11/error.jsp" %>
<%
	request.getParameter("num1");
	request.getParameter("num2");
	int num1_i = Integer.parseInt("num1");
	int num2_i = Integer.parseInt("num2");
	double value = num1_i/num2_i;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>두 수를 나눈 결과 : <%=value %></p>
	
</body>
</html>