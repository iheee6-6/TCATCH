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
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/mypage.css" rel="stylesheet" />
<link href="resources/css/mypage2.css" rel="stylesheet" />

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

section, div {
	box-sizing: border-box;
	display: block;
}

.wrapper {
	margin-top: 150px;
	margin-left: 200px;
	margin-right: 200px;
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
	<jsp:include page="../common/menubar.jsp" />

	<div class="wrapper">
		<jsp:include page="leftMenu.jsp" />
		<div class="main-panel">
			<div class="content" style="margin-top: 5px;">
				<div class="row">
					<div class="col-md-9">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="nc-icon nc-paper"></i> 나의 관람 공연
								</h4>
								&nbsp;
								<p class="card-category" style="margin-left: 200px;">
									<strong>신하은</strong>님의 관람 공연은 총 <em>1</em>건 입니다.
								</p>
							</div>
							<div class="card-body">
								<div class="mypage_contain" style="margin: 4px;">
									<div class="date_list" style="border: 1px solid gray;">
										<ul>
											<li><img
												src="http://tkfile.yes24.com/img/mypage/th_02.gif" alt="기간별">
												<input id="txtFrom" name="txtFrom" type="text"
												class="date w70 hasDatepicker" value="2019-08-03"
												style="width: 90px; z-index: 999; position: relative;"
												autocomplete="off"> <img
												class="ui-datepicker-trigger"
												src="http://tkfile.yes24.com/img/mypage/btn_cal.gif"
												alt="날짜를 선택하세요. title=" 날짜를선택하세요."> ~ <input
												id="txtTo" name="txtTo" type="text"
												class="date w70 hasDatepicker" value="2020-02-03"
												style="width: 90px; z-index: 999; position: relative;"
												autocomplete="off"><img
												class="ui-datepicker-trigger"
												src="http://tkfile.yes24.com/img/mypage/btn_cal.gif"
												alt="날짜를 선택하세요. title=" 날짜를선택하세요."></li>
											<li class="sec"><img src="http://tkfile.yes24.com/img/mypage/th_03.gif" alt="장르별">
												<select name="ViewPerformance1$ddlGenre"
												id="ViewPerformance1_ddlGenre">
													<option value="-1">장르선택</option>
													<option value="15456">콘서트</option>
													<option value="15457">뮤지컬</option>
													<option value="15458">연극</option>
													<option value="15460">전시</option>

											</select> <a id="btnGenreSearch" href="#"> <img
													src="http://tkfile.yes24.com/img/mypage/btn_srch.gif"
													alt="조회"></a></li>
											<li><img
												src="http://tkfile.yes24.com/img/mypage/th_04.gif" alt="공연명">
												<input id="txtViewPerformanceSearch"
												name="txtViewPerformanceSearch" type="text"
												style="width: 230px;" value="공연명을 입력해주세요."
												autocomplete="off"> <a id="btnViewPerformanceSearch"
												href="#"> <img
													src="http://tkfile.yes24.com/img/mypage/btn_srch.gif"
													alt="조회"></a></li>
										</ul>
									</div>
									<div id="divResult">
										<div class="memo end">
											<h3 style="margin: 0">
												<div class="number">
													<span>1</span>
												</div>
												<strong>Ripple Effect the Concert</strong>
											</h3>
											<p class="poster"
												style="margin-right: 50px; margin-left: 30px; padding: 0px;">
												<img
													src="http://tkfile.yes24.com/upload2/PerfBlog/201408/20140807/20140807-18681_1.jpg"
													width="141" height="174" alt="Ripple Effect the Concert">
											</p>
											<ul>
												<li><em>예매번호</em><span class="bold">Y16393010</span></li>
												<li><em>장르</em><span>콘서트</span></li>
												<li><em>관람일시</em><span>2014.08.16 06:00 </span></li>
												<li><em>공연장</em><span>예스24 무브홀 (구,클럽 맨션)</span></li>
												<li><em>좌석(<span class="red">2</span>)
												</em><span> </span></li>
											</ul>
											<br>
											<div>
												<button class="btn btn-sm">공연정보</button>
												<button class="btn btn-sm">관람후기 작성</button>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
	$(function(){
		$("#viewPer").addClass("active");
	});
	</script>
</body>

</html>