<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	try{
		MultipartRequest multi = new MultipartRequest(request,"C://upload", 5*1024*1024 , "UTF-8",new DefaultFileRenamePolicy());//업로드한 파일 저장
	Enumeration params = multi.getParameterNames();//업로드한 파일 말고 그 나머지 이름과 제목의 요청파라미터의 이름을가지고 와서
	while(params.hasMoreElements()){//와일문으로 출력
		String name = (String) params.nextElement();
		String value = multi.getParameter(name);
		out.println(name + " = "+ value + "<br>");
	}
	out.println("<hr>");
	
	Enumeration files = multi.getFileNames();//업로드된 파일의 정보를 알기위해서
	while(files.hasMoreElements()){
		String name =(String) files.nextElement();
		String filename = multi.getFilesystemName(name);//저장된파일의 이름
		String type = multi.getContentType(name);//파일의타입
		File file = multi.getFile(name);//그파일과 관련된 파일객체를 가지고와서
		
		out.println("요청 파라미터 이름 : " + name + "<br>");
		out.println("파일 이름 : " + filename + " <br>");
		out.println("파일 컨텐츠 유형 : " + type + "<br>");
		
		if(file != null){
			out.println("파일 크기 : " + file.length() + "<br>");//파일의 크기까지 계산
		}
	}
	}catch(IOException e){//업로드 파일이 오바되면 io익셉션생기니까 예외처리해줌
		out.println("<p>파일은 최대 5MB까지만 업로드 할 수 있습니다.");
	}catch(Exception e){
		out.println("<p>비정상적인 접근입니다.</p>");
	}
	
%>

<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>