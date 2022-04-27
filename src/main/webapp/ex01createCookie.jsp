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
	<h1>쿠키 생성</h1>
	<%
		// 쿠키 생성
		// new Cookie("Name", "Value(TEXT)")
		// Text >> 특수문자, 공백 허용X
		// URL방식 인코딩 필요!
		// URLEncoder.encode("문자열", "인코딩방법"); 
		String second = URLEncoder.encode("second cookie", "euc-kr");
		Cookie cookie1 = new Cookie("cookie1", "firstCookie");
		Cookie cookie2 = new Cookie("cookie2", second);
		Cookie cookie3 = new Cookie("cookie3", "third+cookie");
		
		// 응답에 쿠키 추가
		// addCookie(쿠키객체)
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		response.addCookie(cookie3);
		
	%>
		<a href="ex02selectCookie.jsp">쿠키조회</a>
		
	
		
</body>
</html>