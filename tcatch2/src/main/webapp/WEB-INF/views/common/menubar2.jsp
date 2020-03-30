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
	href="${contextPath }/resources/css/menu/main3.css">
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
	margin-left: 250px;
}

ul li {
	font-size: 15px;
	margin: 2px;
}

.navbar-nav li:hover {
	font-weight: 900;
}

.pf-top-right {
	margin-left: 200px;
}

.my {
	background: url(${contextPath}/resources/images/common/user.png)
		no-repeat;
	border: none;
	width: 50px;
	height: 25px;
	margin-top: 10px;
	pading: 0;
}

.logout {
	background: url(${contextPath}/resources/images/common/logout.png)
		no-repeat;
	border: none;
	width: 50px;
	height: 25px;
	margin: auto;
	padding: 0;
}

#span1 {
	float: left;
	margin-left: -10px;
	font-size: 10px;
	visibility: hidden;
}

#span2 {
	float: left;
	margin-left: -10px;
	font-size: 10px;
	visibility: hidden;
}

.fixed {
	margin-bottom: 5px;
}

.nav-link {
	font-size: 15px;
}
</style>
<body>
<c:if test="${ !empty msg }">
      <script>
         alert('${msg}');
      </script>
      <c:remove var="msg"/>
</c:if>

	<nav class="navbar navbar-expand-sm bg-white navbar-dark fixed-top">
		<a href="home.do" class="pf-logo"><img
			src="http://tkfile.yes24.com/imgNew/common/pf-logo.png" alt=""
			class="trans" /> <img
			src="${ contextPath }/resources/images/common/logo.png" alt=""
			class="fixed" width="150px" height="100px" /></a>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="concert.do"
				style="color: black; font-size: 15px;">콘서트</a></li>
			<li class="nav-item"><a class="nav-link" href="musical.do"
				style="color: black; font-size: 15px;">뮤지컬</a></li>
			<li class="nav-item"><a class="nav-link" href="drama.do"
				style="color: black; font-size: 15px;">연극</a></li>
			<li class="nav-item"><a class="nav-link" href="exhibition.do"
				style="color: black; font-size: 15px;">전시</a></li>
			<li class="nav-item"><a class="nav-link" href="clist.do"
				style="color: black; font-size: 15px;">커뮤니티</a></li>
			<li class="nav-item"><a class="nav-link" href="cnotice.do"
				style="color: black; font-size: 15px;">안내</a></li>
			<li class="nav-item"><a class="nav-link" href="admin.do"
				style="color: black; font-size: 15px;">관리자페이지</a></li>
		</ul>

		<div class="pf-top-right">
			<a href="searchArtForm.do"> <img src="http://tkfile.yes24.com/imgNew/common/pf-srch-w.png" alt="" class="fixed" /></a> &emsp;&emsp;&emsp;
			<c:if test="${ empty sessionScope.loginUser }">
				<button class="my" onclick="location.href='loginPage.do'">
					<br>
					<span id="span1">로그인</span>
				</button>

			</c:if>
			<c:if test="${ !empty sessionScope.loginUser }">
				<button class="my" onclick="location.href='enterMyPage.do'">
					<br>
					<span id="span1">${loginUser.name }님</span>
				</button>
				&emsp;
				<button class="logout" onclick="location.href='logout.do'">
					<br>
					<span id="span2">로그아웃</span>
				</button>

			</c:if>
		</div>
	</nav>
	<script>
		$(function() {
			$(".my").on("mouseenter", function() {
				$("#span1").css("visibility", "visible");
			});
			$(".my").on("mouseout", function() {
				$("#span1").css("visibility", "hidden");
			});
			$(".logout").on("mouseenter", function() {
				$("#span2").css("visibility", "visible");
			});
			$(".logout").on("mouseout", function() {
				$("#span2").css("visibility", "hidden");
			});
		});
	</script>
	<!--Start of Tawk.to Script-->
	<script type="text/javascript">
		var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
		(function() {
			var s1 = document.createElement("script"), s0 = document
					.getElementsByTagName("script")[0];
			s1.async = true;
			s1.src = 'https://embed.tawk.to/5e736212eec7650c33211c25/default';
			s1.charset = 'UTF-8';
			s1.setAttribute('crossorigin', '*');
			s0.parentNode.insertBefore(s1, s0);
		})();
	</script>
	<!--End of Tawk.to Script-->

	<link
		href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
		rel="stylesheet">

	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">

</body>
</html>