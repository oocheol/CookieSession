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
		// 쿠키 내용 수정
		// 똑같은 이름의 쿠키를 응답해주면 덮어쓰기 된다.
		String value1 = URLEncoder.encode("첫번째 쿠키", "euc-kr");
		Cookie cookie1 = new Cookie("cookie1", value1);
		response.addCookie(cookie1);
		
		// 유효기간 설정
		Cookie cookie2 = new Cookie("cookie2", "second");
		
		// cookie2.setMaxAge(단위 : 초 / int);
		cookie2.setMaxAge(60*60*24*365);
		response.addCookie(cookie2);
	
		// 쿠키 삭제
		Cookie cookie3 = new Cookie("cookie3", "");
		cookie3.setMaxAge(0);
		response.addCookie(cookie3);
		
		response.sendRedirect("ex02selectCookie.jsp");
		
	%>
	
</body>
</html>