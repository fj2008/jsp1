package chapter12;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Filter implements javax.servlet.Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		javax.servlet.Filter.super.init(filterConfig);
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		String loginFilter = request.getParameter("loginFilter");
		if(loginFilter == null) {
			RequestDispatcher dis = request.getRequestDispatcher("/JSPBook/loginForm.jsp");
			dis.forward(request, response);
			
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		javax.servlet.Filter.super.destroy();
	}

}
