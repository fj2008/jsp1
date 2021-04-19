<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="chapter4.MemberBeen"></jsp:useBean>
<jsp:setProperty property="*" name="member" /><!-- * : 요청 파라미터가 자바 빈즈 프로퍼티의 setter메소드에 전달됨 getter도 마찬가지 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>ex3.jsp 페이지에서 전달 받은 name 요청 프로퍼티의 값 = <jsp:getProperty property = "name" name="member"/></p><!-- member빈즈객츠에 있는 name변수를 가져와라 -->
	<p>ex11.jsp 페이지에서 전달 받은 id 요청 프로퍼티의 값 = <jsp:getProperty property = "id" name = "member"/></p>
</body>
</html>