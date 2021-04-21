<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	response.setIntHeader("Refresh", 5);
%>


<%

LocalDateTime nowDateTime = LocalDateTime.now();
String am_pm;
int hour = nowDateTime.getHour();
int minute = nowDateTime.getMinute();
int second = nowDateTime.getSecond();



String s_hour = (hour<10 ? "0":"")+hour;
String s_minute = (minute <10 ? "0" : "")+minute;
String s_secound = (second <10 ? "0":"")+second;

if(hour /12 ==0){
	am_pm = "AM";
}else{
	am_pm="PM";
	hour =hour -12;
}

String CT = s_hour + ":" + s_minute + ":"+ s_secound+" " + am_pm;
//시간 출력하는코드
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>현재 시간은 <%=CT %></p>
	
	<p><a href = "response_data.jsp">Google 홈페이지로 이동하기</a>
</body>
</html>