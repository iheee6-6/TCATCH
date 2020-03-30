<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TACTCH</title>
<link
	href="${ contextPath }/resources/admin/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<!-- Bootstrap core CSS -->

<style>
#wrapper {
	width: 80%;
	height: 400px;
	margin: auto;
}

.table-reponsive {
	width: 500px;
	height: 300px;
	margin: auto;
}

.tt {
	width: 100%;
	border: 1px solid #ced4da
}
</style>
</head>

<body id="page-top">
	<jsp:include page="../common/menubar2.jsp" />
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div id="wrapper">
		<jsp:include page="../admin/leftbar2.jsp" />
		<div class="container-fluid">
			<!-- Page Heading -->

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<form action="insertTime.do" method="post"
					enctype="multipart/form-data">

					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">공연 데이터 관리</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<input type="button" onclick="location.href='admin5.do'"
								class="btn btn-outline-secondary"
								style="font-size: 12px; height: 40px;" value="회사 등록"> <input
								type="button" onclick="location.href='admin6.do'"
								class="btn btn-outline-secondary"
								style="font-size: 12px; height: 40px;" value="공연 등록">
						</div>
					</div>

					<div class="card-body">
						<div class="table-reponsive">
							<div class="tableArea">
								<table>
									<tr>
										<td colspan="3"><h5>
												<strong>시간표</strong>
											</h5></td>
									</tr>
									<tr>
										<td colspan="3"><hr></td>
									</tr>
									<tr>
										<td><label>회차</label><input type="number" size="10"
											name="dateCount" min="0" class="tt"></td>
										<td></td>
										<td>날짜<br> <input type="datetime-local" id="tt"
											clase="tt"> <input type="hidden" id="dateTime"
											name="Time" value=""></td>

										<script>
											$("#tt").change(function() {
												var dd = $("#tt").val();
												console.log(dd);
												$("#dateTime").val(dd);
											});
										</script>
									</tr>
									<tr>
										<td colspan="3"><label>출연진</label><input type="text"
											size="58" name="actor" min="0" class="tt"></td>
									</tr>
									<tr>
										<td colspan="3"><hr></td>
									</tr>
								</table>

								<div align="center">
									<button type="submit" value="등록하기">등록하기</button>
									<button type="button"
										onclick="location.href='exhibitionSeat.do'">전시 등록</button>
								</div>

								<script>
									$(document).on('click', '#add', add);

									function add(e) {
										$("#wrap")
												.append(
														"<tr>"
																+ '<td><label>회차</label><input type="number" size="10" name="dateCount" min="0" class="tt"></td>'
																+ '<td></td>'
																+ '<td>날짜<br><input type="datetime-local" name="Time" ></td>'
																+ '</tr><tr>'
																+ '<td colspan="3"><label>출연진</label><input type="text" size="58" name="actor" min="0" class="tt"></td></tr>'
																+ '</tr>'
																+ "<tr><td colspan='3'><hr></td></tr>");
									}
								</script>
								<br>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script
		src="${ contextPath }/resources/admin/vendor/jquery/jquery.min.js"></script>
	<script
		src="${ contextPath }/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${ contextPath }/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="${ contextPath }/resources/admin/js/sb-admin-2.min.js"></script>
	<script
		src="${ contextPath }/resources/admin/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${ contextPath }/resources/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script
		src="${ contextPath }/resources/admin/js/demo/datatables-demo.js"></script>


</body>

</html>