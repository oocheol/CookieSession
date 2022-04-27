<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 조회</h1>
	<%
		// 세션 값 꺼내기
		// session.getAttribute("Name"); > Name에 해당하는 것이 없으면 null값 반환
		// session에는 Object 타입으로 저장
		// ==> 변수에 담을 때, 다운캐스팅 필요!!
		// (바꾸고 싶은 타입) session.getAttribute("");
		String s = (String) session.getAttribute("string");
		Integer i = (Integer) session.getAttribute("int");
		
		out.print(s + "<br>");
		out.print(i + "<br>");
		
	%>

	<a href="ex04updateSession">세션 수정, 삭제</a>

</body>
</html>