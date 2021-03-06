<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.form-insert {
	width: 800px;
	margin: auto;
}

table, td {
	width: 100%;
}

#cTitle {
	width: 700px;
	border-radius: 3px;
}

.note-editable {
	height: 500px;
}

.btnDiv {
	text-align: center;
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
	<h1 align="center" style="font-family: 'Do Hyeon', sans-serif;">${ commu.cTitle }
		수정 페이지</h1>
	<form action="cupdate.do" onsubmit="return joinValidate();"
		method="post" class="form-insert">
		<input type="hidden" name="page" value="${ currentPage }">
		<input type="hidden" name="cNo" value="${ commu.cNo}">
		<div class="titleDiv">
			<table>
				<tr>
					<td style="text-align: center;"><h3
							style="font-family: 'Do Hyeon', sans-serif;">제목</h3></td>
					<td><input type="text" name="cTitle" id="cTitle"
						value="${commu.cTitle}"></td>
				</tr>
			</table>
			<input type="text" id="HC" name="cContent" hidden> <input
				type="text" name="cWriter" value="${loginUser.name}" hidden>
		</div>
		<div id="summernote"></div>


		<div class="btnDiv">
			<c:url var="clist" value="clist.do">
				<c:param name="page" value="${ currentPage }" />
			</c:url>
			<button class="btn btn-lg btn-primary btn-block1"
				style="font-family: 'Do Hyeon', sans-serif;" type="button"
				onclick="location.href='${clist}'">목록으로</button>
			<button class="btn btn-lg btn-primary btn-block1"
				style="font-family: 'Do Hyeon', sans-serif;" type="submit">수정완료</button>

		</div>

	</form>


	<script>
		$(document).ready(function() {

			$('#summernote').summernote();
			$(".note-editable").html('${commu.cContent}');

		});
	</script>
	<script>
		$(document).ready(function() {

			/* $("#title").val('')
			$(".note-editable").html('') */
			$("button").mouseenter(function() {
				$("#HC").val($(".note-editable").html())
				console.log($("summernote").summernote('code'))

			});

		});
		function joinValidate() {
			if ($("input[name=cTitle]").val().length < 1) {
				alert('제목을 입력해주세요');
				$("input[name=cTitle]").select();
				return false;
			}

			if ($(".note-editable").html().length < 15) {
				alert("내용을 입력해주세요")
				return false;
			}

			return true;
		}
	</script>

	<link
		href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css"
		rel="stylesheet">
	<script
		src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.js"></script>
	<link
		href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
		rel="stylesheet">


</body>
</html>