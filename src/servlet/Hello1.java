package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hello1
 */
@WebServlet("/hello1")
public class Hello1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hello1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html; charset=UTF-8");
	String hello = request.getParameter("nation");
	if(hello.equals("ko")) {
		RequestDispatcher dispatcher =request.getRequestDispatcher("hello_ko.jsp"); 
		dispatcher.forward(request, response);
	}else if (hello.equals("ch")) {
		RequestDispatcher dispatcher =request.getRequestDispatcher("/hello_ch.jsp"); 
		dispatcher.forward(request, response);
	}else if (hello.equals("ja")) {
		RequestDispatcher dispatcher =request.getRequestDispatcher("/hello_ja.jsp"); 
		dispatcher.forward(request, response);
	}else {
		RequestDispatcher dispatcher =request.getRequestDispatcher("/hello_am.jsp"); 
		dispatcher.forward(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
