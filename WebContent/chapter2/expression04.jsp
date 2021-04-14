<%@page import="java.util.Random"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
	Set<Integer> set = new HashSet<>();
	Random random = new Random();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>expression03</title>
</head>
<body>
	<h1>! 로또 번호 생성 프로그램 !</h1>
	
	<p>이번주 1등 예상 번호</p>
	
	<% 
	while(set.size()<6){
		int number = random.nextInt(45) +1;
		set.add(number);
	}
	for( int number : set){
		out.println(number);
	}
		
	%>

</body>
</html>