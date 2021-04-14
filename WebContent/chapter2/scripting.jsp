<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scripting</title>
</head>
<body><!-- 선언문: 자바의 변수나 메서드를 정의함 사용함 그리고 변수나 메서드는 전역변수로 선언된다-->
	<%!
		int count =3;
		String makeItLower(String str){
			return str.toLowerCase();
		}
	%>
	<% 
		for(int i = 1; i<=count; i++){	
			out.println("Java Server Pages"+ i+ ".<br>");
			
		}
	%>
	<%= makeItLower("Hello World") %>
	
	
</body>
</html>