<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="sidebar" data-color="black" data-active-color="danger">
		<div class="logo">
			<a href="enterMypage.do">
				<div class="logo-image-small">
					<img src="../assets/img/logo-small.png">
				</div>
			</a> <a href="home.do" class="simple-text logo-normal"> 신하은님의 MYPAGE
				<!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
			</a>
		</div>
		<div class="sidebar-wrapper">
			<ul class="nav">
				<li id="cnc"><a href="checknCancel.do"><i class="nc-icon nc-check-2"></i>
						<p>예매확인/취소</p></a></li>
				<li id="interest"><a href="interestPerformance.do"> <i
						class="nc-icon nc-favourite-28"></i>
						<p>나의 관심 공연</p>
				</a></li>
				<li id="viewPer"><a href="viewPerformance.do"> <i
						class="nc-icon nc-paper"></i>
						<p>나의 관람 공연</p>
				</a></li>
				<li id="alarmS"><a href="alarmList.do"> <i class="nc-icon nc-bell-55"></i>
						<p>나의 맞춤 설정</p>
				</a></li>
				<li id="userU"><a href="user.do"> <i class="nc-icon nc-single-02"></i>
						<p>회원정보 수정</p>
				</a></li>

			</ul>
		</div>
	</div>
</body>
</html>