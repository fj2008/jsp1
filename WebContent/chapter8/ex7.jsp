<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규 표현식</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="validation_process.jsp" name="member" method="post">
		<p>아이디 : <input type="text" name = "id"></p>
		<p>비밀번호 : <input type="password" name = "pw"></p>
		<p>이름 : <input type="text" name = "name"></p>
		<p>연락처 : 
			<select name = "phone1">
				
				<option vlaue="010">010</option>
				<option vlaue="011">011</option>
				<option vlaue="016">016</option>
				<option vlaue="017">017</option>
				<option vlaue="019">019</option>
			</select> - <input type="number" maxlength="4" size="4" name="phone2">
			- <input type="number" maxlength="4" size="4" name="phone3">
		</p>
					
		<p>이메일 : <input type="email" name = ""></p>
		<p><input type="button" value="가입하기" onclick="checkMember()"></p>
	</form>
	
<script>
	function checkMember(){
		// *: 0개이상 반복되는지
		//$ : 그 패턴으로 끝이나는지
		var regExpId = /^[a-z|A-z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var regExpName = /^[가-힣]*$/;//한글범위에 있는지 체크
		//정규표현식은 위와같이 정해진패턴이 있는것이아니라 원하는 형식에 맞게 사용하면됨
		var regExpPasswd=/^[0-9]*$/;
		var regExpPhone=/^\d{3}-\d{4}-\d{4}$/;  //\d : {n}번째 자리 숫자 범위에 있는지
		var regExpEmail = /^[0-9a-zA-Z]/; // or연산자 표기를(|) 쓰지 않을시에 문법
		123
		var form = document.member;
		
		var id = form.id.value;
		var name = form.name.value;
		var pw = form.pw.value;
		var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
		
		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작해주세요!");
			form.id.select();
			return;
		}
		
		if(!regExpName.test(name)){
			alert("이름은 한글로 입력해주세요!");
			form.name.select();
			return;
		}
		
		if(!regExpPasswd.test(pw)){
			alert("비밀번호는 숫자만 가능합니다.")
			
			form.pw.select();
			return;
		}
			
		if(!regExpPhone.test(phone)){
			alert("연락처를 확인해주세요!");
			return;
		}
		
		form.submit();//모든 검사가 끝나면 데이터를 전송해라
	}

</script>
</body>
</html>