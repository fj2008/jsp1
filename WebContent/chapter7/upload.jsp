<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
<!-- 파일업로드 
	업로드하려면 라이브러리가 필요함
	오픈 라이브러리인 cos.jar를 사용
	MultipartRequest 클래스를 생성하고
	이 라이브러리 안에 MultipartRequest클래스를 사용해야함-->
	<form method = "post" enctype="multipart/form-data" action="process.jsp"><!-- method에 post타입과 enctype값은 위와같이 고정임 -->
		<p>제목 : <input type="text" name = "title"></p>
		<p>파일 : <input type="file" name = "file"></p>
		<p><input type="submit" value="업로드"></p>
	
	</form>
</body>
</html>