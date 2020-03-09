<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:set var="contextPath" value="${pageContext.request.contextPath}"
	scope="application" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel='stylesheet' type='text/css'
	href="${ contextPath }/resources/css/menu/main1.css" />
</head>

<style>
.navbar {
	border-bottom: 1px solid black;
}

.navbar-nav {
	margin-left:400px;
}
ul li{
	font-size: 25px;
	font-family: 'Do Hyeon', sans-serif;
}


.pf-top-right {
	margin-left:300px;
}
</style>
<body style="height: 1500px">

	<nav class="navbar navbar-expand-sm bg-white navbar-dark fixed-top">
		<a href="home.do" class="pf-logo"><img
			src="http://tkfile.yes24.com/imgNew/common/pf-logo.png" alt=""
			class="trans" /> <img
			src="${ contextPath }/resources/images/common/logo.png" alt=""
			class="fixed" width="150px" height="100px" /></a>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#"
				style="color: black;">콘서트</a></li>
			<li class="nav-item"><a class="nav-link" href="musical.do"
				style="color: black;">뮤지컬</a></li>
			<li class="nav-item"><a class="nav-link" href="#"
				style="color: black;">연극</a></li>
			<li class="nav-item"><a class="nav-link" href="#"
				style="color: black;">전시</a></li>
			<li class="nav-item"><a class="nav-link" href="clist.do"
				style="color: black;">커뮤니티</a></li>
			<li class="nav-item"><a class="nav-link" href="cnotice.do"
				style="color: black;">안내</a></li>
		</ul>

		<div class="pf-top-right">
			<a href="#" onclick=""> <img
				src="http://tkfile.yes24.com/imgNew/common/pf-srch-w.png" alt=""
				class="fixed" /></a>
			&emsp;
			<c:if test="${ empty sessionScope.loginUser }">
				<a href="loginPage.do" class="my-ticket"><span>로그인</span></a>
			</c:if>
			<c:if test="${ !empty sessionScope.loginUser }">
				<a href="enterMyPage.do" class="my-ticket"><span>${ loginUser.name }
						MY</span></a>
				<a href="logout.do" class="global"><span>로그아웃</span></a>
			</c:if>
		</div>
	</nav>
	
	<link
		href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
		rel="stylesheet">

	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">

</body>
</html>