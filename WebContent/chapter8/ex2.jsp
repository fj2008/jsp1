<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex2</title>
</head>
<body>
	<form name ="frm">
		<p> 
		이름 : <input type="text" name="name">
		<label>아이디 : <input type = "text" name="id"></label>
		<label>비밀번호 : <input type = "password" name="pw"></label>
		<input type="submit" calue="전송" onclick="checkForm()"><!-- 클릭하면 스크립트 함수가 시작됨 -->
		</p>
	</form>
	
<script type="text/javascript">
//script는 브라우저가 다실행 된 다음에 실행된다
//전송버튼을 클릭했을 때 사용자가 입력한 이름,아이디, 비밀번호를 alert을 사용해서 출력하세요.
funcion checkForm(){
	var userName =document.frm.name.value;//document는 브라우저안에 모든 정보를 가지고 있음
	var id = documet.frm.id.value;
	var pw = document.frm.pw.value;
	alert("사용자가 입력한 이름은 "+ userName + " 입니다.");
	alert("사용자가 입력한 아이디는 "+ id + " 입니다.");
	alert("사용자가 입력한 비밀번호는 "+ pw + " 입니다.");
}

</script>
</body>
</html>
	
	