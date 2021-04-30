package chapter13;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Session01Process
 */
@WebServlet("/session01Process")
public class Session01Process extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Session01Process() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    /****
     * 세션을 사용하는 프로그램
     * ------------------
     * 1.클라이언트 요청
     * 2.setAttribute 메서드로 클라이언트의 요청을 저장
     * 	2-1session이 없으면 세션을 생성하고 저장
     *	2-2session이 생성되면 세션의 ID가 같이 생성됨
     * 3.클라이언트의 요청에 따른 처리를 하고
     * 4.결과 반환
     *	 4-1 session이 이번요청의 처리에서 세션이 생성됬다면 세션의 ID를 같이반환
     *
     *-------------------------------
     *응답이후 상황
     *클라이언트 프로그램
     *1.서버가 보낸 결괏값을 출력
     *2.서버가 보낸 세션 ID가 response header에 들어있었다면은 세션 ID를 저장
     *3.다음번 요청부터 request header에 세션 ID를 같이 담아서 전달
     * */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//서블릿에서 세션객체를 얻어와야함 dopost에서 doget으로 호출하도록 정의 돼있으니 doget만 설정해줘도됨
		HttpSession session = request.getSession();//세션을 사용
		//setArrtribute를 사용해서 데이터를 저장할 때
		//세션이 생성되지 않았으면 세션을 생성
		
		//세션에 이름=값 의 형태로 데이터를 저장
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		session.setAttribute("id", id);//클라이언트가 보내는 요청파라미터 값 새션에 저장
		session.setAttribute("pw", pw);//세션안에 데이터값이 null이라면 새로 세션을 생성해서 저장
		//두번째 매개변수 session은 object타입이라 사용할때 꼭 형변환을 해주어야한다
		session.setMaxInactiveInterval(10);//세션이 무한정 유지되는 것을 막기위해 시간을 정해주는것 기본값은 1800초 (30분)
		RequestDispatcher dis = request.getRequestDispatcher("/chapter13/session01_success.jsp");
		dis.forward(request, response);
		
		
		//세션이 없다면 http는 이 서블릿이 다 처리될때 데이터도 같이 사라진다
		//하지만 세션에 들어있는값은 웹브라우져가 종료되기 전까지 데이터가 살아있다
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
