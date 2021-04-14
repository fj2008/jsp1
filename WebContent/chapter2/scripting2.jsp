<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scripting</title>
</head>
<body>
	<%!
	//실제로는 for문 위에 변수가 만들어짐 jsp가 스크립트태그의 우선순위로 스크립트단위로 코드를실행함
		int count = 0;
		int start = 0;
		int end = 10;
		
		public int myMethod(int count){
			return ++count;
		}
	%>
	
	<%
		out.println(++count);
		for(int i =start; i<end; i++){
			out.println(++count);
		}
		out.println(myMethod(0));
		
	%>
	
	
	
</body>
</html>