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
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="${contextPath }/resources/js/community/jquery.raty.js"></script>
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

#replyTable td {
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
	height: 300px;
	border-bottom: 1px solid black;
	border-left: 1px solid black;
	border-right: 1px solid black;
	overflow: scroll;
	font-family: 'Do Hyeon', sans-serif;
}

.btnwrap {
	text-align: right;
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
	display: inline-block;
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

.rcontent {
	
}

.time {
	margin-left:350px;
}

.replyArea {
	display: inline;
}



.rId {
	width: 10%;
	height: 10%;
	border: 0;
	outline: 0;
	background: white;
	color: red;
}
.starR{
  background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
  background-size: auto 100%;
  width: 20px;
  height: 20px;
  display: inline-block;
  text-indent: -9999px;
  cursor: pointer;
  margin-top:5px;
}
.starRev{
	margin-left:20px;
	width:200px;
	float:left;
}
.starArea{
	width:100%;
}
.form-control{
float:left;
}

#ss a{
 text-decoration: none; 
 color: gray; 

 } 
 #ss a.on{ 
 color: red; 
 }


.starR.on{background-position:0 0;}
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
		<h1 style="">[제목] ${ commu.cTitle }</h1>
	</div>
	<br>
	<br>
	<br>
	<input type="hidden" id="id" value="${loginUser.id }">
	<div class="wrap">
	<button class="btn btn-outline-secondary"
					style="font-size: 12px; width:80px; height:40px; float:right;"
					onclick="location.href='${clist}'">신고하기</button>
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
			<c:param name="cNo" value="${ commu.cNo }" />
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
					<div class="starArea">
						<input class="form-control" type="text" value="별점등록"
							readonly style="width: 90px; text-align: center;">
							
						<p id="ss"> <!-- 부모 --> 
						<a href="#" value="1">★</a> <!-- 자식들--> 
						<a href="#" value="2">★</a> 
						<a href="#" value="3">★</a>
						<a href="#" value="4">★</a> 
						<a href="#" value="5">★</a> 
						<p>
					</div>
				
				<div class="input-group">
				
					<div>
						<input class="form-control" type="text" value="${loginUser.name }"
							readonly style="width: 90px; text-align: center;">
					</div>

					<input class="form-control" id="rContent"
						placeholder="Add a comment" type="text"> 
						
					
					<span class="input-group-addon">
						<button id="rSubmit"></button>
					</span>
				</div>
				<ul class="comments-list">
					<li class="comment">
						<div class="comment-body" id="body">

							<div class="comment-heading" id="head">
								<div class="replyArea">
									<span class="user"></span> 
										<span class="star"></span>
										<h5 class="time"></h5><!-- 작성시간 -->
										<button type="button" class="rId" id="tt"  name="rId"></button>
								</div>
				
								<div class="replyArea2">
									<h6 class="rcontent">
										<!-- 작성내용 -->
									</h6>

								</div>
							</div>

						</div>
					</li>
				</ul>

			</div>
		</div>

		<br>

		<c:if test="${loginUser.name ne commu.cWriter }">
			<div class="btnwrap">
				<button class="btn btn-outline-secondary"
					style=" font-size: 12px; width:80px; height:40px;"
					onclick="location.href='${clist}'">목록으로</button>
			</div>
		</c:if>
						







		<c:if test="${loginUser.name eq commu.cWriter }">
			<div class="btnwrap">
				<button class="btn btn-outline-secondary"
					style="font-size: 12px; width:80px; height:40px;"
					onclick="location.href='${clist}'">목록으로</button>
				
				<button class="btn btn-outline-secondary"
					style="font-size: 12px; width:80px; height:40px;"
					onclick="location.href='${cupdateView}'">수정하기</button>
				<button type="button" class="btn btn-outline-danger" id="dBtn"
					style="font-size: 15px; width:50px; display:none;"
					onclick="location.href='${cdelete}'">X</button>
				<button type="button" class="btn btn-outline-danger"
					style="font-size: 12px; width:40px; height:40px;"
					onclick="real();">X</button>
					
					<script>
						function real(){
							if(confirm("정말 글을 삭제하시겠습니까?")){
								$("#dBtn").click();
							}
						}
					
					</script>
			</div>
		</c:if>
		


	</div>

	<script>
		var id = $("#id").val();
		console.log("id" + id);

		// 초기 페이지 로딩 시 댓글 불러오기
		getReplyList();

		// 타 회원이 작성한 댓글도 지속적으로 불러오고 싶다면
		/* setInterval(function() {
			getReplyList();
		}, 5000); */
		
		$('#ss a').click(function(){ 
			$(this).parent().children("a").removeClass("on"); 
			$(this).addClass("on").prevAll("a").addClass("on"); 
			console.log($(this).attr("value"));
			return false;
			
			});
		
		// 댓글 등록 ajax
		$("#rSubmit").on("click", function() {
			
			// 필요한 값을 가지고 db에 insert한 뒤
			// 등록 성공 시 댓글리스트 다시 불러오기
			// 요청 url : addReply.do
			var rContent = $("#rContent").val();
			var star = document.getElementsByClassName("on").length;
			var refCno = ${commu.cNo};
			console.log("star : " + star);

			$.ajax({
				url : "addReply.do",
				data : {
					star : star,
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
									var rId = data[i].rId;
									switch(data[i].star){
									case 1: data[i].star="★☆☆☆☆"
									break;
									case 2: data[i].star="★★☆☆☆"
										break;
									case 3: data[i].star="★★★☆☆"
										break;
									case 4: data[i].star="★★★★☆"
										break;
									case 5: data[i].star="★★★★★"
										break;
									}
									var $li = $("<li class='comment'>");
									var $body = $("<div class='comment-body'>");
									var $heading = $("<div class='comment-heading'>");
									var $reply = $("<div class='replyArea'>");
									var $reply2 = $("<div class='replyArea2'>");
									var $user = $("<span class='user'>").text(
											data[i].rWriter);
									var $p = $("<h6 class='rcontent'>").text(" ⇒ " + 
											data[i].rContent);
									var $time = $("<h5 class='time'>").text(
											data[i].rCreateDate);
									var $star = $("<span class='star'>").text(
											data[i].star).css({"color":"red"});
									var $del = $(
											"<button class='rId' id='tt' value=" + data[i].rId + ">")
											.text("x");

									$tableBody.append($li);
									$li.append($body);
									$body.append($heading);
									$reply.append($user);
									$reply.append($star);
									$reply.append($time);
									if (data[i].rWriter == id) {
										$reply.append($del);
									}

									$reply2.append($p);
									$heading.append($reply);
									$heading.append($reply2);

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
	<script>
		$(document).on("click","#tt",function(){
			console.log("gd");
			var rId = this.value;
			
			if(confirm("정말 삭제하시겠습니까?")){
			$.ajax({
				url : "rdelete.do",
				data : {rId : rId},
				success : function(data) {
					console.log(data);
					getReplyList();
				}
				
			});
			}else{
				return false;
			}
		});
		
		

	</script>


	<jsp:include page="../common/footer.jsp" />

</body>
</html>