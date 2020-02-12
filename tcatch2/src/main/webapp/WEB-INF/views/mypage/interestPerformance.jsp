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

.sidebar {
	width: 17%;
	height: 100%;
	float: left;
}

.main-panel {
	width: 83%;
	height: 100%;
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
												<p>
													<a href="/Pages/Perf/Detail/Detail.aspx?IdPerf=35104"><strong>뮤지컬
															[쓰릴 미]</strong> </a> <br> <span>2019.12.10~2020.03.01</span> <br>
													<span>예스24스테이지 2관</span>
												</p>
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
												<p>
													<a href="/Pages/Perf/Detail/Detail.aspx?IdPerf=35104"><strong>뮤지컬
															[쓰릴 미]</strong> </a> <br> <span>2019.12.10~2020.03.01</span> <br>
													<span>예스24스테이지 2관</span>
												</p>
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
												<p>
													<a href="/Pages/Perf/Detail/Detail.aspx?IdPerf=35104"><strong>뮤지컬
															[쓰릴 미]</strong> </a> <br> <span>2019.12.10~2020.03.01</span> <br>
													<span>예스24스테이지 2관</span>
												</p>
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
		</div>
	</div>
	<script>
		$(function() {
			$("#interest").addClass("active");
		});
	</script>
</body>

</html>