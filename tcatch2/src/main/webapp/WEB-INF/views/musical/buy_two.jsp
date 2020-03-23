<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
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

<!-- 결제 -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

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
				<dd>&nbsp;${strToday}</dd>				
				<dt>시간</dt>
				<dd>&nbsp;[${ atDateTime.dateCount }]회차 &nbsp; ${atDateTime.dateTime }</dd>		
				<dt>매수</dt>
				<dd>${count } 매</dd>
				<dt id="dtPrice">좌석</dt>
				<dd>${seatName}</dd>
				<dt>가격</dt>
				<dd>${count * 40000 } 원 </dd>
				

			</dl>

			<!--포인트-->
			<dl>
				<dt>배송정보</dt>
				<c:if test="${artType != 0 }">
				<dd>
					택배 배송  <input type="radio" name="r" value="0" id="xorqo">
				</dd>
				<dd>
					현장 수령  <input type="radio" name="r" value="1" id="guswkd">
				</dd>
				</c:if>
				<dd>전시는 현장 수령만 지원합니다 . </dd>
				<script>
					$(document).ready(function () {
				        $('input[type=radio]').click(function () {
				          // getter
				          var radioVal = $('input[name="r"]:checked').val();
				          $("#type").val(radioVal);
				        });
				      });
				</script>
			</dl>
			<p><strong>택배 배송</strong><br> 
			주소명을 통해 배송을 하기 때문에 수정을 원할경우 MyPage - 회원정보관리를 통해 수정할 수 있습니다. <br>
			<strong>현장 수령</strong><br>
			 MyPage - 예매확인을 통해 관리자에게 보여주면 현장에서 발급 받을 수 있습니다.</p>
			<p>
			※ 구매 금액에 따라 배송비 차등 적용됩니다.(50,000원 미만: 3,000원)<br>
			※ 제주/ 도서산간 배송지의 경우 배송비가 추가됩니다.<br>
			※ 제주도 3000원, 제주도 외 도서산간 2000원<br>
			</p>
			<!--자동주문방지적용-->
		<form action="buyEnd.do" method="post">
			<input type="hidden" name="mNo" value="${ loginUser.no }">
			<input type="hidden" name="seatName" value="${sList[0].seatName}">
			<input type="hidden" name="seatSal" value="${count * 40000}">
				<c:if test="${artType != 0 }">
					<input type="hidden" name="type" id="type" value="">			
				</c:if>
				<c:if test="${artType != 0 }">
					<input type="hidden" name="type" id="type" value="1">
				</c:if>
			<input type="hidden" name="purchaseCount" value="${count}">
			<input type="hidden" name="timeNo" value="${timeNo }">
			<input type="hidden" name="artNo" value="${artNo }">
			
			<button type="submit" style="display:none" id="gogo"></button>
			<div class="rn-05">
				<!--예매버튼-->
				<a href="#" onclick="gogo();" class="rn-bb03">예매 하기</a>
				<!--취소버튼-->
				<a href="#"  onclick="cancel();"class='rn-bb03'>취소하기</a>
			</div>
		</form>
			<script>
				function cancel(){
					alert("결제를  취소하였습니다.");
					window.close();
				}
			</script>
			
<script>
   <%-- 결제 서비스 --%> 
   function gogo(){
   var IMP = window.IMP; // 생략가능
   IMP.init('imp20522573'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
   IMP.request_pay({ 
      pg : 'inicis', // version 1.1.0부터 지원. 이건 어떤 방식으로 결제를 할것인지가 들어감
      pay_method : 'card',
      merchant_uid : 'merchant_' + new Date().getTime(), //카카오 메시지에 날짜 보냄
      name : "${art.artTitle}" , // 상품명 
      amount : "${count * 40000}" , //상품 수량
      buyer_email :  "${loginUser.email}", // email
      buyer_name : "${loginUser.name}",//User에서 구매자 이름 가져와야함
      buyer_tel : "${loginUser.phone}" ,//User에서 구매자 폰번호 가져와야함
      buyer_addr : "${loginUser.address}" ,//ProductBoard 에서 구매자 주소 가져옴
      buyer_postcode : "${loginUser.address}" , //ProductBoard 에서 구매자 주소 가져옴
      m_redirect_url : 'https://www.yourdomain.com/payments/complete'
   },function(rsp) {
      if (rsp.success) {
         var msg = '결제가 ';
         msg += '고유ID : ' + rsp.imp_uid;
         msg += '상점 거래ID : ' + rsp.merchant_uid;
         msg += '결제 금액 : ' + rsp.paid_amount;
         msg += '카드 승인번호 : ' + rsp.apply_num;
         $("#gogo").click();
         alert("결제 완료되었습니다 . <br> 마이페이지에서 확인해주세요");
      } else {
         var msg = '결제에 실패하였습니다.';
         msg += '에러내용 : ' + rsp.error_msg; // 사용자가 결제를 취소 하였습니다 . 등등 나오게 하는 메세지 
      //   location.href="#"; // 전송 위치
      		alert(msg);
      }

	  window.close();
   });
   }
   
   
   </script>

		</div>
		<!--rn-03-right-->
		</div>

</body>
</html>