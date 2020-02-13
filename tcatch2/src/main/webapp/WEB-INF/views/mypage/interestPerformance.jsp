<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCATCH</title>

</head>
<body class="">
	<jsp:include page="../common/menubar.jsp" />

	<div class="wrapper">
		<jsp:include page="leftMenu.jsp" />
		<div class="main-panel">
			<div class="content" style="margin-top: 20px;">
				<div class="row">
					<div class="col-md-9">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="fa fa-* fa-bookmark"></i> &nbsp;나의 관심 공연
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
		<jsp:include page="../common/footer.jsp"/>
</body>

</html>