<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setHeader("Cache-control", "use_cache");
		response.setHeader("contentType", "text/html; charset-=utf-8");
		response.setContentType("text/html");//위에 setheader코드랑 같은 코드임
		response.setCharacterEncoding("UTF-8");//문자열 인코딩설정하는 코드
		response.setDateHeader("date", System.currentTimeMillis());
		
	%>
	
	Cache=control : <%=response.getHeader("cache-control") %>
	contentType : <%=response.getHeader("contentType") %>
	date:<%=response.getHeader("date") %>
</body>
</html>
<!-- 
캐싱 - 클라이언트가 최초로 필요한 데이터를 서버로 요청 최초로 요청하고 서버가 전달한 데이터를 {캐시}에 저장

 -->