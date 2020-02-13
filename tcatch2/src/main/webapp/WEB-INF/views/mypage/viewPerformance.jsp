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
									<i class="fa fa-* fa-bookmark"></i> &nbsp; 나의 관람 공연
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
		<jsp:include page="../common/footer.jsp"/>
</body>

</html>