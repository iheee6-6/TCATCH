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
			<a href="cnotice.do">예매방법</a> <a href="cnotice2.do">수수료</a> <a
				href="cnotice3.do">취소/환불</a> <a href="cnotice4.do" class="on">티켓판매/제휴문의</a>
		</div>

		<div class="guidebox gb07" style="display: block;">
			<div class="gb07box">
				<p>판매 상담 및 계약</p>
				<ul>
					<li>판매 대행 의뢰할 공연에 대한 개요를 대표 E-mail 로 발송해주시면, 담당자가 확인 후 기획사
						담당자에게 연락을 드립니다. gotepam@naver.com</li>
					<li>담당자와 공연 판매 대행 관련 상담 및 계약을 진행합니다.</li>
					<li>연간계약과 단일계약 중 선택하여 계약하고 관련 서류 작업을 완료합니다.</li>
				</ul>

			</div>
			
			<div class="gb07box">
				<p>공연 상품 등록</p>
				<ul>
					<li>공연 등록 의뢰서 작성 후 각 담당자 E-mail 또는  gotepam@naver.com 로 보내주세요.</li>
					<li>공연 등록에 필요한 이미지, 좌석배치도 등과 함께 사업자등록증, 통장 사본을 전달주시면 더욱 빠르게 처리 가능합니다.</li>
					<li>등록 자료 접수 후 영업일 기준 3~4일 이내에 등록됩니다.</li>
					<li>필요한 경우 티켓 오픈 관련 공지사항을 게시할 수 있습니다. </li>
				</ul>

			</div>
		</div>

		<jsp:include page="../common/footer.jsp" />
</body>
</html>
