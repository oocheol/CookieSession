<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		// pageContext : 이 jsp page 하나에서만 유지
		pageContext.setAttribute("page", "page scope");
	
		// request : 한번의 요청-응답 동안 유지
		request.setAttribute("request", "request scope");
		
		// session : 하나의 브라우저 내에서 유지
		session.setAttribute("session", "session scope");
		
		// application : 톰캣 서버가 켜져있는 동안 유지
		application.setAttribute("app", "app scope");
	
	%>
	
	<%
		String page1 = (String) pageContext.getAttribute("page");
		out.print(page1 + "<br>");
		
		String req = (String) request.getAttribute("request");
		out.print(req + "<br>");
		
		String ses = (String) session.getAttribute("session");
		out.print(ses + "<br>");
		
		String app = (String) application.getAttribute("app");
		out.print(app + "<br>");
		
		// Forward 방식
		// request.getRequestDispatcher("다음 페이지 url 경로");
		RequestDispatcher rd = request.getRequestDispatcher("ex06selectScope.jsp");
		
		// forward 방식 이동
		rd.forward(request, response);
	
		
	%>

	<a href="ex06selectScope.jsp">scope 확인</a>

</body>
</html>