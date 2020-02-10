<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
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

<link href="resources/css/mypage.css" rel="stylesheet" />
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />

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
</style>
</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="white" data-active-color="danger">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com" class="simple-text logo-mini">
					<div class="logo-image-small">
						<img src="../assets/img/logo-small.png">
					</div>
				</a> <a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> 신하은님의 MYPAGE <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
				</a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li><a href="./dashboard.html"> <i
							class="nc-icon nc-check-2"></i>
							<p>예매확인/취소</p>
					</a></li>
					<li><a href="./icons.html"> <i
							class="nc-icon nc-favourite-28"></i>
							<p>나의 관심 공연</p>
					</a></li>
					<li><a href="./map.html"> <i class="nc-icon nc-paper"></i>
							<p>나의 관람 공연</p>
					</a></li>
					<li class="active"><a href="./notifications.html"> <i
							class="nc-icon nc-bell-55"></i>
							<p>나의 맞춤 설정</p>
					</a></li>
					<li><a href="./user.html"> <i class="nc-icon nc-single-02"></i>
							<p>회원정보 수정</p>
					</a></li>
					<li><a href="./tables.html"> <i class="nc-icon nc-tile-56"></i>
							<p>Table List</p>
					</a></li>
					<li><a href="./typography.html"> <i
							class="nc-icon nc-caps-small"></i>
							<p>Typography</p>
					</a></li>

				</ul>
			</div>
		</div>

		<!-- <jsp:include page="leftMeun.html"/> -->
		<div class="main-panel">
			<div class="content" style="margin-top: 5px;">
				<div class="row">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="nc-icon nc-bell-55"></i> 나의 맞춤 설정
								</h4>

							</div>
							<div class="card-body">
								<div class="sms_alram" style="height: auto;">
									<span>* 티켓 오픈 소식, 관심 공연 등의 정보를 받을 휴대전화번호를 확인해주세요. </span> <br>
									<br> <em style="height: auto; width: 360px;">수신 EMAIL
										: <span>TCATCH@kh.com</span>
									</em>
									<ul>
										<li>- 맞춤 알람 SMS는 회원정보상의 SMS 수신동의여부와 상관없이 맞춤 알람 설정에 따라
											발송됩니다.</li>
										<li>- SMS 받을 휴대전화번호 변경을 원하는 회원님은 <a
											href="https://www.yes24.com/Member/FTMemUpt.aspx"
											target="_blank" title="회원정보 변경으로 이동"><span class="blu">[회원정보를
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
	
</body>

</html>