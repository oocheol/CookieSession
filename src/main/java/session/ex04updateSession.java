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
		
		// 세션 객체 생성
		HttpSession session = request.getSession();
		
		// 세션 수정
		// 기존에 있는 이름을 똑같이 쓰면, 덮어쓰기
		session.setAttribute("string", "세션 수정");
		
		// 세션 삭제
		// session.removeAttribute("Name");
		// Name에 해당하는 세션 삭제
		session.removeAttribute("int");
		
		// 세션 전체 삭제
		// session.invalidate();
		
		response.sendRedirect("ex05selectSession.jsp");
		
		
		
	}
}
