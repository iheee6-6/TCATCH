<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>TCATCH</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
	
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet"/>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet"/>
<!-- CSS Files -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/mypage.css" rel="stylesheet" />
<link href="resources/css/mypage2.css" rel="stylesheet" />


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

section,div {
	box-sizing: border-box;
	display: block;
}

.wrapper{
margin-top: 150px;  
margin-left:200px; 
margin-right:200px;
}

.sidebar{
	width:17%;
	height:100%;
	float:left;
}

.main-panel{
	width:83%;
	height:100%;
}
</style>
</head>
<body class="">
<jsp:include page="../common/menubar.jsp"/>

	<div class="wrapper">
		<jsp:include page="leftMenu.jsp"/>
		
		<div class="main-panel" >
			<div class="content" style="margin-top: 5px;">
				<div class="row">
					<div class="col-md-9">
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


