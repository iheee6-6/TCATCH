<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCATCH</title>
<style>
	li a{
	font-size:13px;
	}
	.firstBtn{
		margin-right:10px;
	}
</style>
</head>
<body class="">
<jsp:include page="../common/menubar.jsp"/>

	<div class="wrapper">
		<jsp:include page="leftMenu.jsp"/>
		
		<div class="main-panel" >
			<div class="content" style="margin-top: 20px;">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="fa fa-* fa-certificate"></i> 최근예매내역
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
										<th>구분</th>
									</thead>
									<tbody>
										<tr>
											<td>2020.02.09</td>
											<td>A101</td>
											<td>겨울왕국: 겨울이야기</td>
											<td>2020.04.01</td>
											<td>1</td>
											<td>예매완료 / 환불 대기중/ 환불 완료</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="fa fa-* fa-certificate"></i> 나의 관심 공연
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
									<i class="fa fa-* fa-certificate"></i> 나의 관람 공연
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
												Y16393010</span>
												<span><a href="/Pages/Perf/Detail/Detail.aspx?idPerf=18681">
												<img class="firstBtn" src="http://tkfile.yes24.com/img/mypage/btn_minfor.gif"
													alt="공연정보"></a>
													<a href="/Perf/18681?idorder=16393010">
													<img src="http://tkfile.yes24.com/img/mypage/btn_after.gif"
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
		<jsp:include page="../common/footer.jsp"/>
</body>

</html>


