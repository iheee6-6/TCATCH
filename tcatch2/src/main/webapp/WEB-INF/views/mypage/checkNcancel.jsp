<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCATCH</title>
<style>
	td a{
	font-size: 14px;
	color:blue;
	}
</style>
</head>
<body class="">
	<jsp:include page="../common/menubar.jsp" />

	<div class="wrapper">
		<jsp:include page="leftMenu.jsp" />

		<div class="main-panel">
			<div class="content" style="margin-top: 20px;">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="fa fa-* fa-bookmark"></i> &nbsp;예매확인/취소
								</h4>
								&nbsp;
								<p class="card-category" style="margin-left: 200px;">예매번호를
									클릭하시면 '예매 상세내역 확인' 및 '예매취소'가 가능합니다.</p>
							</div>
							<div class="card-body">
								<table class="table">
									<thead class=" text-primary">
										<th>예매일</th>
										<th>예매번호</th>
										<th>공연명</th>
										<th>관람일시</th>
										<th>매수</th>
										<th>구분</th>
									</thead>
									<tbody>
										<tr>
											<td>2019.02.12</td>
											<td><a href="cncDetail.do">23232</a></td>
											<td>뮤지컬 [쓰릴 미]</td>
											<td>2020.01.01</td>
											<td>2</td>
											<td>예매완료</td>
										</tr>
										<tr>
											<td>Minerva Hooper</td>
											<td>Curaçao</td>
											<td>Sinaai-Waas</td>

										</tr>
										<tr>
											<td>Sage Rodriguez</td>
											<td>Netherlands</td>
											<td>Baileux</td>
										</tr>
										<tr>
											<td>Philip Chaney</td>
											<td>Korea, South</td>
											<td>Overland Park</td>

										</tr>


									</tbody>
								</table>
							</div>

						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<script>
	$(function(){
		$("#cnc").addClass("active");
	});
	</script>
	<jsp:include page="../common/footer.jsp"/>
</body>

</html>