<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
//스크립틀릿안에 있기때문에 선언과 연산을 따로해도 결국 jsp에선 한번에 나타난다
//그래서 가독성을 위해서 body태그안에는 보여줄 값들만 넣고 그 왜에 선언이나 필요없는부분은 위에 작성한는게 좋다
	int a = 2;
	int b = 3;
	int sum = a+b;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
		<%
			out.print("2 + 3 =" + sum);
		%>
</body>
</html>