<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>TCATCH</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
	
<!-- CSS Files -->

<link href="resources/css/mypage.css" rel="stylesheet" />
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />

<style>
ul {
	list-style: none;
}

.my_list01 {
	display: inline-block;
	list-style: none;
}

.my_list01 li {
	float: left;
	border-right: 1px dotted paleturquoise;
	background-color: #f9f9fb;
	_display: inline-block;
	_overflow: hidden;
	_height: 100px;
	padding-bottom: 5px
}

.my_list01 li div {
	padding-right: 20px;
	width: 270px;
	height: 110px;
	padding: 18px 21px 18px 18px;
}

.my_list01 li div.end {
	background: none;
	border: none;
	width: 206px;
}

.my_list01 li img {
	float: left;
}

.my_list01 li strong {
	margin-left: 65px;
	font-weight: bold;
	color: #3c3c3c;
	display: block;
	margin-bottom: 6px;
	height: 26px;
	margin-top: 2px;
	margin-left: 61px;
	line-height: 13px;
	word-wrap: break-word;
	word-break: break-all;
	overflow: hidden;
}

.my_list01 li span {
	margin-left: 62px;
	font-size: 11px;
	display: block;
	line-height: 15px;
}

.my_list01 li.nocont {
	text-align: center;
	width: 728px;
	padding-bottom: 35px;
	_height: 70px;
}

.my_list01 li.nocont em {
	display: block;
	font-size: 12px;
	margin-bottom: 3px;
	padding-top: 32px;
	border-top: 1px solid #d2d2d2;
}

.my_list01 li.nocont a {
	display: inline-block;
}
</style>
</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="white" data-active-color="danger">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com" class="simple-text logo-mini">
					<div class="logo-image-small">
						<img src="../assets/img/logo-small.png">
					</div>
				</a> <a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> 신하은님의 MYPAGE <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
				</a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li><a href="./dashboard.html"> <i
							class="nc-icon nc-check-2"></i>
							<p>예매확인/취소</p>
					</a></li>
					<li class="active"><a href="./icons.html"> <i
							class="nc-icon nc-favourite-28"></i>
							<p>나의 관심 공연</p>
					</a></li>
					<li><a href="./map.html"> <i class="nc-icon nc-paper"></i>
							<p>나의 관람 공연</p>
					</a></li>
					<li><a href="./notifications.html"> <i
							class="nc-icon nc-bell-55"></i>
							<p>나의 맞춤 설정</p>
					</a></li>
					<li><a href="./user.html"> <i class="nc-icon nc-single-02"></i>
							<p>회원정보 수정</p>
					</a></li>
					<li><a href="./tables.html"> <i class="nc-icon nc-tile-56"></i>
							<p>Table List</p>
					</a></li>
					<li><a href="./typography.html"> <i
							class="nc-icon nc-caps-small"></i>
							<p>Typography</p>
					</a></li>
					<li class="active-pro"><a href="./upgrade.html"> <i
							class="nc-icon nc-spaceship"></i>
							<p>Upgrade to PRO</p>
					</a></li>
				</ul>
			</div>
		</div>

		<!-- <jsp:include page="leftMeun.html"/> -->
		<div class="main-panel">
			<div class="content" style="margin-top: 5px;">
				<div class="row">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="nc-icon nc-favourite-28"></i> 나의 관심 공연
								</h4>
							</div>
							<div class="card-body">
								<table class="table">
									<thead class=" text-primary">
										<th>등록일</th>
										<th>공연명</th>
										<th>상세정보</th>

									</thead>
									<tbody>
										<tr>
											<td><input name="chkInterestPerf" type="checkbox"
												value="35104"> &nbsp; 2019.02.12</td>
											<td>
												<p class="list">
												<p style="float: left; margin-right: 3px;">
													<img
														src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200106/20200106-35104_1.jpg"
														width="72" height="89" alt="뮤지컬 [쓰릴 미]"></a>
												</p> <br>
											<a href="/Pages/Perf/Detail/Detail.aspx?IdPerf=35104"><strong>뮤지컬
														[쓰릴 미]</strong> </a> <br> <span>2019.12.10~2020.03.01</span> <span>예스24스테이지
													2관</span>
												</p>
												</div>
											</td>
											<td>
												<button class="btn">예매하기</button>
											</td>

										</tr>
										<tr>
											<td><input name="chkInterestPerf" type="checkbox"
												value="35104"> &nbsp; 2019.02.12</td>
											<td>
												<p class="list">
												<p style="float: left; margin-right: 3px;">
													<img
														src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200106/20200106-35104_1.jpg"
														width="72" height="89" alt="뮤지컬 [쓰릴 미]"></a>
												</p> <br>
											<a href="/Pages/Perf/Detail/Detail.aspx?IdPerf=35104"><strong>뮤지컬
														[쓰릴 미]</strong> </a> <br> <span>2019.12.10~2020.03.01</span> <span>예스24스테이지
													2관</span>
												</p>
												</div>
											</td>
											<td>
												<button class="btn">예매하기</button>
											</td>

										</tr>
										<tr>
											<td><input name="chkInterestPerf" type="checkbox"
												value="35104"> &nbsp; 2019.02.12</td>
											<td>
												<p class="list">
												<p style="float: left; margin-right: 3px;">
													<img
														src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200106/20200106-35104_1.jpg"
														width="72" height="89" alt="뮤지컬 [쓰릴 미]"></a>
												</p> <br>
											<a href="/Pages/Perf/Detail/Detail.aspx?IdPerf=35104"><strong>뮤지컬
														[쓰릴 미]</strong> </a> <br> <span>2019.12.10~2020.03.01</span> <span>예스24스테이지
													2관</span>
												</p>
												</div>
											</td>
											<td>
												<button class="btn">예매하기</button>
											</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div>
								<div style="float: right; margin-right: 50px;">
									<button class="btn btn-sm">전체 선택</button>
									<button class="btn btn-sm">선택 삭제</button>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!--   Core JS Files   -->
			<script src="../assets/js/core/jquery.min.js"></script>
			<script src="../assets/js/core/popper.min.js"></script>
			<script src="../assets/js/core/bootstrap.min.js"></script>
			<script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
			<!--  Google Maps Plugin    -->
			<script
				src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
			<!-- Chart JS -->
			<script src="../assets/js/plugins/chartjs.min.js"></script>
			<!--  Notifications Plugin    -->
			<script src="../assets/js/plugins/bootstrap-notify.js"></script>
			<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
			<script src="../assets/js/paper-dashboard.min.js?v=2.0.0"
				type="text/javascript"></script>
			<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
			<script src="../assets/demo/demo.js"></script>
			<script>
    $(document).ready(function () {
      // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
      demo.initChartsPages();
    });
  </script>
</body>

</html>