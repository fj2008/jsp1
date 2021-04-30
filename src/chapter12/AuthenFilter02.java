package chapter10;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter02 implements Filter{
	private FilterConfig config = null;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException{//���Ͱ� ��ϵɶ� ���� �� ����Ǵ� ������ ����
		
		config = filterConfig;
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filter02 ���� ...");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String initParam1 = config.getInitParameter("param1");
		String initParam2 =  config.getInitParameter("param2");;
		String message;
		
		response.setContentType("text/html; charset =UTF-8");
		PrintWriter writer = response.getWriter();
		
		if(id.equals(initParam1) &&pw.equals(initParam2)) {
			message = "�α��ο� �����߽��ϴ� ";
		}else {
			message = "�α��ο� �����߽��ϴ�";
		}
		
		writer.print(message);
		chain.doFilter(request, response);//������ �帧�� �������� �ѱ�� �ڵ�
	}
	
	
}
