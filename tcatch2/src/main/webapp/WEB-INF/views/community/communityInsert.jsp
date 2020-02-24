<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 글 작성 페이지</title>

<style>
.form-insert {
	width: 800px;
	margin: auto;
}

table, td {
	width: 100%;
}

#title {
	width: 700px;
	border-radius: 3px;
}

.note-editable {
	height: 500px;
}

.btn {
	float: right;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h1 align="center" style="font-family: 'Do Hyeon', sans-serif;">커뮤니티
		글 작성</h1>
	<form action="cinsert.do" onsubmit="return joinValidate();"
		method="post" class="form-insert">
		<div class="titleDiv">
			<table>
				<tr>
					<td style="text-align: center;"><h3
							style="font-family: 'Do Hyeon', sans-serif;">제목</h3></td>
					<td><input type="text" name="title" id="title"></td>
				</tr>
			</table>
			<input type="text" id="HC" name="content" hidden> <input
				type="text" id="bId" name="bId" hidden>
		</div>
		<div id="summernote"></div>
		<button class="btn btn-lg btn-primary btn-block1"
			style="font-family: 'Do Hyeon', sans-serif;" type="submit">작성완료</button>
	</form>


	<script>
		$(document).ready(function() {
			$('#summernote').summernote();
		});
	</script>
	<script>
		function joinValidate() {
			if ($("input[name=title]").val().length < 1) {
				alert('제목을 입력해주세요');
				$("input[name=title]").select();
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
		href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
		rel="stylesheet">
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<!-- include summernote css/js -->
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