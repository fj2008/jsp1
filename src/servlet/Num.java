package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Num
 */
@WebServlet("/num")
public class Num extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Num() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		int num1_i = Integer.parseInt(num1);
		int num2_i = Integer.parseInt(num2);
		int plus = num1_i+ num2_i;
		int minus= num1_i- num2_i;
		int div = num1_i* num2_i;
		int mul = num1_i/ num2_i;
		request.setAttribute("plus", plus);
		request.setAttribute("minus", minus);
		request.setAttribute("plus", div);
		request.setAttribute("mul", mul);
		RequestDispatcher distpatcher = request.getRequestDispatcher("/calc.jsp");
		distpatcher.forward(request, response);
		
	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
