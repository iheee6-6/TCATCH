<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	margin: auto;
}

#content-wrapper, .container-fluid.card shadow mb-4, .card-header py-3 {
	width: 100%;
}

#inner {
	margin-top: 2%;
	width: 100%;
}

#id0 {
	width: 5%;
}

#id1 {
	width: 10%;
}

#id2 {
	width: 10%;
}

#id3 {
	width: 8%;
	text-align: center;
}
.card-body{
	width:100%;
	
}
</style>
</head>
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
				<form
					action="<%=request.getContextPath()%>/ProductAdminStatusServlet"
					method="post">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">판매 관리</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th></th>
										<th>상품번호</th>
										<th>카테고리</th>
										<th>상품명</th>
										<th>가격</th>
										<th style="width:15%;">상태</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th></th>
										<th>상품번호</th>
										<th>카테고리</th>
										<th>상품명</th>
										<th>가격</th>
										<th>상태</th>
									</tr>
								</tfoot>
								<tbody>
									<!-- 상품 리스트 뽑아내기 -->
									<tr>
										<td id="id0"><input type="checkbox" name="product_No"
											value=""></td>
										<td id="id1"></td>
										<td id="id2"></td>
										<td></td>
										<td id="id3">원</td>
										<td>판매중 품절</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 상품 상태 변경 : 판매중 / 품절 -->
					<label>상태 변경 : </label> <select name="status">
						<option value="Y">판매중</option>
						<option value="N">품절</option>
						<option selected>---</option>
					</select> <input type="submit" value="변경">
				</form>

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