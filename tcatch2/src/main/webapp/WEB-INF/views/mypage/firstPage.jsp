<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCATCH</title>
<style>
li a {
	font-size: 13px;
}

.firstBtn {
	margin-right: 10px;
}
</style>
</head>
<body class="">
	<jsp:include page="../common/menubar.jsp" />

	<div class="wrapper">
		<jsp:include page="leftMenu.jsp" />

		<div class="main-panel">
			<div class="content" style="margin-top: 20px;">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="fa fa-* fa-certificate"></i> 최근예매내역
								</h4>
								<button class="btn btn-sm" style="float: right;"
									onclick="location.href='checknCancel.do'">더보기</button>
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
									<c:choose>
										<c:when test="${empty recentHistoryList }">
											<tr>
												<td colspan="6" style="text-align:center"> 예매내역이 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
										<c:forEach var="b" items="${ recentHistoryList }">
											<tr>
												<td>${b.tDate }</td>

												<td><c:url var="tDetail" value="tDetail.do">
														<c:param name="tNo" value="${b.tNo }" />
													</c:url> <a href="${tDetail}">${b.tNo}</a></td>
												<td>${b.artTitle }</td>
												<td>${b.viewDate }</td>
												<td>${b.ticketCount}</td>
												<td>${b.status }</td>
											</tr>
										</c:forEach>
										</c:otherwise>
									</c:choose>
									</tbody>
								</table>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="fa fa-* fa-certificate"></i> 나의 관심 공연
								</h4>
								<button class="btn btn-sm" style="float: right;"
									onclick="location.href='interestPerformance.do'">더보기</button>
								<%-- &nbsp;
								<p class="card-category" style="margin-left: 200px;">
									'나의 관심공연'이 <em>${fn:length(recentInterestList)}</em>개 있습니다.
								</p> --%>
							</div>
							<div class="card-body">
								<ul id="ulInteresetPerfList" class="my_list01">
									<c:choose>
										<c:when test="${empty recentInterestList }">
											<li>
												<div class="end" style="width:900px">관심공연이 없습니다.</div>
											</li>
										</c:when>
										<c:otherwise>
										<c:forEach var="I" items="recentInterestList">
											<li>
												<div>
													<c:url var="pDetail" value="musicalDetail.do">
														<c:param name="artNo" value="${I.artNo }" />
													</c:url>
													<a href="${pDetail }"><img
														src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200106/20200106-35104_1.jpg"
														class="poster_line" width="53" height="65"
														alt="뮤지컬 [쓰릴 미]"></a><a href="${pDetail }"><strong>${I.artTitle }</strong></a>
													<span>${I.startDate }~${I.endDate }</span> <span>${I.address }</span>
													<!-- 2020.03.04 -->
												</div>
											</li>
										</c:forEach>
										<c:if test="${fn:length(recentInterestList) <3} ">
											<li>
												<div class="end"></div>
											</li>
										</c:if>
										</c:otherwise>
									</c:choose>
								</ul>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="fa fa-* fa-certificate"></i> 나의 관람 공연
								</h4>
								<button class="btn btn-sm" style="float: right;"
									onclick="location.href='viewPerformance.do'">더보기</button>
							</div>

							<div class="card-body">
								<ul class="my_list01 rv_bor">
									<c:choose>
										<c:when test="${empty recentViewList}">
											<li>
												<div class="end" style="width:900px">관람내역이 없습니다.</div>
											</li>
										</c:when>
										<c:otherwise>
											<c:forEach var="v" items="recentViewList">
												<li><c:url var="vpDetail" value="musicalDetail.do">
														<c:param name="artNo" value="${v.artNo }" />
													</c:url>
													<div>
														<a href="${vpDetail }"><img
															src="http://tkfile.yes24.com/upload2/PerfBlog/201408/20140807/20140807-18681_1.jpg"
															class="poster_line" width="53" height="65"
															alt="Ripple Effect the Concert"></a><a
															href="${vpDetail }"><strong>${v.artTitle }</strong></a><span
															class="red"></span> <span>예매번호: ${v.tNo }</span> <span><a
															href="${vpDetail }"> <img class="firstBtn"
																src="http://tkfile.yes24.com/img/mypage/btn_minfor.gif"
																alt="공연정보"></a> <a href="${vpDetail }"> <img
																src="http://tkfile.yes24.com/img/mypage/btn_after.gif"
																alt="관람후기 작성"></a></span>
													</div></li>
											</c:forEach>



											<c:if test="${fn:length(recentViewList) <3}  ">
												<li>
													<div class="end"></div>
												</li>
											</c:if>
										</c:otherwise>
									</c:choose>

								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>

</html>


