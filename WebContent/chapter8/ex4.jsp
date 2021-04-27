<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name = "frm"><!-- 자바스크립트로 찾고싶은 태그가 있으면 이름을 꼭 추가해준다 -->
		<p>
			이름 : <input type ="text" name="name">
			<label>아 이 디 : <input type="text" name ="id"></label>
			<label>비밀번호 : <input type="password" name="pw"></label>
			<input type="submit" value="전송"onclick="checkForm()">
		</p>
	</form>
<script>
function checkForm(){
	var form = document.frm;
	var id = form.id.value;
	
	//아이디는 영문 소문자만 입력 가능합니다.
	for(var i=0; i<id.length; i++){
		var ch = id.charAt(i);//charAt문자열을 인덱스화함 자바랑 똑같은 함수
		//n 번째 문자가 영문 소문자가 아닐때
		//alert을 사용해서 "아이디는 영문 소문자만 입력 가능합니다!"출력하기
		
		//아스키코드표를 보면 97부터 122까지 영문대문자로 표기된다 그러니 이런 식이 성립되는것
		var isAlpha= (ch >='A' &&ch<='Z') || (ch<='0' && ch<="9");
		
		if(isAlpha){
			alert("아이디는 영문 소문자만 입력 가능합니다!");
		}
	}
	
	var name = form.name.value;
	var firstName = name.substr(0, 1);//substring을 사용하면 잘라낼 수 있다(이름에서 성만 잘라냄)
	
	//이름은 숫자로 시작할 수 없음
	//isNaN함수를 사용하면 매개변수로 전달된 값이 숫자인지 아닌지 판별하는 함수
	//isNotaNumber : 매개변수로 전달된 값이 숫자->false/숫자가 아니라면 ->true
	var isNumber = isNaN(firstName);
	if(!isNumber){
		alert("이름은 숫자로 시작할 수 없습니다!");
		form.id.select();
		form.name.select();//커서를 name칸으로 옮김
		
		return false;//submit하지 않도록
	}
	
	//비밀번호는 숫자만 입력 가능합니다/
	var pw = form.pw.value;
	var isNumber = !isNaN(pw);
	if(!isNumber){
		alert("비밀번호는 숫자만 가능합니다");
		
		form.pw.select();
		return false;
	}
	
}//function

	
	

</script>
</body>
</html>