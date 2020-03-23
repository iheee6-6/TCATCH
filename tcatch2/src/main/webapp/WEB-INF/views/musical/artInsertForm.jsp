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
height:1500px;
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
	<section  id="portfolio">
		<div class="container">
			<div class="row">
				<div class="outer">
					<br>
					<h2 align="center">상품 입력</h2>
					<hr>
					<div class="tableArea">
						<form action="insertArt.do" method="post" enctype="multipart/form-data">
								<table>
									<tr>
										<td colspan="6"><h5><strong>대표 이미지</strong></h5></td>
									</tr>
									<tr>
										<td colspan="6">
											<div id="titleImgArea">
												<img id="titleImg" width="350" height="200" class="tt">
											</div>
										</td>
									</tr>

									<tr>
										<td colspan="6"><h5><strong>옵션</strong></h5></td>
									</tr>

									<tr>
										<td>타입</td>
										<td><select name="artType" class="tt">
												<option>----</option>
												<option value="0">전시</option>
												<option value="1">콘서트</option>
												<option value="2">뮤지컬</option>
												<option value="3">연극</option>
										</select></td>
										
										<td>할인</td>
										<td><input type="number" size="58" name="sale" min="0" class="tt"></td>
									</tr>
									<tr>
										<td>회사</td>
										<td><select name="companyNo" class="tt">
												<option>----</option>
												<option value="1">(주)회사 1</option>
												<option value="2">(주)회사 2</option>
												<option value="3">(주)회사 3</option>
												<option value="4">(주)회사 4</option>
										</select></td>
										
										<td>관람등급</td>
										<td><select name="rating" class="tt">
												<option>----</option>
												<option value="1">전체관람가</option>
												<option value="2">12세</option>
												<option value="3">15세</option>
												<option value="4">청소년 관람 불가</option>
										</select></td>
										</tr>
									
									 
									        
									<tr>
						           <td colspan="6"><h5><strong>소요시간</strong></h5></td>
						           </tr>
						           
						            <tr>
						            <td colspan="6"><input type="number" size="45" name="durationTime" value="0"></td>
					                </tr>
					                
					                <tr>
						           <td colspan="6"><h5><strong>날짜</strong></h5></td>
						           </tr>
						           
						           <tr>
						           <td>티켓팅</td>
						           <td>날짜<br><input type="datetime-local"  id="tt">
										<input type="hidden" id="ticketingDate" name="ticketingDate" value=""></td>
						           </tr>
						           
						           <tr>
						           <td>시작날짜</td>
						           <td><input type="date" id="ttt">
						           <input type="hidden" id="startDate" name="startDate" value=""></td>
						           <td>종료날짜</td>
						           <td><input type="date" id="tttt">
						           <input type="hidden" id="endDate" name="endDate" value=""></td>
						            
						           <script>
											$("#tt").change(function(){
												var dd = $("#tt").val();console.log(dd);
												$("#ticketingDate").val(dd);
											});
											
											$("#ttt").change(function(){
												var dd = $("#ttt").val();console.log(dd);
												$("#startDate").val(dd);
											});
											
											$("#tttt").change(function(){
												var dd = $("#tttt").val();console.log(dd);
												$("#endDate").val(dd);
											});
								</script>
						             
						           </tr>
						           

									<tr>
										<td colspan="6"><h5><strong>공연 명 </strong></h5></td>
									</tr>
									<tr>
										<td colspan="6"><input type="text" size="58" name="artTitle"
											class="tt"></td>
									</tr>
									<tr>
										<td colspan="6"><h5><strong>공연 장소 </strong></h5></td>
									</tr>
									<tr>
										<td colspan="6"><input type="text" size="58" name="address"
											class="tt"></td>
									</tr>
									<tr>
										<td colspan="6"><h5><strong>내용</strong></h5></td>
									</tr>
									<tr>
										<td colspan="6">
											<div id="titleImgArea2">
												<img id="titleImg2" width="350" height="500" class="tt">
											</div>
										</td>
									</tr>
									
								</table>
								<br>
								<div align="center">
									<button id="submit" type="submit" class="btn btn-outline-success">다음</button>
									<div id="fileupload">
										<input type="file" id="thumbnailImg1" name="uploadFile" onchange="loadImg(this,1)"> 
										<input type="file" id="thumbnailImg2" name="uploadFile2" onchange="loadImg(this,2)">
									</div>
									<br>
									<script>
										$(function() {
											$("#fileupload").hide();

											$("#titleImgArea").click(
													function() {
														$("#thumbnailImg1").click();
													});
											$("#titleImgArea2").click(
													function() {
														$("#thumbnailImg2").click();
													});
										});
					                       function loadImg(value, num){
					                    	   
												var reader = new FileReader();
												
												if(num == 1)
												reader.onload = function(e){
													$("#titleImg").attr("src", e.target.result);							
												}
												if(num==2)
												reader.onload = function(e){
													$("#titleImg2").attr("src", e.target.result);							
												}
												
												// 파일 읽기 하는 메소드
												reader.readAsDataURL(value.files[0]);
											}
									</script>
								</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section></div>
	<jsp:include page="../common/footer.jsp" />
</body>

</html>