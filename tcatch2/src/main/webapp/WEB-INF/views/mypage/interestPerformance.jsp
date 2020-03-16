<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCATCH</title>
<style>
.pImage {
	float: left;
	margin-right: 3px;
}

p span {
	margin-left: 10px;
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
									<i class="fa fa-* fa-bookmark"></i> &nbsp;나의 관심 공연
								</h4>
							</div>
							<form action="deleteInterest.do" method="post" id="checkForm">
								<div class="card-body">
									<table class="table">
										<thead class=" text-primary">
											<th>등록일</th>
											<th>공연명</th>
											<th>상세정보</th>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${empty interestList }">
													<tr>
														<td colspan="3" style="text-align:center">관심공연이 없습니다.</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="I" items="${ interestList}">
														<tr>
															<td><input class="interestP" name="interestP"
																type="checkbox" value="${I.artNo }"> &nbsp; 2019.02.12</td>
															<td>
																<p class="list">
																<p class="pImage">
																	<img
																		src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200106/20200106-35104_1.jpg"
																		width="72" height="89" alt="뮤지컬 [쓰릴 미]">
																</p>
																<p class="pIntro">
																	<strong>${I.artTitle }</strong> <br> <span>${I.startDate }~${I.endDate }</span>
																	<br> <span>${ I.address}</span>
																</p>
															</td>
															<td><c:url var="pDetail" value="musicalDetail.do">
																	<c:param name="artNo" value="${I.artNo }" />
																</c:url>
																<button class="btn" onclick="location.href='${pDetail}'">예매하기</button></td>

														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>

										</tbody>
									</table>

								</div>
								<%-- <c:if test="${!empty interestList }"> --%>
								<div>
									<div style="float: right; margin-right: 50px;">
										<button type="button" class="btn btn-sm" id="allCheck">전체
											선택</button>
										<%-- <c:url var="deleteP" value="deleteP.do">
										<c:param name="art_no" value="<%=arr %>"/>
									</c:url> --%>
										<button type="button" class="btn btn-sm" id="deleteP">선택 삭제</button>
									</div>
								</div>
								<%-- </c:if> --%>
							</form>
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

		$("#allCheck").click(function() {
			if ($(this).text() == "전체 선택") {
				$('.interestP').prop('checked', true);
				$(this).text("전체 해제");
			} else {
				$('.interestP').prop('checked', false);
				$(this).text("전체 선택");
			}

		});

		$("#deleteP").click(function() {
			if($(".interestP:checked").val()){
				if (confirm("정말 삭제하시겠습니까?")) {
					$("#checkForm").submit();
				}
			
			}

		});
	</script>
	<jsp:include page="../common/footer.jsp" />
</body>

</html>