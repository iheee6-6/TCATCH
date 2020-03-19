<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자견단</title>
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
   border: 1px solid rgba(0, 128, 0, 0.507);
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
										<td>날짜<br><input type="datetime-local"  id="tt">
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
									<button type="submit" value="등록하기"></button>
								</div>
								 <script>
							        $(document).on('click', '#add', add);
							        var i = 1;
							        function add(e){
							            $("#wrap").append("<tr>"+
												'<td><label>회차</label><input type="number" size="10" name="dateCount" min="0" class="tt"></td>'+
												'<td></td>'+
												'<td>날짜<br><input type="datetime-local" name="Time ></td>'+
												'</tr><tr>'+
												'<td colspan="3"><label>출연진</label><input type="text" size="58" name="actor" min="0" class="tt"></td></tr>'+
												'</tr>'+
												"<tr><td colspan='3'><hr></td></tr>");
							            i++;
							        }
							    </script>
								<br>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section></div>

</body>

</html>