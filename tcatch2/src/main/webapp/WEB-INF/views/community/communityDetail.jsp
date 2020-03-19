<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<style>
.wrap {
	width: 50%;
	margin: auto;
}

#boardTable, #replyTable {
	width: 100%;
	border: solid 1px white;
}

#boardTable th {
	border: solid 1px black;
	text-align: center;
	font-family: 'Do Hyeon', sans-serif;
	font-size: 20px;
	font-weight: 500;
}
#replyTable td{
	text-align: center;
}

.title2 {
	width: 100%;
	text-align: center;
	font-family: 'Do Hyeon', sans-serif;
	display: inline-block;
}

.content {
	width: 100%;
	height: 600px;
	border-bottom: 1px solid black;
	border-left: 1px solid black;
	border-right: 1px solid black;
	overflow: scroll;
	font-family: 'Do Hyeon', sans-serif;
}

.btnwrap {
	text-align: center;
}

.btn {
	width: 120px;
	height: 50px;
}

.panel-shadow {
	box-shadow: rgba(0, 0, 0, 0.3) 7px 7px 7px;
}

.panel-white {
	border: 1px solid #dddddd;
}

.panel-white  .panel-heading {
	color: #333;
	background-color: #fff;
	border-color: #ddd;
}

.panel-white  .panel-footer {
	background-color: #fff;
	border-color: #ddd;
}

.post .post-heading {
	height: 95px;
	padding: 20px 15px;
}

.post .post-heading .avatar {
	width: 60px;
	height: 60px;
	display:inline-block;
	margin-right: 15px;
}

.post .post-heading .meta .title {
	margin-bottom: 0;
}

.post .post-heading .meta .title a {
	color: black;
}

.post .post-heading .meta .title a:hover {
	color: #aaaaaa;
}

.post .post-heading .meta .time {
	margin-top: 8px;
	color: #999;
}

.post .post-image .image {
	width: 100%;
	height: auto;
}

.post .post-description {
	padding: 15px;
}

.post .post-description p {
	font-size: 14px;
}

.post .post-description .stats {
	margin-top: 20px;
}

.post .post-description .stats .stat-item {
	display: inline-block;
	margin-right: 15px;
}

.post .post-description .stats .stat-item .icon {
	margin-right: 8px;
}

.post .post-footer {
	border-top: 1px solid #ddd;
	padding: 15px;
}

.post .post-footer .input-group-addon a {
	color: #454545;
}

.post .post-footer .comments-list {
	padding: 0;
	margin-top: 20px;
	list-style-type: none;
}

.post .post-footer .comments-list .comment {
	display: block;
	width: 100%;
	margin: 20px 0;
}

.post .post-footer .comments-list .comment .avatar {
	width: 35px;
	height: 35px;
}

.post .post-footer .comments-list .comment .comment-heading {
	display: inline-block;
	width: 100%;
}

.post .post-footer .comments-list .comment .comment-heading .user {
	font-size: 14px;
	font-weight: bold;
	display: inline-block;
	margin-top: 0;
	margin-right: 10px;
}

.post .post-footer .comments-list .comment .comment-heading .time {
	font-size: 12px;
	color: #aaa;
	margin-top: 0;
	display: inline-block;
}

.post .post-footer .comments-list .comment .comment-body {
	margin-left: 50px;
}

.post .post-footer .comments-list .comment>.comments-list {
	margin-left: 50px;
}

#rSubmit {
	background: url("${contextPath}/resources/images/common/edit.png")
		no-repeat;
	width: 40px;
	height: 40px;
	border: none;
}

.rcontent{
}
.time{
float:right;
margin-right:50px;
}
.replyArea{
display:inline;
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
	<div class="title2">
		<h1 style="font-family: 'Do Hyeon', sans-serif;">${ commu.cTitle }
			상세보기</h1>
	</div>
	<br>
	<br>
	<br>
	<div class="wrap">
		<table id="boardTable">
			<tr>
				<th>No. ${ commu.cNo }</th>
				<th width="35%">작성자 : ${ commu.cWriter }</th>
				<th width="30%">${ commu.writeDate }</th>
				<th width="14%">조회수 : <${ commu.count }></th>
			</tr>

			<tr>
				<th colspan="4">내용</th>
			</tr>
			<tr>
				<td colspan="4"><div class="content">${ commu.cContent }</div></td>
			</tr>



		</table>
		<c:url var="cdelete" value="cdelete.do">
			<c:param name="cNo" value="${ commu.cNo }" />
		</c:url>
		<c:url var="clist" value="clist.do">
			<c:param name="page" value="${ currentPage }" />
		</c:url>
		<c:url var="cupdateView" value="cupdateView.do">
			<c:param name="cNo" value="${ commu.cNo }"/>
			<c:param name="page" value="${ currentPage }" />
		</c:url>
		
		

		<div class="panel panel-white post panel-shadow">
		<table id="replyTable">
			<thead>
				<tr>
					<td colspan="4"><b id="rCount"></b></td>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
			<div class="post-footer">
				<div class="input-group">
					<div>
						<input class="form-control" type="text" value="${loginUser.name }"
							readonly style="width: 90px; text-align: center;">
					</div>

					<input class="form-control" id="rContent" placeholder="Add a comment" type="text">
					<select style="height:38px;">
						<option selected>별점등록</option>
						<option>★</option>
						<option>★★</option>
						<option>★★★</option>
						<option>★★★★</option>
						<option>★★★★★</option>
					</select>
					<span class="input-group-addon">
						<button id="rSubmit"></button>
					</span>
				</div>
				<ul class="comments-list">
					<li class="comment">
						<div class="comment-body" id="body">
						
							<div class="comment-heading" id="head">
								<div class="replyArea">
								<span class="user"><!-- 로그인유저 아이디 --></span>
								<span class="star"></span>
								<h5 class="time"><!-- 작성시간 --></h5>
								</div>
								<h5 class="rcontent"><!-- 작성내용 --></h5>
								
							</div>
							
						</div>
					</li>
				</ul>
			</div>
		</div>

		<br>

		<c:if test="${loginUser.name ne commu.cWriter }">
			<div class="btnwrap">
				<button class="btn btn-primary"
					style="font-family: 'Do Hyeon', sans-serif; font-size: 23px;"
					onclick="location.href='${clist}'">목록으로</button>
			</div>
		</c:if>







		<c:if test="${loginUser.name eq commu.cWriter }">
			<div class="btnwrap">
				<button class="btn btn-primary"
					style="font-family: 'Do Hyeon', sans-serif; font-size: 23px;"
					onclick="location.href='${clist}'">목록으로</button>
				<button type="button" class="btn btn-danger"
					style="font-family: 'Do Hyeon', sans-serif; font-size: 23px;"
					onclick="location.href='${cdelete}'">삭제하기</button>
				<button class="btn btn-primary"
					style="font-family: 'Do Hyeon', sans-serif; font-size: 23px;"
					onclick="location.href='${cupdateView}'">수정하기</button>
			</div>
		</c:if>


	</div>

	<script>
		$(function() {
			// 초기 페이지 로딩 시 댓글 불러오기
			getReplyList();

			// 타 회원이 작성한 댓글도 지속적으로 불러오고 싶다면
			setInterval(function() {
				getReplyList();
			}, 50000);

			// 댓글 등록 ajax
			$("#rSubmit").on("click", function() {
				// 필요한 값을 가지고 db에 insert한 뒤
				// 등록 성공 시 댓글리스트 다시 불러오기
				// 요청 url : addReply.do
				var rContent = $("#rContent").val();
				var refCno = ${commu.cNo};

				$.ajax({
					url : "addReply.do",
					data : {
						rContent : rContent,
						refCno : refCno
					},
					type : "post",
					success : function(data) {
						if (data == "success") {
							getReplyList(); // 등록 성공시 다시 댓글리스트 불러오기
							$("#rContent").val("");
						}
					}
				});
			});
		});

		function getReplyList() {
			var cNo = ${commu.cNo};
			console.log(cNo);
			$.ajax({
				url : "rList.do",
				data : {cNo : cNo},
				dataType : "json",
				success : function(data) {
					console.log(data);

					$tableBody = $(".comments-list");
					$tableBody.html("");

					$("#rCount").text("댓글(" + data.length + ")");

					if (data.length > 0) {
						for ( var i in data) {
							var $li = $("<li class='comment'>");
							var $body = $("<div class='comment-body'>");
							var $heading = $("<div class='comment-heading'>");
							var $reply = $("<div class='replyArea'>");
							var $user = $("<span class='user'>").text(data[i].rWriter + " 님의 평점 : ");
							var $p = $("<h5 class='rcontent'>").text(data[i].rContent);
							var $time = $("<h5 class='time'>").text(
									data[i].rCreateDate);
							var $star = $("<span class='star'>").text(data[i].star);

							
							$tableBody.append($li);
							$li.append($body);
							$body.append($heading);
							$reply.append($user);
							$reply.append($star);
							$reply.append($time);
							$heading.append($reply);
							$heading.append($p);
							
						}
					} else {
						// 댓글이 등록되지 않았을 때
						var $tr = $("<tr>");
						var $rContent = $("<td colspan='2'>").text(
								"등록 된 댓글이 없습니다.");
						$tr.append($rContent);
						$tableBody.append($tr);
					}

				},
				error : function(e) {
					console.log(e);
				}
			});

		}
	</script>

	<jsp:include page="../common/footer.jsp" />

</body>
</html>