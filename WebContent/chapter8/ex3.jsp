<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex3</title>
</head>
<body>
	<form name="loginForm">
		<p>이름  : <input type = "text" name ="name"></p>
		<p>아이디 : <input type = "text" name="u_id"></p>
		<p>비밀번호 : <input type= "password" name="u_pw1"></p>
		<p>비밀번호 확인 :<input type= "password" name="u_pw2"></p>
		
		<input type="submit" value="전송" onclick="checkForm()">
	</form>
<script>
	//전송버튼을 눌렀을 때 이름 아이디 비밀번호 비밀번호 확인 모두 입력되었는지 확인하세요
	//이름 아이디 비밀번호 비밀번호 확인이 입력되지 않았을 때는
	//해당 항목을 입력해 주세요.라고 출력하고
	//해당 항목으로 포커스를 이동시키세요
	
	
	//아이디는 4자 이상 12자 이하여야 합니다.
	//비밀번호는 8자 이상16자 미만이어야합니다/
	//비밀번호는 비밀번호 확인과 일치해야 합니다
	function checkForm(){
		var uname = document.loginForm.name.value;
		var uId = document.loginForm.u_id.value;
		var uPw1 = document.loginForm.u_pw1.value;
		var uPw2 = document.loginForm.u_pw2.value;
		
		if(uname == ""){alert("이름 입력해요.")
			document.loginForm.name.focus();
			document.loginForm.name.select();
			return false;
			} else if(uname.length < 6 || uname.length > 14){
				alert("이름을 6~14자 이내로 입력해 주세요.");
				return false;
			}
			if(uId == ""){alert("아이디 입력해요.")
			document.loginForm.uId.focus();
			document.loginForm.uId.select();
			return false;
			}else if(uId.length<4 || uId.length>16){
				alert("아이디 4~16로 출력해라")
			}
			
			
			if(uPw1 == ""){alert("비밀번호 입력해요.")
			document.loginForm.uPw1.focus();
			document.loginForm.uPw1.select();
			return false;
			}else if(uPw1.length<8 || uPw1.length>16){
				alert("비밀번호 8~16로 출력해라")
			}
			
			if(uPw2 == ""){alert("비밀번호 확인을 입력해요.")
			document.loginForm.uPw2.focus();
			document.loginForm.uPw2.select();
			return false;
			}else if(uPw1 != uPw2){
				alert("비밀번호는 비밀번호 확인과 같이야합니다")
				document.loginForm.uPw2.select();
			}
		else{
				alert("제대로 입력했으므로 입력한 값을 서버로 보냅니다.")
			}
		
	}
	
</script>	

</body>
</html>