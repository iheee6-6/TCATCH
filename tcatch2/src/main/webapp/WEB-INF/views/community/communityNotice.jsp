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
			<a href="cnotice.do" class="on">예매방법</a>
			<a href="cnotice2.do">수수료</a>
			<a href="cnotice3.do">취소/환불</a> 
			<a href="cnotice4.do">티켓판매/제휴문의</a>
		</div>

		<div class="guidebox gb01" style="display: block;">
			<hr>
			<div class="gb01-con">
				<p class="gb01-con-tit">1. 본인인증/로그인</p>
				<p class="gb01-con-txt">
					빠른 예매를 위해 로그인을 먼저 해주세요. <br> 예매는 <span>본인인증된 ID로만 가능</span>
					합니다. <br> 개인 정보 보호 및 관리를 위해 예매 전 가입된 회원 정보를 확인해주시기 바라며, 주기적으로
					비밀번호를 변경해주시기 바랍니다.
				</p>
				<div class="imgdiv">
					<img src="${contextPath }/resources/images/notice/login.png">
				</div>
			</div>

			<div class="gb01-con">
				<p class="gb01-con-tit">2. 공연 및 관람일시 선택</p>
				<p class="gb01-con-txt">
					관람 원하는 공연 선택 > [예매하기] 버튼 클릭 > 관람하실 날짜와 시간을 선택합니다. <br> (공연
					상세페이지에서 관람일 및 회차를 선택 한 경우 이후 단계에 자동 적용 됩니다.)
				</p>
				<div class="imgdiv">
					<img src="${contextPath }/resources/images/notice/login.png">
				</div>

			</div>

			<div class="gb01-con">
				<p class="gb01-con-tit">3. 좌석 선택</p>
				<div class="gb01-con-2way">
					<div>
						<img src="${contextPath }/resources/images/notice/seat.png">
					</div>

					<p class="gb01-con-txt">
						좌석도에서 원하는 좌석을 선택합니다. 좌석 선택 시 티켓 결제 가격이 자동 적용 됩니다. <br> 규모가 큰
						공연장은 미니맵을 이용하여 구역, 층을 이동하여 다른 좌석을 선택할 수 있습니다. <br> 다른 일시로의
						변경을 원하는 경우 좌석도 상단에서 관람일/회차 변경을 선택해주세요. <br> <span
							class="gb-txt-smaller"> - 동시 접속 회원이 많아 예매가 집중되면, 간혹 선택한
							좌석이 다른 회원과 중복될 수 있습니다. <br> 이 때는 결제를 먼저 완료한 분께 좌석이 지정됩니다. <br>
							- 좌석을 선점한 경우에도 일정 시간이 지나도록 결제 완료를 하지 않으면 선점 해제가 됩니다.
						</span> <br> <br> 비지정석 공연의 경우 좌석 선택 단계 없이 등급/매수만 선택합니다. <br>
						* 안내되어 있는 잔여석 정보는 현재 예매 진행 중인(결제 전) 좌석이 포함되어 있어 실제 예매 가능 좌석수와 다를 수
						있습니다.

					</p>
				</div>
			</div>

			<div class="gb01-con">
				<p class="gb01-con-tit">4. 결제하기</p>
				<div class="gb01-con-2way">
					<div>
						<img src="${contextPath }/resources/images/notice/pay.png"
							style="width: 500px;">
					</div>
					<br> <br> <br> <br>
					<p class="gb01-con-txt">
						원하는 결제 수단을 선택합니다. <br> 상품별로 사용 가능한 결제 수단에 제한이 있을 수 있습니다.
					</p>
				</div>
			</div>

			<div class="gb01-con">
				<p class="gb01-con-tit">5. 예매내역 확인</p>
				<div class="gb01-con-txt">
					<p class="gb01-con-txt">
						결제 완료 후 예매 내역은 회원 정보 마이페이지에서 <br> 예매내역 탭에서 확인 가능합니다.
					</p>
				</div>
			</div>

		</div>
		<!--guidebox gb01 예매방법-->

	</div>

	<jsp:include page="../common/footer.jsp" />




</body>
</html>
