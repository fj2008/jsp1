<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
</head>
<body>
	<form name="frm">
	
		<p>
			제목 : <input type="text" name="title">
			<input type="submit" value="전송"onclick="checkForm()">
		</p>
	</form>
<script>//예전에는 스크립트에 속성을 써주었지만 이제는 웹표준이 돼서 안쓰는 추새라고 함
	function checkForm(){
		//i : 대소문자를 무시하고 찾아라
		//g : 문자열 내의 모든 패턴을 검출
		var regExp = /Java/i;//		"//"안에 있는 패턴의 값을 찾아준다는 뜻
		
		var title = document.frm.title.value;
// 		var result = regExp.exec(title);
		var result = regExp.test(title);//test함수를 사용하면 매개변수로 전달한 문자열에 이 패턴이 있는지 없는지 찾아줌
		console.log(result);
		
		alert("콘솔 창에서 결과를 확인하세요");
		return false;
	}
	
	

</script>
</body>
</html>