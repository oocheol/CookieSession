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
		// pageContext : �� jsp page �ϳ������� ����
		pageContext.setAttribute("page", "page scope");
	
		// request : �ѹ��� ��û-���� ���� ����
		request.setAttribute("request", "request scope");
		
		// session : �ϳ��� ������ ������ ����
		session.setAttribute("session", "session scope");
		
		// application : ��Ĺ ������ �����ִ� ���� ����
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
		
		// Forward ���
		// request.getRequestDispatcher("���� ������ url ���");
		RequestDispatcher rd = request.getRequestDispatcher("ex06selectScope.jsp");
		
		// forward ��� �̵�
		rd.forward(request, response);
	
		
	%>

	<a href="ex06selectScope.jsp">scope Ȯ��</a>

</body>
</html>