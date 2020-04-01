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

<form action="billInsert.do" method="post" onsubmit="return check();">
<input type="hidden" value="" id="tNo" name="tNo">
<div id="myModal" class="modal">
      <!-- Modal content -->
      
      <div class="modal-content" style="width:30%;">
      			<h2>운송장번호 입력하기</h2>
				
                <input type="text" id="wayBill" name="wayBill" placeholder="운송장번호">
                <br>
               
                <div style="display:inline-block; float:center;">
                <button class="btn btn-outline-secondary"
					style="font-size: 12px; width:49%; height:40px; float:left;" type="submit">입력</button>
            	<button class="btn btn-outline-secondary"
					style="font-size: 12px; width:49%; height:40px; float:left;" type="button" onClick="close_pop();">닫기</button>
            	</div>
      </div>
 
    </div>
    <script>
    	function check(){
    		if($("#wayBill").val() == 0){
    			alert("운송장번호를 입력해주세요");
    			return false;
    		}
    		return true;
    	}
    
    </script>
    </form>
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
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">판매 관리</h6>
					</div>
					<div class="card-body">
					
						<div class="table-responsive">
						<select>
						<option>---</option>
						<option value="0">전시</option>
						<option value="1">콘서트</option>
						<option value="2">뮤지컬</option>
						<option value="3">연극</option>
						</select>
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>번호</th>
										<th>카테고리</th>
										<th>공연명</th>
										<th>주소</th>
										<th>구매자</th>
										<th style="width: 15%;">수령방법</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>번호</th>
										<th>카테고리</th>
										<th>공연명</th>
										<th>주소</th>
										<th>구매자</th>
										<th>수령방법</th>
									</tr>
								</tfoot>
								<tbody>
								<c:forEach var="t" items="${ ticketList }" varStatus="i">
									<!-- 상품 리스트 뽑아내기 -->
									<tr>
										<%-- <input type="hidden" id="tv" value="${t.tNo }"> --%>
										<td id="id0"><input type="checkbox" name="product_No"
											value="${t.tNo }"></td>
										<td id="id1"><c:if test="${t.artType == 0 }">전시</c:if>
										<c:if test="${t.artType == 1 }">콘서트</c:if>
										<c:if test="${t.artType == 2 }">뮤지컬</c:if>
										<c:if test="${t.artType == 3 }">연극</c:if></td>
										<td id="id2">${t.artTitle }</td>
										<td id="id3">${t.userAddress }</td>
										<td id="id4">${t.userName }</td>
										<td id="id5">
										<c:if test="${t.receiveMethod == 0 && t.wayBill eq null}">
										<button class="btn btn-outline-secondary" type="button" style="font-size: 12px; width:80px; height:50px; float:center;" id="mm${i.index }">운송장입력</button>
										</c:if>
										<c:if test="${t.receiveMethod == 1 }">현장발매</c:if>
										<c:if test="${t.receiveMethod == 0 && t.wayBill ne null }">${ t.wayBill }</c:if></td>
									</tr>
									
									<script type="text/javascript">
	        						$("#mm"+${i.index}).on("click",function(){
	                				$('#myModal').show();
	                				var row = $(this).parent().parent();
	                				var tNo = row.children().children().val();
	                				console.log(tNo);
	                				$("#tNo").val(tNo);
	        					});
	        					//팝업 Close 기능
	        					function close_pop(flag) {
	           						$('#myModal').hide();
	        					}
      							</script>
								
								</c:forEach>
								
									
								</tbody>
							</table>
						</div>
					</div>

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