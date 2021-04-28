<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = "C:\\upload";
	DiskFileUpload upload = new DiskFileUpload();
	
	
	upload.setSizeMax(1000000);//저장된 파일의 최대 크기(byte)
	upload.setSizeThreshold(4096);//메모리에 저장될 파일의 최대 크기(byte);
	upload.setRepositoryPath(path);//업로드할 파일을 저장할 경로
	
	List items = upload.parseRequest(request);
	Iterator params = items.iterator();
	
	while(params.hasNext()){
		FileItem item = (FileItem) params.next();
		if(item.isFormField()){//Item객체에 저장되어있는 파일데이터가 파일데이터라면 ture,그외데이터면 false
			String name = item.getFieldName();//요청파라미터의 이름을 알려주는 메서드
			String value = item.getString("UTF-8");//요청 파라미터를 문자열로 가저옴 
			out.println("<p>" + name + " = " + value + "</p>");
		}else{
			String fileFildName = item.getFieldName();//요청파라미터의 이름을 알려주는 메서드
			String fileName = item.getName();//업로드한 파일 이름
			String contentType = item.getContentType();//업로드한 파일의 Mime Type알려줌
			
			fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
			long fileSize = item.getSize();//업로드된 파일의 크기
			//출력
			out.println("<hr>");
			out.println("<p>요청 파라미터 이름 : "+ fileFildName + "</p>");
			out.println("<p>파일 이름 "+ fileName + "</p>");
			out.println("<p>파일 컨텐츠 유형 : " + contentType + "</p>");
			out.println("<p>파일 크기 : " + fileSize + "</p>");
		}
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
