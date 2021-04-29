package chapter10;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class TestFilter implements Filter{
	//������ ������ ������ �ϴ� init�޼��� ����
	public void init(FilterConfig filterconfig) throws ServletException{
		System.out.println("���� ���� �� ....");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
//		System.out.println("JSP ó�� �� ���� ���� ...");
//		System.out.println("Request ���Ϳ� Response ���� �� ������ �ִٰ� ����");
//		System.out.println("�� ���Ϳ� Request ���Ϳ� Response ���� �ΰ��� ��� �ۼ��� �� ����");
//		
//		System.out.println("doFilter �޼��� ���� ó���ϴ� ������ Requsest������ ����");
//		System.out.println("EX) �α����� �ʿ��� �������� �����ϱ� ���� �α��� ���θ� Ȯ��");
//		System.out.println("�α����� �Ǿ����� �ʴٰ� ���Ͱ� �Ǵ����� ���� doFilter�޼��带 ȣ������ �ʰ�");
//		System.out.println("response.sendRedirect �Ǵ� RequestDispatecher�� ����ؼ� ���");
//		System.out.println("������ �ٸ� ���� �ű��");
		
		//��� ���� ���� �Ǵ� ����ڰ� ��û�� ���ҽ��� ����
		chain.doFilter(request, response);
		System.out.println("jsp ó�� �� ���� ���� ...");
		System.out.println("doFilter �޼��� �Ʒ����ٰ� �ڵ带 �ۼ��ϸ�");
		System.out.println("������ ������� ��û�� ó�� �� �� ������ �� ���͸� �� �� ����");
		System.out.println("���� Ŭ������ request�� ���ͷ� response�� ���ͷ� ���� ����°� �ƴϰ�");
		System.out.println("���� Ŭ������ ����� doFilter �޼��� �ȿ��� ����° �Ű����� (chain)��");
		System.out.println("doFilter ��, �ķ� request�� ó��,response�� ó���� ���� ������.");
		
		System.out.println("��)Mime Type�� ����������,Content-Length�� �ʹ� ������ ������,gzipó���� �Ǿ� �ִ���,���ڿ� ���ڵ��� ����������");
		
		
	}
	public void destroy() {
		System.out.println("���� ����...");
	}
}
