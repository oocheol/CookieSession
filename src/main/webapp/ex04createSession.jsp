<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>技记 积己</h1>
	<%
		// jsp 郴厘按眉 吝 窍唱
		// HttpSession session = request.getSession();
		// session.setAttribute("Name", Object);
		session.setAttribute("string", "技记 积己");
		session.setAttribute("int", 100);
	%>

	<a href="ex05selectSession.jsp">技记 炼雀</a>
	
</body>
</html>