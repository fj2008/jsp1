package chapter10;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LogFileFilter implements Filter{
	
	PrintWriter writer;
	

	@Override
	public void destroy() {
		writer.close();//필터를 만들때 스트림을 열었으니까 jsp컨테이너에 의해서 필터가 사라질때 스트림을 받으면서 사라지도록

	}


	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		String filename = filterConfig.getInitParameter("filename");
		if(filename == null) {
			throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
		}
		try {
			writer = new PrintWriter(new FileWriter(filename,true), true);//문자기반 스트림을 스트림에 덫씌워 사용
		}catch(IOException e ){
			throw new ServletException("로그 파일을 열 수 없습니다");
		}
	}


	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		writer.printf("현재 일시 : "+ getCurrentTime() +"\n");//요청들어온 시간
		String clientAddr = request.getRemoteAddr();
		writer.printf("클라이언트 주소"+clientAddr +"\n");//누가들어왔는지
		
		chain.doFilter(request, response);
		
		String contentType = response.getContentType();
		writer.printf("문서의 Mime Type:"+ contentType +"\n");
		writer.println("========== ========== ==========");
		
	}
	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}

}
