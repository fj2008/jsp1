<%@page import="java.util.Enumeration"%>
<%@page import="com.sun.jmx.snmp.Enumerated"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	
	MultipartRequest multi = new MultipartRequest(request,"C://upload", 5*1024*1024 , "UTF-8",new DefaultFileRenamePolicy());
	//이순간에 바로 파일이 업로드가됨 
	String title = multi.getParameter("title");
	//파일이아닌 요청파라미터를 전달했을때 받아드리는 방식을 request내장객체를 multi객체로 사용
	Enumeration files= multi.getFileNames();
	String filename = (String) files.nextElement();
	
	filename = multi.getFilesystemName(filename);
	String original = multi.getFilesystemName(filename);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>제목 : <%=title %></h3>
	<p>실제 파일 이름 :<%=original %></p>
	<p>저장 파일 이름 :<%=filename %></p>
		
		
</body>
</html>