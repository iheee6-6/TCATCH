<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCATCH</title>
<style>
td a {
	font-size: 14px;
	color: blue;
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
									<i class="fa fa-* fa-bookmark"></i> &nbsp;예매확인/취소
								</h4>
								&nbsp;
								<p class="card-category" style="margin-left: 200px;">예매번호를
									클릭하시면 '예매 상세내역 확인' 및 '예매취소'가 가능합니다.</p>
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
											<c:when test="${empty ticketList }">
												<tr>
													<td colspan="6" style="text-align:center">예매내역이 없습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
											<c:forEach var="b" items="${ ticketList }">
												<tr>
												<fmt:formatDate var="tdateString" value="${b.tDate}" pattern="yyyy-MM-dd" />
												<fmt:formatDate var="vdateString" value="${b.viewDate}" pattern="yyyy-MM-dd" />
												
													<td>${tdateString}</td>

													<td><c:url var="tDetail" value="tDetail.do">
															<c:param name="tNo" value="${b.tNo}" />
														</c:url> <a href="${tDetail}">${b.tNo}</a></td>
													<td>${b.artTitle}</td>
													<td>${vdateString}</td>
													<td>${b.ticketCount}</td>
													<td>${b.status }</td>
												</tr>
											</c:forEach>
											</c:otherwise>
										</c:choose>
										
										<!-- 페이징 -->
										<tr align="center" height="20">
											<td colspan="20">
												<c:if test="${pi.currentPage<=1 }">
													[이전] &nbsp;
												</c:if>
												<c:if test="${pi.currentPage>1 }">
													<c:url var="before" value="checknCancel.do">
														<c:param name="page" value="${ pi.currentPage3 -1 }"/>
													</c:url>
													<a href="${before }">[이전]</a> &nbsp;
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
														<c:param name="page" value="${pi.currentPage+1 }"/>
													</c:url>
													<a href="${ after }">[다음]</a>
												</c:if>
											</td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<script>
		$(function() {
			$("#cnc").addClass("active");
		});
	</script>
	 <jsp:include page="../common/footer.jsp" /> 
</body>

</html>