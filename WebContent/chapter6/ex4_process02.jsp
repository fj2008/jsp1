<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//요청 파라미터의 이름을 전부 가져옴 //이터레이터 처럼 포인터가 있음
	Enumeration<String> names = request.getParameterNames();
	//names=["파라미터1","파라미터2","파라미터3"]이런식으로 값이 저장됨
			
	//parameterNames는 매개변수가 필요없는 매서드
	//돌려주는 반환값은 제네릭string타입의 Enumeration 로반환
	//hasMoreElements메서드는nextElement();와 상호작용해서 포인터가 가리키는 값을 반환
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
	<tr>
		<th>요청 파라미터의 이름</th>
		<th>요청 파라미터의 값</th>
	</tr>
	
	<tr>
		<%
			while(names.hasMoreElements()){
				out.println("<tr>");
				String name = names.nextElement();
				
				String value = request.getParameter(name);				
				out.println("<td>"+name+"</td>");
				out.println("<td>"+value+"</td>");
				out.println("</tr>");
			}
				
		%>
</table>
	
</body>
</html>