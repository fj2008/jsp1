<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<p>
			<label for="reading">독서</label>
			<input type="checkbox" id="reading" name="reading">
			
			<label>운동 <input type="checkbox" name="exercise"></label><!--label 이런방식으로도 사용할 수 있다 -->
			<label>영화 <input type="checkbox" name="movie"></label><!-- input태그를사용하면 그자체로 label값이 연결되서 id값을 지정해 주지않아도됨 -->
		</p><!-- checkbox라는 속성은 체크박스를 만들어주고 그박스에 체크가 된체로 서버에 보내지면 on이란 값을 보낸다 -->
		
		<input type="submit" value="전송">
	</form>
</body>
</html>