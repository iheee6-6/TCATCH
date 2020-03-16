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
	width: 50%;
	margin: auto;
}

#boardTable {
	width: 100%;
	border: solid 1px white;
}

#boardTable th, #boardTable td {
	border: solid 1px white;
	text-align: center;
	font-family: 'Do Hyeon', sans-serif;
	font-size:20px;
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

</style>

</head>
<body>
	<jsp:include page="../common/menubar2.jsp" />

	<br><br><br><br><br><br>
	<h2 align="center" id="h1"
			style="">Community</h2>
	<div class="wrap">
		<h2 align="left" id="h2" style="font-family: 'Do Hyeon', sans-serif;">
			총 게시글 개수 : ${ pi.listCount }
			<c:if test="${ !empty loginUser }">
		&nbsp;&nbsp;&nbsp;
		<button class="btn btn-lg btn-primary btn-block1"
					style="font-family: 'Do Hyeon', sans-serif;"
					onclick="location.href='cinsertView.do'">글쓰기</button>
			</c:if>
		</h2>
		
		<table id="boardTable">
			<tr>
				<th>번호</th>
				<th width="300">제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:forEach var="b" items="${ list }">
			<tr>
				<td>${ b.cNo }</td>
				<td>
					<c:if test="${ !empty loginUser }">
						<c:url var="cdetail" value="cdetail.do">
							<c:param name="cNo" value="${ b.cNo }"/>
							<c:param name="page" value="${ pi.currentPage }"/>
						</c:url>
						<a href="${ cdetail }">${ b.cTitle }</a>
					</c:if>
					<c:if test="${ empty loginUser }">
					${ b.cTitle }
					</c:if>
				</td>
				<td>${ b.cWriter }</td>
				<td>${ b.writeDate }</td>
				<td>${ b.count }</td>
			</tr>
			</c:forEach>
			
			<!-- 페이징 처리 -->
			<tr align="center" height="20">
				<td colspan="6">
					<!-- [이전] -->
					<c:if test="${ pi.currentPage <= 1 }">
						[이전] &nbsp;
					</c:if>
					<c:if test="${ pi.currentPage > 1 }">
						<c:url var="before" value="clist.do">
							<c:param name="page" value="${ pi.currentPage - 1 }"/>
						</c:url>
						<a href="${ before }">[이전]</a> &nbsp;
					</c:if>
					
					<!-- 페이지 -->
					<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
						<c:if test="${ p eq pi.currentPage }">
							<font color="red" size="4"><b>[${ p }]</b></font>
						</c:if>
						
						<c:if test="${ p ne pi.currentPage }">
							<c:url var="pagination" value="clist.do">
								<c:param name="page" value="${ p }"/>
							</c:url>
							<a href="${ pagination }">${ p }</a> &nbsp;
						</c:if>
					</c:forEach>
					
					<!-- [다음] -->
					<c:if test="${ pi.currentPage >= pi.maxPage }">
						[다음]
					</c:if>
					<c:if test="${ pi.currentPage < pi.maxPage }">
						<c:url var="after" value="clist.do">
							<c:param name="page" value="${ pi.currentPage + 1 }"/>
						</c:url> 
						<a href="${ after }">[다음]</a>
					</c:if>
				</td>
			</tr>
		</table>
	</div>

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