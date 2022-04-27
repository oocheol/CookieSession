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
		String page1 = (String) pageContext.getAttribute("page");
		out.print(page1 + "<br>");
		
		String req = (String) request.getAttribute("request");
		out.print(req + "<br>");
		
		String ses = (String) session.getAttribute("session");
		out.print(ses + "<br>");
		
		String app = (String) application.getAttribute("app");
		out.print(app + "<br>");
	%>

</body>
</html>