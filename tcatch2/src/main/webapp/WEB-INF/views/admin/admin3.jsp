<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

#content-wrapper, .container-fluid.card shadow mb-4, .card-header py-3 {
	width: 100%;
}

#inner {
	margin-top: 2%;
	width: 100%;
}

#id0 {
	width: 7%;
}

#id1 {
	width: 10%;
}

#id2 {
	width: 10%;
}

#id3 {
	width: 15%;
}
#id4{
	width:43%;
}
#id5{
	width:15%;
}


.card-body {
	width: 100%;
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
						<h6 class="m-0 font-weight-bold text-primary">신고 내역 관리</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th></th>
										<th>신고번호</th>
										<th>글 번호</th>
										<th>신고타입</th>
										<th>신고내용</th>
										<th style="width: 15%;">신고자</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th></th>
										<th>신고번호</th>
										<th>글 번호</th>
										<th>신고타입</th>
										<th>신고내용</th>
										<th>신고자</th>
									</tr>
								</tfoot>
								<tbody>
								<c:forEach var="d" items="${list }">
									<!-- 상품 리스트 뽑아내기 -->
									<tr>
										<td id="id0"><input type="checkbox" name="product_No"
											value="${ d.reCno }"></td>
										<td id="id1">${ d.dNo }<input type="hidden" name="dNo" value="${d.dNo }"></td>
										<td id="id2">${ d.reCno }</td>
										<td id="id3">${d.dType }</td>
										<td id="id4">${d.dContent }</td>
										<td id="id5">${d.dWriter }</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 상품 상태 변경 : 가입 / 탈퇴 -->
					 <input type="submit" class="btn btn-outline-secondary"
					style="font-size: 12px; height:40px;" value="신고 글 삭제">
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