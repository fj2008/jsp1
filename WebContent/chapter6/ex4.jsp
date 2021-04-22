<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>회원가입</h3>
	<form action="ex4_process02.jsp"method="post">
		
		<p>아이디 : <input type="text" name="id"><input type ="button" value="아이디 중복 검사"></p>
		<p>비밀번호 :<input type="password" name="passwd"></p>
		<p>비밀번호 확인 : <input type="password" name-="passwd2"></p>
		<p>이름 :<input type = "text" name="name"></p>
		<p>연락처 :<input type="number" name="phone1">-
		<input type="number" name="phone1">-
		<input type="number" name="phone1"></p>
		<p>성별 :
		<label for="gender1">남성</label><!-- label태그를 활용해서 글씨를 눌러도 선택될수 있게 for속성이 gender1을 이어준다 -->
		<input type="radio" id="gender1" value="male">
		<label for="gender2">여성</label>
		<input type="radio" id="gender2" value="여성"><!-- label에는 id값이 적혀야함 -->
		</p>
		<p>취미 : 독서<input type="checkbox" value="독서"name="hobby">
		운동<input type="checkbox" value="운동"name="hobby">
		영화<input type="checkbox" value="영화"name="hobby">
		</p>
		<p>
			<textarea name="comment" cols="30" rows="3" placeholder="가입 인사를 입력해주세요"></textarea><!-- placeholder는 힌트를 보여줄 수 있게 함 -->
		</p>
		
		<p><input type="submit" value="전송"><!-- 위내용을 form태그롤 사용해 서버로 전송하는 버튼 -->
		<input type="reset" value="다시쓰기"></p><!-- reset값으로 속성을 정해서 버튼을 누르면 다 초기화 되도록 -->
		
	</form>
	
</body>
</html>