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
					<li><i class="nc-icon nc-check-2"></i>
							<p>예매확인/취소</p>
					</li>
					<li><a href="./icons.html"> <i
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
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="nc-icon nc-zoom-split"></i> 최근예매내역
								</h4>
								<button class="btn btn-sm" style="float: right;">더보기</button>
								&nbsp;
								<p class="card-category" style="margin-left: 190px;">최근
									3개월간의 예매 내역입니다.</p>
							</div>
							<div class="card-body">
								<table class="table">
									<thead class=" text-primary">
										<th>예매일</th>
										<th>예매번호</th>
										<th>공연명</th>
										<th>관람일시</th>
										<th>매수</th>
									</thead>
									<tbody>
										<tr>
											<td>2020.02.09</td>
											<td>A101</td>
											<td>겨울왕국: 겨울이야기</td>
											<td>2020.04.01</td>
											<td>1</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="nc-icon nc-zoom-split"></i> 나의 관심 공연
								</h4>
								<button class="btn btn-sm" style="float: right;">더보기</button>
								&nbsp;
								<p class="card-category" style="margin-left: 200px;">
									'나의 관심공연'이 <em>2</em>개 있습니다.
								</p>
							</div>
							<div class="card-body">
								<ul id="ulInteresetPerfList" class="my_list01">
									<li>
										<div>
											<a href="/Pages/Perf/Detail/Detail.aspx?idPerf=35104"
												title="뮤지컬 [쓰릴 미]로 이동"><img
												src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200106/20200106-35104_1.jpg"
												class="poster_line" width="53" height="65" alt="뮤지컬 [쓰릴 미]"></a><a
												href="/Pages/Perf/Detail/Detail.aspx?idPerf=35104"><strong>뮤지컬
													[쓰릴 미]</strong></a> <span>2019.12.10~2020.03.01</span><span>예스24스테이지
												2관</span>
										</div>
									</li>
									<li>
										<div>
											<a href="/Pages/Perf/Detail/Detail.aspx?idPerf=35971"
												title="TWICE WORLD TOUR TWICELIGHTS in Seoul ‘FINALE’로 이동"><img
												src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200113/20200113-35971_1.jpg"
												class="poster_line" width="53" height="65"
												alt="TWICE WORLD TOUR TWICELIGHTS in Seoul ‘FINALE’"></a><a
												href="/Pages/Perf/Detail/Detail.aspx?idPerf=35971"><strong>TWICE
													WORLD TOUR TWICELIGHTS in Seoul ..</strong></a> <span>2020.03.07~2020.03.08</span><span>KSPO
												DOME(올림픽체조경기장)</span>
										</div>
									</li>
									<li>
										<div class="end"></div>
									</li>

								</ul>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="nc-icon nc-zoom-split"></i> 나의 관람 공연
								</h4>
								<button class="btn btn-sm" style="float: right;">더보기</button>
							</div>
							<div class="card-body">

								<ul class="my_list01 rv_bor">
									<li>
										<div>
											<a href="/Pages/Perf/Detail/Detail.aspx?idPerf=18681"><img
												src="http://tkfile.yes24.com/upload2/PerfBlog/201408/20140807/20140807-18681_1.jpg"
												class="poster_line" width="53" height="65"
												alt="Ripple Effect the Concert"></a><a
												href="/Pages/Perf/Detail/Detail.aspx?idPerf=18681"><strong>Ripple
													Effect the Concert</strong></a><span class="red"></span><span>예매번호:
												Y16393010</span><span><a
												href="/Pages/Perf/Detail/Detail.aspx?idPerf=18681"><img
													src="http://tkfile.yes24.com/img/mypage/btn_minfor.gif"
													alt="공연정보"></a><a href="/Perf/18681?idorder=16393010"><img
													src="http://tkfile.yes24.com/img/mypage/btn_after.gif"
													alt="관람후기 작성"></a></span>
										</div>
									</li>
									<li>
										<div></div>
									</li>
									<li>
										<div class="end"></div>
									</li>

								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>

</html>


