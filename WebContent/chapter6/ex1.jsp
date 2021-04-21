<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="process.jsp"><!-- 폼태그가 시각적으로 보이는것이 아님 값들을 보내는태그임 -->
		<!-- 입력 양식을 묶어서 보내는 form 태그 -->
		<!-- 폼 태그 안에는 입력 가능한 태그들을 작성 -->
		<!-- 폼 태그가 입력한 데이터를 서버로 보내줌 -->
		
		<p>아이디 : <input type="text" name="id"><input type ="button" value="아이디 중복 검사"></p><!-- 인풋태그로 인해서 데이터를 적을수있다 -->
		<p>비밀번호 :<input type="password" name="passwd"></p>
		<p>비밀번호 확인 : <input type="password" name-="passwd2"></p>
		<p><input type ="submit" value="전송"></p>
		<p>이름 :<input type = "text" name="name"></p>
		<p>연락처 :<input type="number" name="phone1">-
		<input type="number" name="phone1">-
		<input type="number" name="phone1"></p>
		<p>성별 :<input type="radio" name="gender" value="남성">남성<!-- radio버튼은 여러개중에 딱 하나만 선택하게 하는버튼 -->
		<input type="radio" name="gender" value="여성">여성
		</p>
		<p>취미 : 독서<input type="checkbox" name="hobby1"><!-- checkbox는 여러게선택항목중에 여려개를 선택할때 전달값은 체크됐을때 on 아니면체크안되면 전달안됨 -->
		운동<input type="checkbox" name="hobby2">
		영화<input type="checkbox" name="hobby3">
		</p>
		<p><input type="submit" value="전송"><input type="reset" value="다시쓰기"></p>
		<!-- input태그는 위와같이 입력만하는 기능이아니라 여러가지 타입과 기능이 있다 -->
	</form>
</body>
</html>