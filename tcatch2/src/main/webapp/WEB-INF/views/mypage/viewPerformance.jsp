<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCATCH</title>


<style>
.cardbody div {
	display: inline-block;
	text-align: center;
}

body {
	text-align: center;
	margin: 0 auto;
}

#Progress_Loading {
	position: absolute;
	left: 50%;
	top: 50%;
	background: #ffffff;
}

.imgbtn {
	cursor: pointer;
}
.ui-datepicker { width: 17em; padding: .2em .2em 0; display: none; font-size: 20px;}

</style>
<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


</head>
<body class="">

<jsp:include page="../common/menubar.jsp" />

	<div class="wrapper">

		<jsp:include page="leftMenu.jsp" />
		<div class="main-panel">
			<div class="content" style="margin-top: 20px;">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="fa fa-* fa-bookmark"></i> &nbsp; 나의 관람 공연
								</h4>
								&nbsp;
								<p class="card-category" style="margin-left: 200px;">
									<strong>${loginUser.name }</strong>님의 관람 공연은 총 <em>${fn:length(viewPerformanceList) }</em>건
									입니다.
								</p>
							</div>
							<div class="card-body">
								<div class="mypage_contain" style="margin: 4px;">
									<form action="selectViewP.do" method="post">
										<div class="date_list" style="border: 1px solid gray;">
											<ul style="list-style: none">
											
												<li><img
													src="http://tkfile.yes24.com/img/mypage/th_02.gif"
													alt="기간별"> <input type="text" name="date1" id="date1"
													size="11"/> <input type="button" value="달력"
													onclick="$('#date1').datepicker('show');" /> ~ <input
													type="text" name="date2" id="date2" size="11" /> <input
													type="button" value="달력"
													onclick="$('#date2').datepicker('show');" /> <!-- <input id="txtTo" name="txtTo"
												type="text" class="date w70 hasDatepicker"
												value="2020-02-03"
												style="width: 90px; z-index: 999; position: relative;"
												autocomplete="off"><img
												class="ui-datepicker-trigger"
												src="http://tkfile.yes24.com/img/mypage/btn_cal.gif"
												alt="날짜를 선택하세요. title="날짜를선택하세요."> --></li>
												<li class="sec"><img
													src="http://tkfile.yes24.com/img/mypage/th_03.gif"
													alt="장르별"> <select name="ptype" id="ptype">
														<option value="-1">장르선택</option>
														<option value="1">콘서트</option>
														<option value="2">뮤지컬</option>
														<option value="3">연극</option>
														<option value="0">전시</option>
												</select> <img src="http://tkfile.yes24.com/img/mypage/btn_srch.gif"
													class="imgbtn" alt="조회" onclick="searchDate();"></li>
												<li><img
													src="http://tkfile.yes24.com/img/mypage/th_04.gif"
													alt="공연명"> <input id="pnameSearch"
													name="txtViewPerformanceSearch" type="text"
													style="width: 230px;" placeholder="공연명을 입력해주세요."
													autocomplete="off"> <img class="imgbtn"
													src="http://tkfile.yes24.com/img/mypage/btn_srch.gif"
													alt="조회" onclick="searchDate();">
											</ul>
										</div>
									</form>
									<!-- 로딩바 -->
									<!-- <div id="loading" style="margin:auto;">
										<img src="resources/images/mypage/loadingbar.gif" />
									</div> -->
									<div id="divResult">
										<div id="loading"></div>
										<c:choose>
											<c:when test="${empty viewPerformanceList }">
												<div
													style="width: 700px; height: 300px; padding: 100px; text-align: center; border-top: 1px solid black; border-bottom: 1px solid black">
													관람내역이 없습니다.</div>
											</c:when>
											<c:otherwise>
												<%
													int index = 1;
												%>
												<c:forEach var="v" items="${viewPerformanceList }">

													<div class="memo end">
														<h3 style="margin: 0">
															<div class="number">
																<span><%=index++%></span>
															</div>
															<strong>${v.artTitle }</strong>
														</h3>
														<p class="poster"
															style="margin-right: 50px; margin-left: 30px; padding: 0px;">
															<img
																src="http://tkfile.yes24.com/upload2/PerfBlog/201408/20140807/20140807-18681_1.jpg"
																width="141" height="174" alt="Ripple Effect the Concert">
														</p>

														<ul>
															<li><em>예매번호</em><span class="bold">${v.tNo }</span></li>
															<li><em>장르</em><span>${v.artType}</span></li>
															<!-- 2014.08.16 06:00 -->
															<li><em>관람일시</em><span>${v.viewDate }</span></li>
															<li><em>공연장</em><span>${v.address }</span></li>
															<li><em>좌석(<span class="red">${v.seat }</span>)
															</em><span> </span></li>
														</ul>
														<br>
														<div>
															<c:url var="pDetail" value="musicalDetail.do">
																<c:param name="artNo" value="${v.artNo }" />
															</c:url>
															<button class="btn btn-sm"
																onclick="location.href='${pDetail}'">공연정보</button>
															<button class="btn btn-sm"
																onclick="location.href='${pDetail}'">관람후기 작성</button>
														</div>
													</div>
												</c:forEach>
											</c:otherwise>
										</c:choose>
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
		$(function() {
			$("#viewPer").addClass("active");

			$("#date1").datepicker({
				onSelect : function(dateText, inst) {
					console.log(dateText);
					console.log(inst);
				}
			});

			$("#date2").datepicker({
				onSelect : function(dateText, inst) {
					console.log(dateText);
					console.log(inst);
				}
			});
			
			 //From의 초기값을 오늘 날짜로 설정
            $('#date1').datepicker('setDate','-3Y'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
            //To의 초기값을 내일로 설정
            $('#date2').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
        });
    </script>
	<!-- <script type="text/javascript">
 
		$(document).ready(function(){
		   $('#loading').hide(); //첫 시작시 로딩바를 숨겨준다.
		})
		.ajaxStart(function(){
			$('#loading').show(); //ajax실행시 로딩바를 보여준다.
		})
		.ajaxStop(function(){
			$('#loading').hide(); //ajax종료시 로딩바를 숨겨준다.
		});
		 
		function searchDate(){
			var sd = $("#date1").val();
			var ed = $("#date2").val();
			var pType = $("#ptype").val();
			var pName= $("#pnameSearch").val();
			
			var content = $('div.mypage_contain #divResult');
			
		    $.ajax({
		        type : "POST", 
		        url : "searchView.do",
		        data : {
		        	sdate : sdate,
		        	edate : edate,
		        	ptype : ptype,
		        	pname : pname
				},error : function(data){
		            content.html(data);
		        },
		        success : function(){
		            console.log("조회 실패");
		        }
		         
		    }); 
		} 
 
	</script> -->
	<jsp:include page="../common/footer.jsp" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="resources/js/jquery-ui-1.12.1/datepicker-ko.js"></script>
</body>

</html>