<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>��Ű ��ȸ</h1>
	<%
		// ��Ű ��ȸ
		// request.getCookies(); --> ��� ��Ű �ѹ��� ������
		Cookie[] cookies = request.getCookies();
		
		// ��Ű ���
		// for each��
		// for( ���� ���� ���� : �迭 )
		for(Cookie c : cookies){
			
			// Cookie �̸�
			String cName = c.getName();
			
			// Cookie ��
			// ���ڵ�
			//
			// URLDecoder.decode("");
			String cValue = URLDecoder.decode(c.getValue(), "euc-kr");
			
			if(cName.contains("cookie")){
			out.print(cName + " : " + cValue + "<br>");
			}
		}
	%>
	
	<a href="ex03updateCookie.jsp">��Ű����/����</a>
	
</body>
</html>