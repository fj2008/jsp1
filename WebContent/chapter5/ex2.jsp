<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="process.jsp" method="post">
		<p>
			이름 : <input type ="text" name ="name">
			<input type ="submit" value ="전송">
		</p>
	</form>
</body>
</html>


<!--
html Form을 사용해서 데이터를 보내는 방식
-GET: 요청 파라미터를 URL에 담아서 전달 사용자가 서버로 보낼 데이터인 입력한 값이 그대로 노출/전송속도가 빠르다/전송하는데이터에 제한이 있다(주소로보내기때문4086Byte까지가능)URL에그대로드러남
-POST: 요청 파라미터를 HTTP 프로토콜의 header에 담아서 전달/사용자가 보내는 값이 어떤 값인지 보이지 않음(보안에 신경을씀)/상대적으로 전송 속도가 느림/전송할수 있는 데이터의 크기제한없음
  -->