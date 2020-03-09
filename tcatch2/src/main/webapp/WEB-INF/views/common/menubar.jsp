<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">

<title>Ticket Catch</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}"
	scope="application" />
	<link rel='stylesheet' type='text/css'
	href="${ contextPath }/resources/css/menu/main2.css" />
<link rel='stylesheet' type='text/css'
	href="${ contextPath }/resources/css/menu/menu.css" />
<link rel='stylesheet' type='text/css'
	href="${ contextPath }/resources/css/menu/main1.css" />




<style type="text/css">
body {
	font-family: 'NanumBarunGothic', '맑은 고딕', 'Malgun Gothic', sans-serif;
}

.consice {
	background-color: white;
}
.pf-top-srch{
	margin-left: 150px;
}
a{
	text-decoration: none;
}
</style>

</head>

<body>



	<header class="perform-top fixed" id="perform-top">

		<div class="pf-left">
			<h1>
				<a href="home.do" class="pf-logo"><img
					src="http://tkfile.yes24.com/imgNew/common/pf-logo.png" alt=""
					class="trans" />
					<img
					src="${ contextPath }/resources/images/common/logo.png" alt=""
					class="fixed" width="150px" height="100px"/></a>
			</h1>
		</div>
		<div class="pf-center">
			<h2>
				<a href="#">콘서트<span></span></a>
			</h2>
			<h2>
				<a href="musical.do">뮤지컬<span></span></a>

			</h2>
			<h2>
				<a href="#">연극<span></span></a>

			</h2>
			<h2>
				<a href="#">전시<span></span></a>

			</h2>

			<h2>
				<a href="clist.do">커뮤니티<span></span></a>
			</h2>
				
			<h2>
				<a href="cnotice.do">안내<span></span></a>
			</h2>	

		</div>
		<div class="pf-right">
			<div class="pf-top-srch" autocomplete="off">
				<input type="text" id="searchWord" /> <input type="hidden" name=""
					id="searchType" value="" /> <a href="#" onclick="jsf_mm_Search();"><img
					src="http://tkfile.yes24.com/imgNew/common/pf-srch.png" alt=""
					class="trans" /><img
					src="http://tkfile.yes24.com/imgNew/common/pf-srch-w.png" alt=""
					class="fixed" /></a>
			</div>
			<div class="pf-top-right">
			<c:if test="${ empty sessionScope.loginUser }">
			<a href="loginPage.do" class="my-ticket"><span>로그인</span></a>
			</c:if>
			<c:if test="${ !empty sessionScope.loginUser }">
			<a href="enterMyPage.do" class="my-ticket"><span>${ loginUser.name } MY</span></a>
			<a href="logout.do" class="global"><span>로그아웃</span></a>
			</c:if>
			</div>
		</div>
		<%-- <img src="${contextPath }/resources/images/common/logout.png" style="width:25px; height:25px; float:right;"> --%>
	</header>

</body>
</html>