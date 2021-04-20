<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="response_process01.jsp" method="post">
		<p>아이디 : <input type="text" name="id"> </p>
		<p>비밀번호 :<input type="password" name="pw"></p>
		<p><input type="submit" value="전송"></p>
		
	</form>
</body>
</html>

<!-- 
URL의 절대경로
http:// 또는 https://또는 /
로 시작하지 않는 모든경로는 다 "상대경로임

form action에 "/"로 시작하는 모듈은 이 프로젝트에 최상위경로를 부른다는뜻
 -->