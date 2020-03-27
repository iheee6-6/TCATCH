<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="${ contextPath }/resources/admin/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
</head>
<style>

#wrapper {
	width: 80%;
	height:400px;
	margin: auto;
}
</style>

<body>
<jsp:include page="../common/menubar2.jsp" />
<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<script>
		$("#main").attr('class', 'nav-item');
		$("#user").attr('class', 'nav-item');
		$("#adpetSitterRequestList").attr('class', 'collapse-item');
		$("#adpetSitterList").attr('class', 'collapse-item');
		$("#marketad").attr('class', 'collapse-item active');
		$("#marketInsert").attr('class', 'collapse-item ');
		$("#marketBuy").attr('class', 'collapse-item');
		$("#marketCancel").attr('class', 'collapse-item');
		$("#freeBoard").attr('class', 'collapse-item ');
		$("#picBoard").attr('class', 'collapse-item ');
		$("#comment").attr('class', 'collapse-item ');
		$("#boardQnA").attr('class', 'collapse-item ');
	</script>
	<body id="page-top">

		
		<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="../admin/leftbar2.jsp" />
		<div class="container-fluid">
			<!-- Page Heading -->

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<form action="report.do" method="post">

					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">공연 데이터 관리</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<input type="button" onclick="location.href='admin5.do'" class="btn btn-outline-secondary"
					style="font-size: 12px; height:40px;" value="회사 등록">
						</div>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<input type="button" onclick="location.href='admin6.do'" class="btn btn-outline-secondary"
					style="font-size: 12px; height:40px;" value="공연 등록">
						</div>
					</div>
					<!-- 상품 상태 변경 : 가입 / 탈퇴 -->
					 
				</form>

			</div>
		</div>
	</div>
<%-- <jsp:include page="../common/footer.jsp"/> --%>

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