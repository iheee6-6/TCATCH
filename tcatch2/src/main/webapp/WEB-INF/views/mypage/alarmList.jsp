<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>TCATCH</title>


</head>
<body class="">
<jsp:include page="../common/menubar.jsp"/>

	<div class="wrapper">
		<jsp:include page="leftMenu.jsp"/>
		
		<div class="main-panel">
			<div class="content" style="margin-top: 20px;">
				<div class="row">
					<div class="col-md-9">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="fa fa-* fa-bookmark"></i> &nbsp;나의 맞춤 설정
								</h4>

							</div>
							<div class="card-body">
								<div class="sms_alram" style="height: 170px; background-color:gray; border:1px solid black">
									<span>* 티켓 오픈 소식, 관심 공연 등의 정보를 받을 휴대전화번호를 확인해주세요. </span> <br>
									<br> <em style="height: 70px; width: 360px;">수신 EMAIL
										: <span>TCATCH@kh.com</span>
									</em>
									<ul>
										<li>- 맞춤 알람 SMS는 회원정보상의 SMS 수신동의여부와 상관없이 맞춤 알람 설정에 따라
											발송됩니다.</li>
										<li>- SMS 받을 휴대전화번호 변경을 원하는 회원님은 <a
											href="user.do" title="회원정보 변경으로 이동"><span class="blu">[회원정보를
													변경]</span></a> 해주세요.
										</li>
									</ul>
								</div>
								<table class="table">
									<thead class=" text-primary">
										<th style="width: 20px;"></th>
										<th>공연</th>
										<th>티켓오픈일시</th>
										<th>알림일시</th>
									</thead>
									<tbody>
										<tr>
											<td><input name="chkInterestPerf" type="checkbox"
												value="35104"></td>
											<td>뮤지컬 [쓰릴 미]</td>
											<td>2019.02.12 : 오후 9시</td>
											<td>2019.02.12 : 오후 8시</td>

										</tr>
										<tr>
											<td><input name="chkInterestPerf" type="checkbox"
												value="35104"></td>
											<td>뮤지컬 [쓰릴 미]</td>
											<td>2019.02.12 : 오후 9시</td>
											<td>2019.02.12 : 오후 8시</td>

										</tr>
										<tr>
											<td><input name="chkInterestPerf" type="checkbox"
												value="35104"></td>
											<td>뮤지컬 [쓰릴 미]</td>
											<td>2019.02.12 : 오후 9시</td>
											<td>2019.02.12 : 오후 8시</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="text-danger" style="margin-left: 30px;">
								※ 티켓오픈 알림 받을 공연을 추가하거나 티켓 오픈 예정 공연 확인은 공지사항을 확인해주세요
							
								<div style="float: right; margin-right: 50px;">
									<button class="btn btn-sm">공지사항 확인</button>
									<button class="btn btn-sm">전체 선택</button>
									<button class="btn btn-sm">선택 삭제</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<script>
	$(function(){
		$("#alarmS").addClass("active");
	});
	</script>
	
	<jsp:include page="../common/footer.jsp"/>
</body>

</html>