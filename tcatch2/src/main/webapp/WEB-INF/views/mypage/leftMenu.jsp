<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>TCATCH-MyPage</title>
<link rel="shortcut icon" type="image/x-icon" href='${contextPath}/resources/images/common/logo.png'>
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<!-- CSS Files -->

<!-- <link href="resources/css/bootstrap.min.css" rel="stylesheet" /> -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="resources/css/mypage/mypage.css" rel="stylesheet" />
<link href="resources/css/mypage/mypage2.css" rel="stylesheet" />
<style>
section, div {
	box-sizing: border-box;
	display: block;
}

.wrapper {
	display: inline-block;
	width: 1300px;
	height: 100%;
	margin-top: 150px;
	margin-left: 100px;
	margin-right: 200px;
	margin-bottom: 150px;
}

div {
	display: block;
}

.sidebar {
	width: 15%;
	height: 100%;
	float: left;
	display: absolute;
	top: 0px;
	left: 0px;
}

.main-panel {
	width: 83%;
	height: 100%;
}
</style>
</head>
<body>

	<div class="sidebar" data-color="black" data-active-color="danger">
		<div class="logo" style="margin-top: 20px;">
			<a href="enterMyPage.do" class="simple-text logo-normal"
				style="text-align: center"> ${loginUser.name }님의 MYPAGE </a>
		</div>
		<div class="sidebar-wrapper" style="height: 310px">
			<ul class="nav">
				<li id="cnc"><a href="checknCancel.do"><i
						class="fa fa-* fa-check"></i>
						<p>예매확인/취소</p></a></li>
				<li id="interest"><a href="interestPerformance.do"> <i
						class="fa fa-* fa-heart"></i>
						<p>나의 관심 공연</p>
				</a></li>
				<li id="viewPer"><a href="viewPerformance.do"> <i
						class="fa  fa-* fa-eye"></i>
						<p>나의 관람 공연</p>
				</a></li>
				<li id="alarmS"><a href="alarmList.do"> <i
						class="fa fa-* fa-bell"></i>
						<p>나의 맞춤 설정</p>
				</a></li>
				<li id="userU"><a href="mInformationSetting.do"> <i
						class="fa fa-* fa-user"></i>
						<p>회원 정보 관리</p>
				</a></li>

			</ul>
		</div>
	</div>
	<script>
		$(function() {
			/* $(window).scroll(function() { //스크롤이 움직일때마다 이벤트 발생 
				var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
				$('.sidebar').stop().animate({
					"top" : position + "px"
				}, 1); //해당 오브젝트 위치값 재설정
			});
			 */
		});
	</script>
</body>
</html>