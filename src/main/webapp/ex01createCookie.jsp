<%@page import="java.net.URLEncoder"%>
<%@page import="javax.servlet.http.Cookie"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>��Ű ����</h1>
	<%
		// ��Ű ����
		// new Cookie("Name", "Value(TEXT)")
		// Text >> Ư������, ���� ���X
		// URL��� ���ڵ� �ʿ�!
		// URLEncoder.encode("���ڿ�", "���ڵ����"); 
		String second = URLEncoder.encode("second cookie", "euc-kr");
		Cookie cookie1 = new Cookie("cookie1", "firstCookie");
		Cookie cookie2 = new Cookie("cookie2", second);
		Cookie cookie3 = new Cookie("cookie3", "third+cookie");
		
		// ���信 ��Ű �߰�
		// addCookie(��Ű��ü)
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		response.addCookie(cookie3);
		
	%>
		<a href="ex02selectCookie.jsp">��Ű��ȸ</a>
		
	
		
</body>
</html>