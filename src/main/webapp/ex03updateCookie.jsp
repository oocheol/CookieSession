<%@page import="java.net.URLEncoder"%>
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
		// ��Ű ���� ����
		// �Ȱ��� �̸��� ��Ű�� �������ָ� ����� �ȴ�.
		String value1 = URLEncoder.encode("ù��° ��Ű", "euc-kr");
		Cookie cookie1 = new Cookie("cookie1", value1);
		response.addCookie(cookie1);
		
		// ��ȿ�Ⱓ ����
		Cookie cookie2 = new Cookie("cookie2", "second");
		
		// cookie2.setMaxAge(���� : �� / int);
		cookie2.setMaxAge(60*60*24*365);
		response.addCookie(cookie2);
	
		// ��Ű ����
		Cookie cookie3 = new Cookie("cookie3", "");
		cookie3.setMaxAge(0);
		response.addCookie(cookie3);
		
		response.sendRedirect("ex02selectCookie.jsp");
		
	%>
	
</body>
</html>