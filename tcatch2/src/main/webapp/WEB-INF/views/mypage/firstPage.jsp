<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	<jsp:include page="../common/menubar2.jsp" />

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
								<p class="card-category" style="margin-left: 190px;">최근 3개의
									예매 내역입니다.</p>
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
													<td colspan="6" style="text-align: center">예매내역이 없습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach var="b" items="${ recentHistoryList }">
												<c:url var="tDetail" value="tDetail.do">
													<c:param name="tNo" value="${b.tNo }" />
												</c:url>
													<tr>
														<fmt:formatDate value="${b.tDate}" var="tdate"
															pattern="yyyy-MM-dd" />

														<td>${tdate }</td>
														
														<td><a href="${tDetail}"
															style="font-size: 14px; color: black;">${b.tNo}</a></td>
														<td>${b.artTitle }</td>
														<fmt:formatDate value="${b.viewDate}" var="vdate"
															pattern="yyyy-MM-dd" />

														<td>${vdate }</td>
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

							</div>
							<div class="card-body">
								<ul id="ulInteresetPerfList" class="my_list01"
									style="list-style-type: none; padding-left: 0px;">
									<c:choose>
										<c:when test="${empty recentInterestList }">
											<li>
												<div class="end" style="width: 900px">관심공연이 없습니다.</div>
											</li>
										</c:when>
										<c:otherwise>
											<c:forEach var="I" items="${recentInterestList}">
												<li class="rI">
													<div style="width:300px;">
														<c:url var="pDetail" value="musicalDetail.do">
															<c:param name="artNo" value="${I.artNo }" />
														</c:url>
														<c:forEach var="img" items="${imgList}">
															<c:if test="${img.artNo eq I.artNo }">
																<a href="${pDetail}"> <img
																	src="resources/images/art/${img.changeName }"
																	class="poster_line" width="53" height="65"></a>
																</a>
															</c:if>
														</c:forEach>

														<a href="${pDetail }"><strong>${I.artTitle }</strong></a>

														<span>${I.startDate}~${I.endDate}</span> <span>${I.address }</span>
														<!-- 2020.03.04 -->
													</div>
												</li>
											</c:forEach>

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
								<ul class="my_list01 rv_bor"
									style="list-style-type: none; padding-left: 0px;">
									<c:choose>
										<c:when test="${empty recentViewList}">
											<li>
												<div class="end" style="width: 900px">관람내역이 없습니다.</div>
											</li>
										</c:when>
										<c:otherwise>
											<c:forEach var="v" items="${recentViewList}">
												<li class="rV">
													<div>
														<c:url var="vpDetail" value="musicalDetail.do">
															<c:param name="artNo" value="${v.artNo }" />
														</c:url>

														<c:forEach var="img" items="${imgList}">
															<c:if test="${img.artNo eq v.artNo }">
																<a href="${vpDetail }"> <img
																	src="resources/images/art/${img.changeName }"
																	class="poster_line" width="53" height="65"></a>
															</c:if>
														</c:forEach>
														<a href="${vpDetail }"><strong>${v.artTitle }</strong></a>
														<span class="red"></span> <span>예매번호: ${v.tNo }</span> <span
															style="margin-top: 10px;"> <c:if
																test="${empty v.review_no }">
																<a href="${vpDetail }"> <img class="firstBtn"
																	src="resources/images/mypage/btn_minfor.gif" alt="공연정보"></a>
																<a href="${vpDetail }"> <img
																	src="resources/images/mypage/btn_after.gif"
																	alt="관람후기 작성"></a>
															</c:if> <c:if test="${!empty v.review_no }">
																<a href="${vpDetail }"> <img
																	style="margin-left: 100px" class="firstBtn"
																	src="resources/images/mypage/btn_minfor.gif" alt="공연정보">
																</a>
															</c:if></span>
													</div>
												</li>
											</c:forEach>


											
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
	<script>
		$(function() {
			$(".rV div").last().attr("class", "end").css("width", "300px");
			$(".rI div").last().attr("class", "end").css("width", "300px");
		});
	</script>
	<jsp:include page="../common/footer.jsp" />
</body>

</html>


