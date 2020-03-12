<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 부트스트랩 -->
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
<link href="resources/css/mypage/notice.css" rel="stylesheet" />
<style>
.wrapper {
	margin-top: 120px;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<div class="wrapper">
	
		<div id="NoticeRead" style="display: block;">
			<div class="noti-view-tit">
				<span class="noti-tit-tag01">티켓오픈</span>
				<p>${artTitle }</p>

			</div>

			<input type="hidden" id="hdNotiTitle"
				value="${artTitle }"> <input type="hidden"
				id="hdNotiID" value="${artNo }">
			<div class="noti-view-date">
				<span>조회수 :${count }</span>
			</div>


			<div class="noti-view-ticket">
				<div class="noti-vt-layout">
					<div class="noti-vt-left">
						<img
							src="http://tkfile.yes24.com/upload2/BoardNotice/202001/20200131/20200131-20200131-o.jpg"
							width="180" height="252">
					</div>
					<div class="noti-vt-right">
						<p class="noti-vt-tit">${artTitle } 티켓 오픈 안내</p>
						<div class="noti-vt-box">
							<div>
								
								<p class="noti" id="noti1"></p>
								<div class="noti-vt-open">
								<fmt:parseDate var="cancelDateString" value="${viewDate}"
										pattern="yyyy.MM.dd(E) aaa hh:mm" />
									<span><em>티켓오픈</em></span> <span id="title1"><%-- ${ticketingDate } --%></span>
									<!-- 2020.02.06(목) 오후 2:00 -->
								</div>
								<p></p>

								<span class="noti" id="noti2" style="display: none;">
									<div class="noti-vt-fan">
										<span></span> <span id="title2"></span>
									</div>
								</span> <span class="noti" id="noti3" style="display: none;">
									<div class="noti-vt-fan">
										<span></span> <span id="title3"></span>
									</div>
								</span>

							</div>
						</div>
						<div class="noti-vt-btns">
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModalCenter">티켓오픈 알림</button>
						</div>
					</div>
				</div>
			</div>


			

			<div class="noti-view-con">
				<!--공연개요, 할인정보, 기획사정보-->
				<div class="noti-view-coment">
					<p class="noti-view-comen-tit">공연 개요</p>
					<div class="noti-view-comen-txt">
						 &lt;시네콘서트 Ⅰ. 히사이시 조&gt; <br>티켓가: 전석 3만원 <br>
						<br>4.3(금) 20:00 &lt;한스 짐머 vs 존 윌리엄스&gt; <br>티켓가: R석
						12만원, S석 9만원, A석 7만원, B석 4만원 <br> <br>4.5(일) 19:30
						&lt;케빈 오 ＆ 슈퍼밴드 meets 오케스트라&gt; <br>티켓가: R석 9만원, S석 7만원, A석
						5만원 <br> <br>공연장소 : 롯데콘서트홀 <br>관람연령 : 만 7세 이상
						입장(미취학아동 입장불가)
					</div>
				</div>
				<div class="noti-view-coment">
					<p class="noti-view-comen-tit">공연 소개</p>
					<div class="noti-view-comen-txt">
						<p>본격적인 봄을 알리는 4월,</p>
						<p>꽃이 드리워진 석촌호수의 아름다운 전경을 한 눈에 내려다볼 수 있는 바로 이 곳, 롯데콘서트홀에서</p>
						<p>감미롭고 유쾌한 음악들로 가장 먼저 봄의 시작을 알립니다.</p>
						<p>
							<br>
						</p>
						<p>복잡한 도심의 일상에서 잠시 빠져나와</p>
						<p>힐링과 여유 가득한 봄의 바이브를 만끽하고 싶다면,</p>
						<p>3일 간 펼쳐지는 페스티벌을 통해 Blossom Your Day!</p>
						<p>
							<br>
						</p>
						<p>* &lt;시네콘서트 Ⅰ. 히사이시 조&gt;공연은 티켓오픈 된 공연으로 바로 예매가 가능하며, 할인
							내용이 일부 상이합니다.</p>
						<p>
							<br>
						</p>
						<p>［결제제어안내］</p>
						<p>본 공연은 2.4(화) ~ 2.11(화) 까지 '카드결제'만 가능하며, 무통장 입금은 2.12(수) 오전
							10시부터 가능합니다.</p>
						<p>
							<br>
						</p>
						<p>［공식예매처］</p>
						<p>본 공연은 롯데콘서트홀, 인터파크, 예스24, 하나티켓, 티켓링크, 옥션티켓, 11번가에서 예매가
							가능합니다.</p>
						<p>공식 예매처 이외의 경로로 구매하여 피해가 생긴 경우, 그에 대한 책임은 전적으로 구매 당사자에게 있으며,</p>
						<p>이와 관련하여 주최사 및 예매처는 어떠한 책임도 없음을 알려드리오니 예매 시 참고를 부탁드립니다.</p>
					</div>
				</div>
				<div class="noti-view-coment">
					<p class="noti-view-comen-tit">할인 정보</p>
					<div class="noti-view-comen-txt">
						얼리버드 10% 할인 (1인 2매 / 일반오픈 시 ~ 2.7(금)까지 예매 시) <br> <br>국가유공자
						및 유족 50% 할인 (본인 / 티켓수령 시 유공자증 혹은 유족증 확인) <br>장애인 1~3급 50% 할인
						(동반 1인 / 티켓수령 시 복지카드 확인) <br>장애인 4~6급 50% 할인 (본인 / 티켓수령 시
						복지카드 확인) <br> <br>* 할인에 해당하는 증빙자료(유공자증, 복지카드 등) 미 지참시에는
						현장에서 차액을 지불한 후 관람이 가능합니다. <br>* 시야방해석은 모든 할인에서 제외됩니다.
					</div>
				</div>
				<div class="noti-view-coment">
					<p class="noti-view-comen-tit">기획사 정보</p>
					<div class="noti-view-comen-txt">
						주최/주관 : 롯데문화재단 <br>문의 : 1544-7744
					</div>
				</div>
			</div>
			<p class="noti-vt-info">
				<span>티켓오픈 일정은 예스24 또는 기획사의 사정에 의해 사전예고 없이 변경 또는 취소 될 수 있습니다.</span>
			</p>

			<div class="noti-view-control">
				<!--<a href="#" class="noti-prev">이전글</a>-->
				<a style="cursor: pointer" onclick="jsf_notice_NoticeList();"
					class="noti-list">목록보기</a>
				<!--<a href="#" class="noti-next">다음글</a>-->
			</div>
			
	<!-- Modal -->
			<div class="modal fade" id="exampleModalCenter" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalCenterTitle">티켓오픈 알림 신청</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
						<div class="modal-notice">
						<p style="text-align:center; margin:30px;">티켓오픈 알림 신청 시 <br>티켓
						<span style="color: red;">오픈 시간 1시간 전</span>에 회원님께 이메일을 보내드립니다.</p>
						<div class="modal-email" style="border:1px solid orange; padding:30px;margin:30px;"> ${loginUser.email}</div>
						<p style="margin:30px;"> * 알림 받을 이메일 주소 변경을 원하시면, 마이페이지>회원정보관리 에서 변경하신 후 신청하시면 됩니다.</p>
						</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">신청하기</button>
						</div>
					</div>
				</div>
			</div>
			<!-- Modal // -->
			
		</div>

	</div>


	<!--공지사항 하단 공통 영역-->
	<div class="bnr-bottom-wrap">
		<div class="bnr-bottom">
			<div class="bnr-bottom-01">
				<p>예매/취소 FAQ</p>
				<span>궁금한 사항은 FAQ 를 이용해주세요. <a
					href="http://ticket.yes24.com/UserGuide/FAQ" target="_blank">바로가기&gt;</a></span>
			</div>
			<div class="bnr-bottom-02">
				<p>고객센터 이용 안내</p>
				<span>전화(1544-6399) 또는 <a
					href="http://www.yes24.com/Mall/Help/CS/Apply" target="_blank">일대일문의</a>를
					이용해주세요.
				</span>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	

</body>
</html>