<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>���� ��ȸ</h1>
	<%
		// ���� �� ������
		// session.getAttribute("Name"); > Name�� �ش��ϴ� ���� ������ null�� ��ȯ
		// session���� Object Ÿ������ ����
		// ==> ������ ���� ��, �ٿ�ĳ���� �ʿ�!!
		// (�ٲٰ� ���� Ÿ��) session.getAttribute("");
		String s = (String) session.getAttribute("string");
		Integer i = (Integer) session.getAttribute("int");
		
		out.print(s + "<br>");
		out.print(i + "<br>");
		
	%>

	<a href="ex04updateSession">���� ����, ����</a>

</body>
</html>