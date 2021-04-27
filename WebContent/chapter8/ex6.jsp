<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<form name ='frm'>
		<p>
			이름: <input type="text" name="name">
			<input type="submit" value="전송" onclick="checkForm()">
		</p>
	</form>
<script>
	function checkForm(){
		var form = document.frm;
		var name = form.name.value;
		//^ : 시작하는 값이 //안에 있는지
// 		var regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;//"//" 안에들어오는 값이 정규표현식
		//영문또는한글로 시작하나요?
		//정규표현식에서 괄호는 우선순위가 아닌 묶어주는용도로 사용됨
		var regExp = /([0-9][0-9][0-9][0-9][0-9][0-9]) - ([0-9][0-9][0-9][0-9][0-9][0-9][0-9])/;//주민등록번호체크 정규표현식예시
		//숫자로 시작하나요?
		if(regExp.test(name)){//name변수에 우리가 지정한 패턴이 있나요?
			alert("이름은 숫자로 시작할 수 없습니다!");
			
			
			return false;
		}
		
	}
</script>
</body>
</html>