<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<!-- CSS Files -->

<!-- <link href="resources/css/bootstrap.min.css" rel="stylesheet" /> -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="resources/css/mypage/mypage.css" rel="stylesheet" />
<link href="resources/css/mypage/mypage2.css" rel="stylesheet" />
<style>

section,div {
	box-sizing: border-box;
	display: block;
	
}

.wrapper{
display:block;
width:1300px;
margin-top: 150px;  
margin-left:200px; 
margin-right:200px;
margin-bottom: 150px;
}

.sidebar{
	width:17%;
	height:500px;
	float:left;
}

.main-panel{
	width:83%;
	height:100%;
}

</style>
</head>
<body>
	<div class="sidebar" data-color="black" data-active-color="danger">
		<div class="logo"  style="margin-top:20px;">
			<a href="enterMyPage.do" class="simple-text logo-normal" style="margin-left:30px;"> 관리자페이지
			</a>
		</div>
		<div class="sidebar-wrapper">
			<ul class="nav">
			
				<li id="interest"><a href="adminChecknCancel.do"> <i
						class="fa fa-* fa-heart"></i>
						<p>예매 관리</p>
				</a></li>
				<li id="cnc"><a href="adminRefundList.do"><i
						class="fa fa-* fa-check"></i>
						<p>환불 관리</p></a></li>
				<li id="userU"><a href="adminList.do"> <i class="fa fa-* fa-user"></i>
						<p>회원 탈퇴</p>
				</a></li>
				<li id="cnc"><a href="admin3.do"><i
						class="fa fa-* fa-check"></i>
						<p>신고목록</p></a></li>
						
				<li id="cnc"><a href="adminArt.do"><i
						class="fa fa-* fa-check"></i>
						<p>공연목록</p></a></li>
				<li id="viewPer"><a href="admin4.do"> <i
						class="fa  fa-* fa-eye"></i>
						<p>공연 입력</p></a></li>
				

			</ul>
		</div>
	</div>
	
</body>
</html>