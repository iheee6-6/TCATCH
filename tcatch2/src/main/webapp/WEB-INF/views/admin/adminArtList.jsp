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
	width: 5%;
}

#id1 {
	width: 10%;
}

#id2 {
	width:20%;
}

#id3 {
	width: 20%;
	text-align: center;
}
#id4 {
	width: 10%;
	text-align: center;
}
#id5 {
	width: 10%;
	text-align: center;
}

.card-body {
	width: 100%;
}

/* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */ /* Stay in place */
            z-index: 1; /* Sit on top */
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
			background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888; /* Could be more or less, depending on screen size */  
            text-align:center;
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
			<form action="deleteArt.do" method="post">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">판매 관리</h6>
					</div>
					<div class="card-body">
					
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>번호</th>
										<th>카테고리</th>
										<th>공연명</th>
										<th>시작날짜</th>
										<th>종료날짜</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>번호</th>
										<th>카테고리</th>
										<th>공연명</th>
										<th>시작날짜</th>
										<th>종료날짜</th>
									</tr>
								</tfoot>
								<tbody>
								<c:forEach var="a" items="${ list }" varStatus="i">
									<!-- 상품 리스트 뽑아내기 -->
									<tr>
										<%-- <input type="hidden" id="tv" value="${t.tNo }"> --%>
										<td id="id0"><input type="checkbox" name="product_No"
											value="${a.artNo }"></td>
										<td id="id1"><c:if test="${a.artType == 0 }">전시</c:if>
										<c:if test="${a.artType == 1 }">콘서트</c:if>
										<c:if test="${a.artType == 2 }">뮤지컬</c:if>
										<c:if test="${a.artType == 3 }">연극</c:if></td>
										<td id="id2">${a.artTitle }</td>
										<td id="id3">${a.startDate }</td>
										<td id="id4">${a.endDate }</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<input class="btn btn-outline-secondary"
					style="font-size: 12px; height:40px;" type="submit" value="공연 삭제">
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