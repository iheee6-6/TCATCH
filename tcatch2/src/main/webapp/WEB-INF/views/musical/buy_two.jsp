<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>김대성/디테일</title>

<link rel='stylesheet' type='text/css'
	href='http://tkfile.yes24.com/New/Css/reset.css' />
<link rel='stylesheet' type='text/css'
	href='http://tkfile.yes24.com/New/Css/sub.css' />

<!--          -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
	rel="stylesheet">
	
	
<script type='text/javascript'
	src='http://tkfile.yes24.com/New/Js/jquery-3.4.1_min.js'></script>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
body {
	font-family: 'NanumBarunGothic', '맑은 고딕', 'Malgun Gothic', sans-serif;
}

#whktjr {
	border: 1px solid black;
	width: 300px;
	height: 50px;
	text-align: center;
}

#goBuy, #ree {
	width: 140px;
	float: left;
	disply: inline-block;
}

#rn-05 {
	float: right;
}

#phone1 {
	width: 80px;
	height: 32px;
}

/* 테이블 */
#table1 {
	width: 100%;
	font-size: 20px;
	text-align: center;
}

#table1 td {
	height: 50px;
}

.tablee {
	width: 100%;
}

.tablee td {
	padding: 10px;
}

#content {
	width: 50%;
}
</style>
</head>
<body>
		<p class='m2-tit'>
			<img src='${contextPath}/resources/images/musical/mLogo.png' />
			</p>
		<div class="ms-list-view">
		
		<div class="rn-03-right">
			<!--상품정보-->

			<dl>
				<dt>날짜</dt>
				<dd>&nbsp;2020.03.26 (목)</dd>
				<dt>시간</dt>
				<dd>&nbsp;[2회]19시 00 분</dd>
				<dt>매수</dt>
				<dd>3 매</dd>
				<dt id="dtPrice">좌석</dt>
				<dd>A-10 , A-11 , D-11</dd>

			</dl>

			<!--포인트-->
			<dl>
				<dt>공연시간 안내</dt>
				<dd>2020년 3월 8일(일) 오후 6시</dd>
				<dt>배송정보</dt>
				<dd>
					현장 수령  <input type="checkbox" value="현장">
				</dd>
				<dd>
					택배 배송  <input type="checkbox" value="택배">
				</dd>
			</dl>
			<pre>
※ 구매 금액에 따라 배송비 차등 적용됩니다.(50,000원 미만: 3,000원)
※ 제주/ 도서산간 배송지의 경우 배송비가 추가됩니다.
※ 제주도 3000원, 제주도 외 도서산간 2000원
</pre>
			<!--자동주문방지적용-->
			
			<table>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" size="30"></td>
			</tr>
			<tr>
				<th scope="row">휴대전화</th>
				<td><select id="phone1" name="phone1" required>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
				</select>-<input id="phone2" name="phone2" maxlength="4" type="text" required />-<input
					id="phone3" name="phone3" maxlength="4" type="text" required /></td>
			</tr>
			<tr>
				<th scope="row">이메일</th>
				<td>
					<div id="email">
						<input name="email" class="emailcheck0" id="text">
					</div>
				</td>
			</tr>
			
			</table>
			<div class="rn-05">
				<!--예매버튼-->
				<a href="#" onclick="alert('결제 완료');"
					class='rn-bb03'>예매하기</a>
				<!--취소버튼-->
				<a href="#"  onclick="window.close();"
					class='rn-bb03'>취소하기</a>
			</div>
			


		</div>
		<!--rn-03-right-->
		</div>

</body>
</html>