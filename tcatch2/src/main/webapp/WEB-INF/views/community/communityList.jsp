<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.wrap {
	width: 100%;
	margin: auto;
}

#boardTable {
	width: 80%;
	margin-left:auto;
	margin-right:auto;
	border: solid 1px white;
	text-align:center;
}

#boardTable th td{
	border: solid 1px white;
	font-size: 17px;
}

#h1 {
	font-size: 40px;
	font-weight: 900;
}

#h2 {
	font-size: 20px;
}

table th {
	font-size: 20px;
	font-family: 'Do Hyeon', sans-serif;
}

.btn {
	float: right;
}
#t1{
width:50px;}
#t2{
width:320px;
}
#t3{width:120px;}
#t4{
width:130px;
}
#t5{width:80px;}
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
	<h2 align="center" id="h1" style="">Community</h2>
	<div class="wrap">
		<h2 align="left" id="h2" style="font-family: 'Do Hyeon', sans-serif;">
			
		</h2>
		
		<table id="boardTable" class="table">
			<thead>
			<tr>
				<th id="t1">번호</th>
				<th id="t2" width="300">제목</th>
				<th id="t3">작성자</th>
				<th id="t4">작성일</th>
				<th id="t5">조회수</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="b" items="${ list }">
				<c:if test="${ !empty loginUser }">
					<c:url var="cdetail" value="cdetail.do">
						<c:param name="cNo" value="${ b.cNo }" />
						<c:param name="page" value="${ pi.currentPage }" />
					</c:url>
				</c:if>
				<tr id="tr1" onclick="location.href='${ cdetail }'">
					<td>${ b.cNo }</td>
					<td>${ b.cTitle }</td>
					<td>${ b.cWriter }</td>
					<td>${ b.writeDate }</td>
					<td>${ b.count }</td>
				</tr>
			
			</c:forEach>
			<c:if test="${!empty loginUser }">
			<tr>
				<td colspan="4"></td>
				<td><button class="btn btn-outline-secondary"
					style="font-size: 12px; height:40px;"
					onclick="location.href='cinsertView.do'">글쓰기</button></td>
			</tr>
			</c:if>
			</tbody>
			<!-- 페이징 처리 -->
			
			
			<tfoot>
			<tr align="center" height="20">
				<td colspan="6">
					<!-- [이전] --> <c:if test="${ pi.currentPage <= 1 }">
						[이전] &nbsp;
					</c:if> <c:if test="${ pi.currentPage > 1 }">
						<c:url var="before" value="clist.do">
							<c:param name="page" value="${ pi.currentPage - 1 }" />
						</c:url>
						<a href="${ before }">[이전]</a> &nbsp;
					</c:if> <!-- 페이지 --> <c:forEach var="p" begin="${ pi.startPage }"
						end="${ pi.endPage }">
						<c:if test="${ p eq pi.currentPage }">
							<font color="red" size="4"><b>[${ p }]</b></font>
						</c:if>

						<c:if test="${ p ne pi.currentPage }">
							<c:url var="pagination" value="clist.do">
								<c:param name="page" value="${ p }" />
							</c:url>
							<a href="${ pagination }">${ p }</a> &nbsp;
						</c:if>
					</c:forEach> <!-- [다음] --> <c:if test="${ pi.currentPage >= pi.maxPage }">
						[다음]
					</c:if> <c:if test="${ pi.currentPage < pi.maxPage }">
						<c:url var="after" value="clist.do">
							<c:param name="page" value="${ pi.currentPage + 1 }" />
						</c:url>
						<a href="${ after }">[다음]</a>
					</c:if>
				</td>
			</tr>
			</tfoot>
		</table>
	</div>
	<script>
		$(function(){
			 $("#boardTable #tr1").hover(function(){
				$(this).css({"background":"#CBC4C4", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).css({"background":"white"});
			}); 
			
			<c:if test="${ empty loginUser}">
			$("#boardTable #tr1").click(function(){
				alert("로그인 후 상세보기가 가능합니다.");
			});
			</c:if>
		});
		
	</script>

	<jsp:include page="../common/footer.jsp" />
	<link
		href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
		rel="stylesheet">

	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">
</body>
</html>