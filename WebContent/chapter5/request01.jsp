<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action ="process01.jsp" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="pw"></p>
		<p><input type="submit" value="로그인"></p>
		
	</form>
</body>
</html>

<!-- 비밀번호는 입력했을때 가려져야하니 속성을 password사용한다(입력한값이 안보이게하는 필드)
	
-->