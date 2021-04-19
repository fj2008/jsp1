<%@page import="chapter4.Person"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="person"class= "chapter4.Person"></jsp:useBean>
<jsp:setProperty property ="id" name="person" param="id" />
<jsp:setProperty property = "name" name ="person" param="name"/>
<%
		//문자열로 된 id를 래퍼클래스에 parseInt라는 메서드를활용해서 형변환함
		//setProperty : 빈즈객체에서 setter메소드를 호출하는 액션태그를 쓰는것이 더 효율적임
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>아이디 : <%=person.getId()%></p>
	<p>이 름 :<%=person.getName() %></p>
</body>
</html>