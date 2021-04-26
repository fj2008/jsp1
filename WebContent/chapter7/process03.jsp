<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String fileUploadPath = "C:\\upload"; //사용자가 업로드할 파일을 어디에 저장할지

	DiskFileUpload upload = new DiskFileUpload();//실제 업로드파일을 처리할 객체생성
	
	List items = upload.parseRequest(request); // 데이터들과 관련된 목록을 가진객체생성 이순간에 파일이 업로드되서 메모리에 저장됨
	
	Iterator params = items.iterator();//사용자가 보낸 요청파라미터와 관련된 것들을 iterator로 구조로 변환
	
	while(params.hasNext())
	{ 		FileItem item = (FileItem) params.next();//이터레이터 작동
			if(item.isFormField()){//입력할수 있는 요소였다면
				String title = item.getString("UTF-8");//데이터 꺼내서
				out.println("<h3> + title + </h3>");//출력
			}else {
				String fileName = item.getName();//폼필드가 아닌 파일이라면
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1 );//가장마지막에 있는 \를 찾아서 자르기하라는 메서드
				File file = new File(fileUploadPath + "/" + fileName);
				item.write(file);//저장
				
				out.print("파일 이름 : " + fileName + "<br>");//출력
			}
	}//while
	
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