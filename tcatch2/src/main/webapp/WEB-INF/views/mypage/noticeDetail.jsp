<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>

<link href="resources/css/mypage/notice.css" rel="stylesheet" />
<style>
.wrapper {
	margin-top: 170px;
}

dd ul{
	list-style:none;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar2.jsp" />
	<div class="wrapper">
	
		<div id="NoticeRead" style="display: block; ">
			<div class="noti-view-tit" style="margin-top:10px;">
				<span class="noti-tit-tag01">티켓오픈</span>
				<p>${notice.artTitle }</p>

			</div>

			<input type="hidden" id="hdNotiTitle"
				value="${notice.artTitle }">
			<div class="noti-view-date">
				
			</div>

			<div class="noti-view-ticket">
				<div class="noti-vt-layout">
					<div class="noti-vt-left">
						<img src="resources/images/art/${img.changeName }"
							width="180" height="252">
					</div>
					<div class="noti-vt-right">
						<p class="noti-vt-tit">${notice.artTitle } 티켓 오픈 안내</p>
						<div class="noti-vt-box">
							<div>
								<p class="noti" id="noti1"></p>
								<div class="noti-vt-open">
								<fmt:parseDate var="tdateString" value="${notice.ticketingDate}"
										pattern="yyyy-MM-dd" />
								<fmt:formatDate var="tdate" value="${ tdateString}"
										pattern="yyyy.MM.dd(E) aaa hh:mm" />
									<span><em>티켓오픈</em></span> <span id="title1">${tdate }</span>
									
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
						<a id="AlarmEnroll" class="noti-vt-pop" style="cursor:pointer;"><span>티켓오픈 알림</span></a>
						
						</div>
					</div>
				</div>
			</div>

			<script>
			$(function(){
				$("#AlarmEnroll").click(function(){
					var login= "${loginUser}";
					if(login==''){
						alert("로그인 후 이용가능합니다.");
						location.href="loginPage.do";
					}
					else
					$("#AlarmModal").modal();
				});
				
				
				$("#insertAlarm").click(function(){
					$("#AlarmModal").modal("hide");
					var aNo=${notice.artNo};
					 $.ajax({
					        type : "POST", 
					        url : "insertAlarm.do",
					        data : {
					        	aNo:aNo
							},
							dataType: 'text',
							success : function(data){
					            alert(data);
					        },
					        error : function(){
					            console.log("등록 실패");
					        }
					         
					    }); 
				});
				
			});
			</script>
			

			<div class="noti-view-con">
				<!--공연개요, 할인정보, 기획사정보-->
				<div class="noti-view-coment">
					<p class="noti-view-comen-tit">공연 개요</p>
					<div class="noti-view-comen-txt">
					<dl>
                        <dt>등급</dt>
							<c:if test="${ notice.age == 0}">
								<dd>전체 이용가</dd>
							</c:if>
							<c:if test="${ notice.age != 0}">
								<dd>&nbsp;만 ${ art.age } 세이상</dd>
						</c:if>
						<dt>관람시간</dt>
						<dd>&nbsp;총 ${notice.durationTime }분(인터미션 없음)</dd>
						
						<c:if test="${notice.artType ne 0}">
						<dt>좌석</dt>
						<dd><ul style="padding:0px">
						  <li>R석 <span class='rn-red'>80,000</span>원</li>
                          <li>S석 <span class='rn-red'>60,000</span>원</li>
                          <li>조석 <span class='rn-red'>1,890,000</span>원</li>
						</ul>
						</dd>
							<dd><p class='rn-product-price2'>할인 적용 시 최저가 
                                <span class='rn-red'>48,000</span>원 ~ 최고가 
                                <span class='rn-red'>88,000</span>원
                             </p></dd>
						</dl>
						</c:if>
					</div>
				</div>
				
				<div class="noti-view-coment">
					<p class="noti-view-comen-tit">기획사 정보</p>
					<div class="noti-view-comen-txt">
						주최/주관 : ${notice.companyName } <br>문의 : 1544-7744
					</div>
				</div>
			</div>
			<p class="noti-vt-info">
				<span>티켓오픈 일정은 TCATCH 또는 기획사의 사정에 의해 사전예고 없이 변경 또는 취소 될 수 있습니다.</span>
			</p>

			<div class="noti-view-control" style="margin-bottom:20px;">
				<a style="cursor: pointer" onclick="history.back();"
					class="noti-list">목록보기</a>
			</div>
			
	<!-- Modal -->
			<div class="modal fade" id="AlarmModal" tabindex="-1"
				role="dialog" aria-labelledby="AlarmModalTitle"
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
						<div class="modal-email" style="border:1px solid orange; padding:30px;margin:30px; font-size: 20px;
   								 font-weight:bold;text-align: center;background: rgb(254,216,177);"> ${loginUser.email}</div>
						<p style="margin:30px;"> * 알림 받을 이메일 주소 변경을 원하시면, 마이페이지>회원정보관리 에서 변경하신 후 신청하시면 됩니다.</p>
						</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary" id="insertAlarm">신청하기</button>
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
				<span>궁금한 사항은 FAQ 를 이용해주세요.</span>
			</div>
			<div class="bnr-bottom-02">
				<p>고객센터 이용 안내</p>
				<span>전화(1544-6399) 또는 일대일문의를
					이용해주세요.
				</span>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	
<!-- 부트스트랩 -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
</body>
</html>