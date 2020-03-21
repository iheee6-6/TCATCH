<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.text.SimpleDateFormat "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://fonts.googleapis.com/css?family=Lobster&display=swap" rel="stylesheet">
<link href="resources/css/mypage/notice.css" rel="stylesheet" />
<style>
.wrapper {
	margin-top: 120px;
}

.ticketo .swiper-slide .ticket-txt:after {
	top: 30px;
}

.ticketo .swiper-slide .ticket-txt .ticket-tit {
	margin-top: 30px;
}

.ticketo .swiper-slide .ticket-txt .ticket-date {
	padding: 0px;
}

.noti-tbl td:nth-child(3){
    text-indent: 20px;
}
#title{
font-family: 'Lobster', cursive;
font-size:60px;
padding-top:30px;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar2.jsp" />
	<div class="wrapper">
		<!-- 콘텐츠 //-->
		<div class="content-min-wrap">
			<p class="big-title" id="title">Coming Soon</p>
			<c:if test="${ !empty noticeList }">
				<%--현재 날짜 --%>
				<jsp:useBean id="today" class="java.util.Date" />
				<fmt:parseNumber value="${today.time / (1000*60*60*24)}"
					integerOnly="true" var="now" />

				<div class="notice-slide">
					<div
						class="swiper-container ticketo swiper-container-initialized swiper-container-horizontal">
						<div class="swiper-wrapper"
							style="transform: translate3d(0px, 0px, 0px);">
							<c:if test="${empty noticeList}">
								<h2>현재 티켓팅예정인 공연이 없습니다.</h2>
							</c:if>
							<c:forEach var="notice" items="${ noticeList}" end='5'>
								<div class="swiper-slide swiper-slide-active"
									style="width: 222.2px; margin-right: 24px;">
									<c:forEach var="img" items="${imgList}">
										<c:if test="${img.artNo eq notice.artNo }">
											<c:set var="imgName" value="${img.changeName }"/>
										</c:if>
									</c:forEach>
									<a href="noticeDetailView.do?artNo=${notice.artNo }"> <img
										src="resources/images/art/${imgName }" />
										
										<div class="donut-area">
											<iframe class="chartjs-hidden-iframe" tabindex="-1"
												style="display: block; overflow: hidden; border: 0px; margin: 0px; top: 0px; left: 0px; bottom: 0px; right: 0px; height: 100%; width: 100%; position: absolute; pointer-events: none; z-index: -1;"></iframe>
											<canvas id="chart-area10141" class="donut"
												style="display: block; width: 220px; height: 220px;"
												width="220" height="220"></canvas>
										</div> <fmt:parseDate var="dateString" value="${notice.ticketingDate }" pattern="yyyy-MM-dd" /> 
											<fmt:formatDate var="tdate1" value="${dateString }" pattern="yyyy-MM-dd HH:mm:ss" />
											<fmt:parseNumber value="${dateString.time / (1000*60*60*24)}"
												integerOnly="true" var="tdate12" />
											
											<fmt:formatDate var="tdate2" value="${dateString }"
											pattern="yyyy.MM.dd(E) : aaa hh:mm" />
										<div class="donut-dday">
											<c:choose>
												<c:when test="${tdate12-now  >=1}">
													D-${tdate12-now}
												</c:when>
												<c:otherwise>
													Today
												</c:otherwise>
											</c:choose>
										</div>
										<div class="ticket-txt">

											<p class="ticket-date">${tdate2 }</p>
											<p class="ticket-tit">${notice.artTitle}</p>
										</div>
										<p class="ticket-tail">
											<span class="re">단독</span>
										</p></a>
								</div>
							</c:forEach>

						</div>
					</div>
				</div>
			</c:if>
			<%-- <div id="NoticeMainDisplay" style="display: block;">
				<!-- 공지사항 상단 배너 -->
				<div class="notice-slide">
					<div
						class="swiper-container ticketo swiper-container-initialized swiper-container-horizontal">
						<div class="swiper-wrapper"
							style="transform: translate3d(0px, 0px, 0px);">
							<div class="swiper-slide swiper-slide-active"
								style="width: 222.2px; margin-right: 24px;">
								<a
									href="/New/Notice/NoticeMain.aspx?#id=10141&amp;Gcode=009_208_001"><img
									src="http://tkfile.yes24.com/upload2/BoardNotice/202001/20200131/20200131-4561.jpg/dims/quality/70/"
									alt="" class="lazyload">
									<div class="donut-area">
										<iframe class="chartjs-hidden-iframe" tabindex="-1"
											style="display: block; overflow: hidden; border: 0px; margin: 0px; top: 0px; left: 0px; bottom: 0px; right: 0px; height: 100%; width: 100%; position: absolute; pointer-events: none; z-index: -1;"></iframe>
										<canvas id="chart-area10141" class="donut"
											style="display: block; width: 220px; height: 220px;"
											width="220" height="220"></canvas>
									</div>
									<div class="donut-dday">D-1</div>
									<div class="ticket-txt">
										<p class="ticket-date">2020.02.04(화) 18:00</p>
										<p class="ticket-tit">줄리안 라지 트리오(Julian Lage Trio) 내한공연</p>
									</div>
									<p class="ticket-tail">
										<span class="re">단독</span>
									</p></a>
							</div>
							<div class="swiper-slide swiper-slide-next"
								style="width: 222.2px; margin-right: 24px;">
								<a
									href="/New/Notice/NoticeMain.aspx?#id=10140&amp;Gcode=009_208_001"><img
									src="http://tkfile.yes24.com/upload2/BoardNotice/202001/20200131/20200131-20200131-o.jpg/dims/quality/70/"
									alt="" class="lazyload">
									<div class="donut-area">
										<iframe class="chartjs-hidden-iframe" tabindex="-1"
											style="display: block; overflow: hidden; border: 0px; margin: 0px; top: 0px; left: 0px; bottom: 0px; right: 0px; height: 100%; width: 100%; position: absolute; pointer-events: none; z-index: -1;"></iframe>
										<canvas id="chart-area10140" class="donut" width="220"
											height="220"
											style="display: block; width: 220px; height: 220px;"></canvas>
									</div>
									<div class="donut-dday">D-3</div>
									<div class="ticket-txt">
										<p class="ticket-date">2020.02.06(목) 14:00</p>
										<p class="ticket-tit">롯데콘서트홀 블로썸 유어 데이 2020</p>
									</div></a>
							</div>
							<div class="swiper-slide"
								style="width: 222.2px; margin-right: 24px;">
								<a
									href="/New/Notice/NoticeMain.aspx?#id=10136&amp;Gcode=009_208_001"><img
									src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200122/20200122-36049_1.jpg/dims/quality/70/"
									alt="" class="lazyload">
									<div class="donut-area">
										<iframe class="chartjs-hidden-iframe" tabindex="-1"
											style="display: block; overflow: hidden; border: 0px; margin: 0px; top: 0px; left: 0px; bottom: 0px; right: 0px; height: 100%; width: 100%; position: absolute; pointer-events: none; z-index: -1;"></iframe>
										<canvas id="chart-area10136" class="donut" width="220"
											height="220"
											style="display: block; width: 220px; height: 220px;"></canvas>
									</div>
									<div class="donut-dday">D-2</div>
									<div class="ticket-txt">
										<p class="ticket-date">2020.02.05(수) 14:00</p>
										<p class="ticket-tit">뮤지컬 [은밀하게 위대하게 -THE LAST] 2차</p>
									</div></a>
							</div>
							<div class="swiper-slide"
								style="width: 222.2px; margin-right: 24px;">
								<a
									href="/New/Notice/NoticeMain.aspx?#id=10132&amp;Gcode=009_208_001"><img
									src="http://tkfile.yes24.com/upload2/PerfBlog/202002/20200203/20200203-36299_1.jpg/dims/quality/70/"
									alt="" class="lazyload">
									<div class="donut-area">
										<iframe class="chartjs-hidden-iframe" tabindex="-1"
											style="display: block; overflow: hidden; border: 0px; margin: 0px; top: 0px; left: 0px; bottom: 0px; right: 0px; height: 100%; width: 100%; position: absolute; pointer-events: none; z-index: -1;"></iframe>
										<canvas id="chart-area10132" class="donut" width="220"
											height="220"
											style="display: block; width: 220px; height: 220px;"></canvas>
									</div>
									<div class="donut-dday">D-1</div>
									<div class="ticket-txt">
										<p class="ticket-date">2020.02.04(화) 10:00</p>
										<p class="ticket-tit">토리 켈리 첫 내한공연（Tori Kelly 1st Live in
											Seoul）티켓 오픈 안내</p>
									</div>
									<p class="ticket-tail">
										<span class="re">단독</span><span class="or">선예매</span>
									</p></a>
							</div>
							<div class="swiper-slide"
								style="width: 222.2px; margin-right: 24px;">
								<a
									href="/New/Notice/NoticeMain.aspx?#id=10130&amp;Gcode=009_208_001"><img
									src="http://tkfile.yes24.com/upload2/PerfBlog/202002/20200203/20200203-36335_01.jpg/dims/quality/70/"
									alt="" class="lazyload">
									<div class="donut-area">
										<iframe class="chartjs-hidden-iframe" tabindex="-1"
											style="display: block; overflow: hidden; border: 0px; margin: 0px; top: 0px; left: 0px; bottom: 0px; right: 0px; height: 100%; width: 100%; position: absolute; pointer-events: none; z-index: -1;"></iframe>
										<canvas id="chart-area10130" class="donut" width="220"
											height="220"
											style="display: block; width: 220px; height: 220px;"></canvas>
									</div>
									<div class="donut-dday">D-2</div>
									<div class="ticket-txt">
										<p class="ticket-date">2020.02.05(수) 14:00</p>
										<p class="ticket-tit">연극 [헤라,아프로디테, 아르테미스]</p>
									</div>
									<p class="ticket-tail">
										<span class="re">단독</span>
									</p></a>
							</div>
							<div class="swiper-slide"
								style="width: 222.2px; margin-right: 24px;">
								<a
									href="/New/Notice/NoticeMain.aspx?#id=10123&amp;Gcode=009_208_001"><img
									src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200123/20200123-36251_1.jpg/dims/quality/70/"
									alt="" class="lazyload">
									<div class="donut-area">
										<iframe class="chartjs-hidden-iframe" tabindex="-1"
											style="display: block; overflow: hidden; border: 0px; margin: 0px; top: 0px; left: 0px; bottom: 0px; right: 0px; height: 100%; width: 100%; position: absolute; pointer-events: none; z-index: -1;"></iframe>
										<canvas id="chart-area10123" class="donut" width="220"
											height="220"
											style="display: block; width: 220px; height: 220px;"></canvas>
									</div>
									<div class="donut-dday">D-4</div>
									<div class="ticket-txt">
										<p class="ticket-date">2020.02.07(금) 10:00</p>
										<p class="ticket-tit">〈신과 함께_저승편〉</p>
									</div></a>
							</div>
							<script>
								function displayDonut() {
									config.data.datasets[0].data = [
											12.5 * (8 - 1), 12.5 * 1 ];
									new Chart(
											document.getElementById(
													'chart-area10141')
													.getContext('2d'), config);
									config.data.datasets[0].data = [
											12.5 * (8 - 3), 12.5 * 3 ];
									new Chart(
											document.getElementById(
													'chart-area10140')
													.getContext('2d'), config);
									config.data.datasets[0].data = [
											12.5 * (8 - 2), 12.5 * 2 ];
									new Chart(
											document.getElementById(
													'chart-area10136')
													.getContext('2d'), config);
									config.data.datasets[0].data = [
											12.5 * (8 - 1), 12.5 * 1 ];
									new Chart(
											document.getElementById(
													'chart-area10132')
													.getContext('2d'), config);
									config.data.datasets[0].data = [
											12.5 * (8 - 2), 12.5 * 2 ];
									new Chart(
											document.getElementById(
													'chart-area10130')
													.getContext('2d'), config);
									config.data.datasets[0].data = [
											12.5 * (8 - 4), 12.5 * 4 ];
									new Chart(
											document.getElementById(
													'chart-area10123')
													.getContext('2d'), config);
								}
							</script>
						</div>
						<span class="swiper-notification" aria-live="assertive"
							aria-atomic="true"></span>
					</div>
					<!-- Add Arrows -->
					<div class="swiper-button-next" tabindex="0" role="button"
						aria-label="Next slide" aria-disabled="false"></div>
					<div class="swiper-button-prev swiper-button-disabled" tabindex="0"
						role="button" aria-label="Previous slide" aria-disabled="true"></div>
				</div>




				<script type="text/javascript">
					var config = {
						type : 'doughnut',
						data : {
							datasets : [ {
								data : [ 50, 50 ], //주황색,흰색
								backgroundColor : [ '#ed8844', '#ebebeb' ],
								borderWidth : [ 0, 0 ]
							} ]
						},
						options : {
							animation : {
								animateRotate : true,
								duration : 2000
							},
							cutoutPercentage : [ 90 ],
							tooltips : {
								enabled : false
							}
						}
					};

					//    var num = 0;
					//    $(window).on('scroll', function () {
					//        var stop = $(this).scrollTop();
					//        if (stop > 0) {
					//            if (num == 0) {
					//                num = 1;

					//            }
					//        } else {
					//            num = 0;
					//        }
					//    });
				</script>
				<!-- 공지사항 상단 배너 --> --%>



				<!-- 공지사항 필터,검색 -->
				<!-- <div class="category" id="SelectOrder">
					<a href="javascript:;" categoryid="1" class="on">등록순</a> <a
						href="javascript:;" categoryid="2">오픈일순</a> <a href="javascript:;"
						categoryid="3">조회순</a>
					<div class="notice-srch">
						<input type="text" id="SearchTextbox"
							placeholder="궁금하신 내용을 입력해주세요" autocomplete="off"><a
							onclick="jsf_notice_Search();" style="cursor: pointer"></a>
					</div>
				</div> -->


				<!-- 공지사항 리스트 -->
				<div id="BoardList">
					<div class="noti-tbl">
						<table>
							<colgroup>
								<col width="13%">
								<col width="57%">
								<col width="18%">
								<col width="12%">
							</colgroup>
							<tbody>
								<tr>
									<th scope="col">구분</th>
									<th scope="col">제목</th>
									<th scope="col">티켓오픈 일시  </th>
									<th scope="col">조회수</th>
								</tr>

								<c:choose>
									<c:when test="${empty noticeList }">
										<tr>
											<td colspan="4" style="text-align: center">현재 오픈 예정인 티켓이
												없습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="n" items="${noticeList }">
											<tr>
												<td>티켓오픈</td>
												<c:url var="ndetail" value="noticeDetailView.do">
													<c:param name="artNo" value="${ n.artNo }" />
													<%-- <c:param name="page" value="${ pi.currentPage }" /> --%>
												</c:url>
												<td><a href="${ ndetail}"><em>${n.artTitle}</em></a></td>
												<td><fmt:parseDate var="dateString"
														value="${n.ticketingDate }" pattern="yyyy-MM-dd" /> <fmt:formatDate
														var="tdate" value="${dateString }"
														pattern="yyyy.MM.dd(E) : aaa hh:mm" /> ${tdate }</td>
												
												<td>조회수</td>
											</tr>

										</c:forEach>
									</c:otherwise>
								</c:choose>

							</tbody>
						</table>
						<input name="ListTotalCnt" type="hidden" id="ListTotalCnt"
							value="9424">

					</div>
				</div>

				<!-- 검색 후 back버튼 -->
				<!-- <div class="noti-back" id="divListbtn" style="display: none;">
					<a style="cursor: pointer" onclick="jsf_notice_home();"
						class="btn-msback"><span>돌아가기</span></a>
				</div> -->
				<!-- paging -->
				<div class="paging" style="display: block;">
					<div class="list-pagenation">
						<c:if test="${pi.currentPage<=1 }">
						[이전] &nbsp;
					</c:if>
						<c:if test="${pi.currentPage>1 }">
							<c:url var="before" value="noticeView.do">
								<c:param name="page" value="${pi.currentPage-1 }" />
							</c:url>
						</c:if>

						<c:forEach var="p" begin="${pi.startPage }" end="${pi.maxPage }">
							<c:if test="${p eq pi.currentPage }">
								<font color="red" size="4"><b>[${ p }]</b></font>
							</c:if>
							<c:if test="${p ne pi.currentPage }">
								<c:url var="pagination" value="noticeView.do">
									<c:param name="page" value="${ p }" />
								</c:url>
								<a href="${pagination }">${ p }</a> &nbsp;
							</c:if>
						</c:forEach>

						<c:if test="${pi.currentPage>=pi.maxPage }">
							[다음]
						</c:if>
						<c:if test="${pi.currentPage < pi.maxPage }">
							<c:url var="after" value="checknCancel.do">
								<c:param name="page" value="${pi.currentPage+1 }" />
							</c:url>
							<a href="${ after }">[다음]</a>
						</c:if>

					</div>
				</div>

			</div>


		</div>


		<!--공지사항 하단 공통 영역-->
		<div class="bnr-bottom-wrap">
			<div class="bnr-bottom">
				<div class="bnr-bottom-01">
					<p>예매/취소 FAQ</p>
					<span>궁금한 사항은 FAQ 를 이용해주세요. <a
						href="http://ticket.yes24.com/UserGuide/FAQ" target="_blank">바로가기&gt;</a></span>
				</div>
				<div class="bnr-bottom-02">
					<p>고객센터 이용 안내</p>
					<span>전화(1544-6399) 또는 <a
						href="http://www.yes24.com/Mall/Help/CS/Apply" target="_blank">일대일문의</a>를
						이용해주세요.
					</span>
				</div>
			</div>
		</div>


	</div>
	<jsp:include page="../common/footer.jsp" />

	<script type='text/javascript'
		src='http://tkfile.yes24.com/New/Js/Main.js?v=158'></script>

	<link rel='stylesheet' type='text/css'
		href='resources/css/mypage/swiper_min.css' />
		
	<script>
	$(function(){
		$(".ticketo .swiper-wrapper").css({"display":"block","text-align":"center","font-size":"0"});
		$(".ticketo .swiper-slide").css({"margin-left":"12px","margin-right":"12px","display":"inline-block"});
		$(".ticketo .swiper-slide:first").css("margin-left","0");
		$(".ticketo .swiper-slide:last").css("margin-right","0");
	});
	</script>
</body>
</html>