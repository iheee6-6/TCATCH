<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>TCATCH</title>

<style>
ul{
	list-style: none;
}
.dcursor{
	cursor:pointer;
}
</style>
</head>
<body>
<jsp:include page="../common/menubar2.jsp"/>

	<div class="wrapper">
		<jsp:include page="leftMenu.jsp"/>
		<div class="main-panel" style="overflow:auto;">
			<div class="content" style="margin-top: 20px; display:block">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="fa fa-* fa-bookmark"></i> &nbsp;</i>예매내역
								</h4>
							</div>
							<div class="card-body" style="margin:auto">
								<div id="mypage_contain" class="mypage_contain">

									<div class="mycont">

										<div class="blu_box">
											<p class="tit">${ticket.artTitle} 
														<span style="color: red;">:: ${ticket.status}</span></p>
											<p class="poster">
												<img style="width:92%"
													src='resources/images/art/${ticket.renameFile }'
													 alt='' />
											</p>
											<table id="tblOrderInfo" class="table_sm">
												<tr>
													<th class="le">예매번호</th>
													<td><strong>${ticket.tNo }</strong></td>
													<th>예매자</th>
													<td class="ri">${ticket.userName }</td>
												</tr>
												<tr id="trPerfDateTime">
													<th class="le">관람일</th>
													<fmt:formatDate var="viewDatef" value="${ticket.viewDate }" pattern="yyyy.MM.dd : aaa hh:mm"/>
													<td colspan="3" class="ri"><strong>${viewDatef}</strong></td>
													<!-- 2020.02.09 15:00 -->
												</tr>
												<tr id="trTheater">
													<th class="le">공연장</th>
													<td colspan="3" class="ri">${ticket.address } <a
														class='dcursor' onclick='ViewTheaterMap();'><img
															src='resources/images/mypage/btn_map.gif'
															alt='약도' /></a></td>
												</tr>
												<c:if test="${ticket.artType ne 0 }">
												<tr id="trSeat">
													<th class="le">좌석
														<p>
															<a href='javascript:MySeatPopup();'><img
																src='resources/images/mypage/btn_chkseat.gif'
																alt='좌석위치보기' style='margin-left: -7px' /></a>
														</p>
													</th>
													
													<td colspan="3" class="ri">
														<div class="scroll">
														<c:forTokens items="${ticket.seat}" var="s" delims=" " varStatus="status">
															${s}
															<c:if test="${not status.last}">
																,
															</c:if>
														</c:forTokens>
														<br/><!-- S석 1층 L열 014번 -->
														</div>
													</td>
												</tr>
												</c:if>
												
												<c:if test="${ticket.status ne '환불 완료'}">
												<tr>
													<th class="le">티켓수령방법
														<p></p>
													</th>
													<td colspan="3" class="ri">
														<div id="divDeliveryNone">
														<c:choose>
														<c:when test="${ticket.receiveMethod eq 1}">
															<span class="blu">현장수령</span> <span>- 공연 당일
																티켓교부처에서 티켓을 받으시면 됩니다.</span> <span>- 예매내역서(프린트)와 신분증을
																지참해주세요.</span>
														</c:when>
														<c:otherwise>
															<span class="blu">택배</span> 
															<c:if test="${ ticket.wayBill ne 0}">
																<span>운송장 번호 : ${ticket.wayBill}</span> 
															</c:if>
															<c:if test="${ticket.wayBill eq 0 }">
																<span>배송준비중</span>
															</c:if>
														</c:otherwise>
														</c:choose>
														</div>
													</td>
												</tr>
												</c:if>
											</table>

									
											<div id="divFamily_info" class="user_info"></div>
										</div>
										<div id="divFamilyNoticeinfo" class="stxt fr"></div>
									</div>
									<div class="mycont">
										<!-- NEW 결제내역 -->
										<h2 class="tit">
											<img src="resources/images/mypage/h2_mtit07.gif"
												alt="결제내역" />
										</h2>
										<!-- A. 무통장입금이 포함된 CASE -->
										<div id="tblPV_Bank">

											<table class="table_gbox">
												<colgroup>
													<col width="13%" />
													<col width="*" />
													<col width="13%" />
													<col width="27%" />
												</colgroup>
												<tr>
													<th class="le">예매일시</th>
													<fmt:formatDate value="${ticket.tDate}" var="tDatef" pattern="yyyy.MM.dd : aaa hh:mm"/>
													
													<td class="ri">${tDatef }</td>
													<th>예매상태</th>
													<td class="ri">${ticket.status}</td>
												</tr>
												<tr>
													<th class="le">총결제금액</th>
													<td class="ri" colspan="3">
														<span class='red tit'><strong>${ticket.price }</strong>원</span><br />
													
													</td>
												</tr>
												

											</table>

										</div>
										
										
										<!-- 취소안내 -->
										<div class="mycont">
											<c:if test="${ticket.status ne '환불 완료'}">
											<h2 class="tit">
												<img src="resources/images/mypage/h2_mtit08.gif"
													alt="예매취소 안내" />
											</h2>
											<div class="gray_box02 " style="padding: 10px;">
												<h4 style="margin-top: 10px;">
												<fmt:formatDate value="${ticket.viewDate}" pattern="yyyy-MM-dd HH:mm" var="end"/>
													
													※ 취소 마감시간 :<span class='text-danger' id="endT">${endT}</span> 까지
												</h4>
												
												
											</div>
											<c:if test="${ticket.status eq '예매완료'}">		
											<ul class="gbox_notice" style="text-align: right;">
											<c:url var="tdelete" value="refund.do">
												<c:param name="tNo" value="${ ticket.tNo }"/>
											</c:url>
												<li><a class='dcursor' id='imgCancelPayNone'><img
														src='resources/images/mypage/btn_no_reserv.gif'
														alt='예매취소 신청' /></a></li>
														
											</ul>
											</c:if>
											
										</c:if>
											<div style="text-align: center;">
												<a class='dcursor' id='imgList'
													onclick='history.back();'><img
													src='resources/images/mypage/btn_reser_list.gif'
													alt='예매내역 목록' /></a>
											</div>
										</div>
									</div>
									<!-- 유의사항 -->
									<div class="mycont">
										<h2 class="tit">
											<img src="resources/images/mypage/h2_mtit09.gif"
												alt="유의사항" />
										</h2>
										<div class="gray_box03">
											<ul>
												<li>- 티켓 수령 방법 변경(현장수령 -> 배송)은 예매 완료된 건에 한하며, 배송비 결제는
													신용카드만 결제 가능합니다.(단 공연일 기준 12일 전까지 / 일부 공연 불가)</li>
												<li>- 다음과 같은 경우 PC/모바일에서는 취소 또는 부분취소가 불가하오니 고객센터로
													문의해주시기 바랍니다.<br /> &nbsp;&nbsp; 1) 티켓 배송이 완료되었거나 시작된 경우<br />
													&nbsp;&nbsp;&nbsp;&nbsp;(취소마감시간 이전에 고객센터로 반송되어야 취소 가능, 취소
													수수료는 티켓 도착일 기준으로 부과되며 배송비는 환불 불가)
												</li>
												<li>- 예매 티켓 배송은 예매완료 후 4~5일 이내(영업일 기준) 배송해드립니다. 티켓 분실 시
													재발권이 불가하오니, 보관에 주의해주시기 바랍니다.<br /> &nbsp;&nbsp;&nbsp;(일괄배송
													공연일 경우 일괄배송일 기준 4~5일(영업일 기준) 이내에 수령 가능)
												</li>
												<li>- 무통장입금 예매 취소 시 결제금액에서 수수료를 제외한 금액만큼 환불처리됩니다. 부분 취소
													시에는 취소수수료 + 잔여티켓금액 등을 제외한 <br /> &nbsp;&nbsp;&nbsp;금액만큼
													환불처리 됩니다.
												</li>
												<li>- 신용카드 예매 취소 시에는 발생되는 수수료(부분취소 시에는 취소수수료+잔여티켓금액 등)에
													대한 금액을 재 결제 후 기존 결제내역은 전체 취소됩니다.</li>
												
												<li>- 예매 취소 시점과 해당 카드사의 환불 처리 기준에 따라 환급방법과 환급일은 다소 차이가
													있을 수 있습니다.</li>
												<li>- 기타 문의사항은 [이용안내]를 참고하시거나, 고객센터(1544-6399) 또는
													[1:1문의]를 이용해주시기 바랍니다.</li>
											</ul>
										</div>
									</div>
									
									

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
		$("#cnc").addClass("active");
		
		var date = new Date('${end}');
		console.log(date.getTime()-60*60*1000);
		date.setTime(date.getTime()-60*60*1000);
		
		var endd = moment(date);
		$("#endT").text(endd.format('LLL'));
		
	
		$("#imgCancelPayNone").click(function(){
			
			if(confirm("정말 예매취소하시겠습니까?")){
				var date = new Date();
				
				var endT = $("#endT").text();
				
				if(moment(date).isBefore(endd)){
					location.href='${ tdelete }';
				}else{
					alert("취소가능일 지났습니다.");
				}
			}
		});
		
		
	});
	function MySeatPopup(){
			 window.open("seatCheck.do?seat=${ticket.seat}&artNo=${ticket.artNo}&timeNo=${ticket.timeNo}", "내 자리 확인", "width=800, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
	}  
	function ViewTheaterMap(){
		window.open("viewTheaterMap.do?address='${ticket.address }'", "극장 위치 확인", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
	}
	</script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/locale/ko.js"></script>
	
	<jsp:include page="../common/footer.jsp"/>
</body>

</html>