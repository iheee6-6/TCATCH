<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>

<title>커뮤니티 안내</title>


<link rel='stylesheet' type='text/css'
	href='http://tkfile.yes24.com/New/Css/main2.css?v=2020012203' />
<link rel='stylesheet' type='text/css'
	href='http://tkfile.yes24.com/New/Css/guide.css' />

<script type="text/javascript"
	src="http://tkfile.yes24.com/New/Js/guide.js"></script>
<script type="text/javascript" src="/New/UserGuide/Scripts/FAQ.js?v=212"></script>
<style type="text/css">
body {
	font-family: 'NanumBarunGothic', '맑은 고딕', 'Malgun Gothic', sans-serif;
}

.imgdiv {
	margin-top: 20px;
	border: 1px solid black;
	box-shadow: 5px 5px 5px 5px gray;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar2.jsp" />
	<br>
	<br>
	<!-- 콘텐츠 //-->
	<div class="content-min-wrap">
		<p class="big-title">이용안내</p>
		<div class="brochure">
			
		</div>
		<div class="guide-division" style="text-align: center;">
			<a href="cnotice.do">예매방법</a> <a href="cnotice2.do" class="on">수수료</a> <a
				href="cnotice3.do">취소/환불</a> <a href="cnotice4.do">티켓판매/제휴문의</a>
		</div>

		<div class="guidebox gb07" style="display: block;">
			
		</div>

		<jsp:include page="../common/footer.jsp" />
</body>
</html>
