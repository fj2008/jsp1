<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("passwd");
	String pw2 = request.getParameter("passwd2");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone1");
	String gender1 = request.getParameter("gender1");
	String gender2 = request.getParameter("gender2");
	String[] hobby = request.getParameterValues("hobby");//취미(독서,운동,영화); parametervalues를 사용해서 같은 value 속성값을 가진 값을 나열해줌
	String hobbys="";
	for(String h: hobby){
		hobbys += (h+",");
	}
	
	String textarea = request.getParameter("comment");
	textarea = textarea.replace("\n", "<br>");//스크립트는 \n을 이해할수 없기때문에 replace메서드로 br로바꿔서 출력
	
	if(pw != pw2){
		out.println("비밀번호를 다시 확인해 주세요");
		response.sendRedirect("ex4.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>아이디: <%=id %></p>
	<p>비밀번호 : <%=pw %></p>
	<p>비밀번호 확인 : <%=pw2 %></p>
	<p>이름 : <%=name %></p>
	<p>연락처 : <%=phone %></p>
	<p>성별 남 : <%=gender1 %></p>
	<p>성별 여 : <%=gender2 %></p>
	<p>취미 :  <%=hobbys %></p>
	
	<p>코멘트 : <%=textarea %></p>
	
</body>
</html>