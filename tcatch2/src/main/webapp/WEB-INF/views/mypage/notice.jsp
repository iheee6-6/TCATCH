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

				<!-- 공지사항 리스트 -->
				<div id="BoardList">
					<div class="noti-tbl">
						<table style="text-align:center;">
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
												<td><a href="${ ndetail}">${n.artTitle}</a></td>
												<td><fmt:parseDate var="dateString"
														value="${n.ticketingDate }" pattern="yyyy-MM-dd" /> <fmt:formatDate
														var="tdate" value="${dateString }"
														pattern="yyyy.MM.dd(E) : aaa hh:mm" /> ${tdate }</td>
												
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