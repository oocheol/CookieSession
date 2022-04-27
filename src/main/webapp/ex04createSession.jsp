<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 생성</h1>
	<%
		// jsp 내장객체 중 하나
		// HttpSession session = request.getSession();
		// session.setAttribute("Name", Object);
		session.setAttribute("string", "세션 생성");
		session.setAttribute("int", 100);
	%>

	<a href="ex05selectSession.jsp">세션 조회</a>
	
</body>
</html>