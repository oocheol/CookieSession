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
	<h1>쿠키 조회</h1>
	<%
		// 쿠키 조회
		// request.getCookies(); --> 모든 쿠키 한번에 가져옴
		Cookie[] cookies = request.getCookies();
		
		// 쿠키 출력
		// for each문
		// for( 꺼내 담을 변수 : 배열 )
		for(Cookie c : cookies){
			
			// Cookie 이름
			String cName = c.getName();
			
			// Cookie 값
			// 디코딩
			//
			// URLDecoder.decode("");
			String cValue = URLDecoder.decode(c.getValue(), "euc-kr");
			
			if(cName.contains("cookie")){
			out.print(cName + " : " + cValue + "<br>");
			}
		}
	%>
	
	<a href="ex03updateCookie.jsp">쿠키수정/삭제</a>
	
</body>
</html>