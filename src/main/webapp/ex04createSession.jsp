<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>���� ����</h1>
	<%
		// jsp ���尴ü �� �ϳ�
		// HttpSession session = request.getSession();
		// session.setAttribute("Name", Object);
		session.setAttribute("string", "���� ����");
		session.setAttribute("int", 100);
	%>

	<a href="ex05selectSession.jsp">���� ��ȸ</a>
	
</body>
</html>