<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="error-container" style="text-align:center;">
		<h1>Error</h1>
		<h2 style="color:red;">${msg}<br>
		<%= request.getAttribute("javax.servlet.error.message") %></h2>
		<a href="home.do">시작페이지로 돌아가기</a>
	</div>

</body>
</html>