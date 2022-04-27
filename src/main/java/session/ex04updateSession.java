package session;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ex04updateSession")
public class ex04updateSession extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// ���� ��ü ����
		HttpSession session = request.getSession();
		
		// ���� ����
		// ������ �ִ� �̸��� �Ȱ��� ����, �����
		session.setAttribute("string", "���� ����");
		
		// ���� ����
		// session.removeAttribute("Name");
		// Name�� �ش��ϴ� ���� ����
		session.removeAttribute("int");
		
		// ���� ��ü ����
		// session.invalidate();
		
		response.sendRedirect("ex05selectSession.jsp");
		
		
		
	}
}
