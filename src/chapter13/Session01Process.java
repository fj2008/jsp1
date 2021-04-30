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
     * ������ ����ϴ� ���α׷�
     * ------------------
     * 1.Ŭ���̾�Ʈ ��û
     * 2.setAttribute �޼���� Ŭ���̾�Ʈ�� ��û�� ����
     * 	2-1session�� ������ ������ �����ϰ� ����
     *	2-2session�� �����Ǹ� ������ ID�� ���� ������
     * 3.Ŭ���̾�Ʈ�� ��û�� ���� ó���� �ϰ�
     * 4.��� ��ȯ
     *	 4-1 session�� �̹���û�� ó������ ������ ������ٸ� ������ ID�� ���̹�ȯ
     *
     *-------------------------------
     *�������� ��Ȳ
     *Ŭ���̾�Ʈ ���α׷�
     *1.������ ���� �ᱣ���� ���
     *2.������ ���� ���� ID�� response header�� ����־��ٸ��� ���� ID�� ����
     *3.������ ��û���� request header�� ���� ID�� ���� ��Ƽ� ����
     * */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�������� ���ǰ�ü�� ���;��� dopost���� doget���� ȣ���ϵ��� ���� �������� doget�� �������൵��
		HttpSession session = request.getSession();//������ ���
		//setArrtribute�� ����ؼ� �����͸� ������ ��
		//������ �������� �ʾ����� ������ ����
		
		//���ǿ� �̸�=�� �� ���·� �����͸� ����
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		session.setAttribute("id", id);//Ŭ���̾�Ʈ�� ������ ��û�Ķ���� �� ���ǿ� ����
		session.setAttribute("pw", pw);//���Ǿȿ� �����Ͱ��� null�̶�� ���� ������ �����ؼ� ����
		//�ι�° �Ű����� session�� objectŸ���̶� ����Ҷ� �� ����ȯ�� ���־���Ѵ�
		session.setMaxInactiveInterval(10);//������ ������ �����Ǵ� ���� �������� �ð��� �����ִ°� �⺻���� 1800�� (30��)
		RequestDispatcher dis = request.getRequestDispatcher("/chapter13/session01_success.jsp");
		dis.forward(request, response);
		
		
		//������ ���ٸ� http�� �� ������ �� ó���ɶ� �����͵� ���� �������
		//������ ���ǿ� ����ִ°��� ���������� ����Ǳ� ������ �����Ͱ� ����ִ�
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
