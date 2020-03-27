<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TACTCH</title>
<link rel="shortcut icon" type="image/x-icon" href='${contextPath}/resources/images/common/logo.png'>
<!-- Bootstrap core CSS -->

<style>
.outer {
width:500px;
height:1000px;
   margin: auto;
   margin-top: 50px;
}

.tt {
   width: 100%;
   border: 1px solid #ced4da
}
#inner{
width:100%;
margin-bottom:3%;
}
</style>
</head>

 	<body id="page-top">
 	<jsp:include page="../common/menubar2.jsp"/>
<br><br><br><br>
  <div id="inner">
	<section class="bg-light page-section" id="portfolio">
		<div class="container">
			<div class="row">
				<div class="outer">
					<br>
					<h2 align="center">상품 입력</h2>
					<hr>
					<div class="tableArea">
						<form action="insertTime.do" method="post" enctype="multipart/form-data">
								<table id="wrap">
									<tr>
										<td colspan="3"><h5><strong>시간표</strong></h5></td>
									</tr>
									<tr>
										<td colspan="3"><hr></td>
									</tr>
									<tr>
										<td><label>회차</label><input type="number" size="10" name="dateCount" min="0" class="tt"></td>
										<td></td>
										<td>날짜<br><input type="datetime-local"  id="tt" clase="tt">
										<input type="hidden" id="dateTime" name="Time" value=""></td>
										
										<script>
											$("#tt").change(function(){
												var dd = $("#tt").val();
												console.log(dd);
												$("#dateTime").val(dd);
											});
										</script>
									</tr>
									<tr>
										<td colspan="3"><label>출연진</label><input type="text" size="58" name="actor" min="0" class="tt"></td>
									</tr> 
									<tr>
										<td colspan="3"><hr></td>
									</tr>
								</table>
								<input type="button" id="add" value="회차 추가">
								
								<div align="center">
									<button type="submit" value="등록하기">등록하기</button>
									<button type="button" onclick="location.href='exhibitionSeat.do'">전시 등록</button>
								</div>
								
								 <script>
							        $(document).on('click', '#add', add);
							        
							        function add(e){
							            $("#wrap").append("<tr>"+
												'<td><label>회차</label><input type="number" size="10" name="dateCount" min="0" class="tt"></td>'+
												'<td></td>'+
												'<td>날짜<br><input type="datetime-local" name="Time" ></td>'+
												'</tr><tr>'+
												'<td colspan="3"><label>출연진</label><input type="text" size="58" name="actor" min="0" class="tt"></td></tr>'+
												'</tr>'+
												"<tr><td colspan='3'><hr></td></tr>");
							        }
							    </script>
								<br>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section></div>
	<jsp:include page="../common/footer.jsp" />
</body>

</html>