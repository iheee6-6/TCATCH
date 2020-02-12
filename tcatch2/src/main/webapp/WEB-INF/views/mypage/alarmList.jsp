<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>TCATCH</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<!-- CSS Files -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/mypage.css" rel="stylesheet" />
<link href="resources/css/mypage2.css" rel="stylesheet" />

<style>
ul {
	list-style: none;
}

.my_list01 {
	display: inline-block;
	list-style: none;
}

.my_list01 li {
	float: left;
	border-right: 1px dotted paleturquoise;
	background-color: #f9f9fb;
	_display: inline-block;
	_overflow: hidden;
	_height: 100px;
	padding-bottom: 5px
}

.my_list01 li div {
	padding-right: 20px;
	width: 270px;
	height: 110px;
	padding: 18px 21px 18px 18px;
}

.my_list01 li div.end {
	background: none;
	border: none;
	width: 206px;
}

.my_list01 li img {
	float: left;
}

.my_list01 li strong {
	margin-left: 65px;
	font-weight: bold;
	color: #3c3c3c;
	display: block;
	margin-bottom: 6px;
	height: 26px;
	margin-top: 2px;
	margin-left: 61px;
	line-height: 13px;
	word-wrap: break-word;
	word-break: break-all;
	overflow: hidden;
}

.my_list01 li span {
	margin-left: 62px;
	font-size: 11px;
	display: block;
	line-height: 15px;
}

.my_list01 li.nocont {
	text-align: center;
	width: 728px;
	padding-bottom: 35px;
	_height: 70px;
}

.my_list01 li.nocont em {
	display: block;
	font-size: 12px;
	margin-bottom: 3px;
	padding-top: 32px;
	border-top: 1px solid #d2d2d2;
}

.my_list01 li.nocont a {
	display: inline-block;
}

section,div {
	box-sizing: border-box;
	display: block;
}
.wrapper{
margin-top: 150px;  
margin-left:200px; 
margin-right:200px;
}

.sidebar{
	width:17%;
	height:100%;
	float:left;
}

.main-panel{
	width:83%;
	height:100%;
}
</style>
</head>
<body class="">
<jsp:include page="../common/menubar.jsp"/>

	<div class="wrapper">
		<jsp:include page="leftMenu.jsp"/>
		
		<div class="main-panel">
			<div class="content" style="margin-top: 5px;">
				<div class="row">
					<div class="col-md-9">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="nc-icon nc-bell-55"></i> 나의 맞춤 설정
								</h4>

							</div>
							<div class="card-body">
								<div class="sms_alram" style="height: auto;">
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
</body>

</html>