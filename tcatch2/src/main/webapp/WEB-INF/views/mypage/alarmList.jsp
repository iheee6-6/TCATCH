<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCATCH</title>


</head>
<body class="">
	<jsp:include page="../common/menubar2.jsp" />

	<div class="wrapper">
		<jsp:include page="leftMenu.jsp" />

		<div class="main-panel">
			<div class="content" style="margin-top: 20px;">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="fa fa-* fa-bookmark"></i> &nbsp;나의 맞춤 설정
								</h4>

							</div>
							<form action="deleteAlarm.do" method="post" id="checkForm">
								<div class="card-body">
									<div class="sms_alram"
										style="height: 180px; background-color: ghostwhite; border: 1px solid black">
										<span>* 티켓 오픈 소식, 관심 공연 등의 정보를 받을 EMAIL 주소를 확인해주세요. </span> <br>
										<br> <em>수신 EMAIL : <span>${loginUser.email }</span>
										</em>
										<ul>
											<li>- 맞춤 알람 서비스는 회원정보상의 수신동의여부와 상관없이 맞춤 알람 설정에 따라
												발송됩니다.</li>
											<li>- SMS 받을 휴대전화번호 변경을 원하는 회원님은 <a
												href="memberUpdateView.do" title="회원정보 변경으로 이동"><span
													class="blu">[회원정보를 변경]</span></a> 해주세요.
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
											<c:choose>
												<c:when test="${empty alarmList }">
													<tr>
														<td colspan="4" style="text-align:center">알림 설정한 공연이 없습니다.</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="a" items="${alarmList }">
														<tr>
															<td><input class="chkAlarm" name="chkAlarm"
																type="checkbox" value="${a.artNo }"></td>
															<td>${a.artTitle }</td>
													
															<%-- <fmt:parseDate var="ticketString" value="${a.ticketingDate}" pattern="yyyy-MM-dd " />
				--%>											<fmt:formatDate value="${ a.ticketingDate}" var="tdate" pattern="yyyy.MM.dd : aaa hh:mm"/>
															 <td>${tdate}</td>
															<!--  <td>2019.02.12 : 오후 9시</td>-->
															<%-- <fmt:parseDate var="alarmString" value="${a.alarmDate}" pattern="yyyy-MM-dd" />
														--%>	<fmt:formatDate value="${ a.alarmDate}" var="adate" pattern="yyyy.MM.dd : aaa hh:mm"/>
															 
															<td>${adate}</td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
								</div>
								<div class="text-danger" style="margin-left: 30px;">
									※ 티켓오픈 알림 받을 공연을 추가하거나 티켓 오픈 예정 공연 확인은 공지사항을 확인해주세요

									<c:url var="noticeView" value="noticeView.do" />

									<div style="float: right; margin-right: 50px;">
										<button type="button" class="btn btn-sm"
											onclick="location.href='${ noticeView }'">공지사항 확인</button>
										<button type="button" class="btn btn-sm" id="allCheck">전체
											선택</button>
										<button type="button"  class="btn btn-sm" id="deleteCh">선택 삭제</button>
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
	<script>
		$(function() {
			$("#alarmS").addClass("active");

		});

		$("#allCheck").click(function() {
			if ($(this).text() == "전체 선택") {
				$('.chkAlarm').prop('checked', true);
				$(this).text("전체 해제");
			} else {
				$('.chkAlarm').prop('checked', false);
				$(this).text("전체 선택");
			}

		});

		$("#deleteCh").click(function() {
			if($(".chkAlarm:checked").val()){
			if (confirm("정말 삭제하시겠습니까?")) {
				$("#checkForm").submit();
			}
			}
		});
		
		function test(){
			var id = id.get
		}
	</script>

	<jsp:include page="../common/footer.jsp" />
</body>

</html>