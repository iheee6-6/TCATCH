<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.wrap {
	width: 50%;
	margin: auto;
}

#boardTable, #replyTable {
	width: 100%;
	border: solid 1px white;
}

#boardTable th, #replyTable td {
	border: solid 1px black;
	text-align: center;
	font-family: 'Do Hyeon', sans-serif;
	font-size: 20px;
	font-weight: 500;
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
			
			<tr>
				<td style="text-align:center;">${loginUser.name }</td>
				<td colspan="2">
					<textarea cols="70" rows="2" id="rContent"></textarea>
				</td>
				<td><button id="rSubmit">등록하기</button></td>
			</tr>

		</table>
		<table id="replyTable">
			<thead>
				<tr>
					<td colspan="4"><b id="rCount"></b></td>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		
		<br>
		
		<c:url var="cdelete" value="cdelete.do">
			<c:param name="cNo" value="${ commu.cNo }" />
		</c:url>
		<c:url var="clist" value="clist.do">
			<c:param name="page" value="${ currentPage }" />
		</c:url>
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
			</div>
		</c:if>


	</div>
	
	<script>
	$(function(){
		// 초기 페이지 로딩 시 댓글 불러오기
		getReplyList();
		
		// 타 회원이 작성한 댓글도 지속적으로 불러오고 싶다면
		setInterval(function(){
			getReplyList();
		}, 10000);
		
		// 댓글 등록 ajax
		$("#rSubmit").on("click", function(){
			// 필요한 값을 가지고 db에 insert한 뒤
			// 등록 성공 시 댓글리스트 다시 불러오기
			// 요청 url : addReply.do
			var rContent = $("#rContent").val();
			var refCno = ${ commu.cNo }; 
			
			$.ajax({
				url:"addReply.do",
				data:{rContent:rContent, refCno:refCno},
				type:"post",
				success:function(data){
					if(data == "success"){
						getReplyList(); // 등록 성공시 다시 댓글리스트 불러오기
						$("#rContent").val("");
					}
				}
			});
		});
	});
	
	function getReplyList(){
		var cNo = ${commu.cNo};
		
		$.ajax({
			url:"rList.do",
			data:{cNo:cNo},
			dataType:"json",
			success:function(data){
				console.log(data);
				
				$tableBody = $("#replyTable tbody");
				$tableBody.html("");
				
				$("#rCount").text("댓글("+data.length+")");
				
				if(data.length > 0){
					for(var i in data){
						var $tr = $("<tr>");
						var $rWriter = $("<td width='100'>").text(data[i].rWriter);
						var $rContent = $("<td width='500'>").text(data[i].rContent);
						var $rCreateDate = $("<td width='200'>").text(data[i].rCreateDate);
						
						$tr.append($rWriter);
						$tr.append($rContent);
						$tr.append($rCreateDate);
						
						$tableBody.append($tr);
					}
				}else{
					// 댓글이 등록되지 않았을 때
					var $tr = $("<tr>");
					var $rContent = $("<td colspan='2'>").text("등록 된 댓글이 없습니다.");
					$tr.append($rContent);
					$tableBody.append($tr);
				}
				
			},
			error:function(e){
				console.log(e);
			}
		});
		
	}
	
	</script>
	
	<jsp:include page="../common/footer.jsp" />

</body>
</html>