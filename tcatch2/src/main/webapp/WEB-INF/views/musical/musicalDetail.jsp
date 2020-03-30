<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html> 
<html lang="ko">
 <head>
  <title>TACTCH</title>
<link rel="shortcut icon" type="image/x-icon" href='${contextPath}/resources/images/common/logo.png'>
	<!-- Detail Css -->
	<!-- reset.css -->
	<link rel='stylesheet' type='text/css' href="${ contextPath }/resources/css/product/detail.css" />
	<!-- sub.css -->
	<link rel='stylesheet' type='text/css' href="${ contextPath }/resources/css/product/detail2.css" />

  
  

	<!-- 지도 API -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7ca88425a9b2838d03cea5da7be46498&libraries=services"></script>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7ca88425a9b2838d03cea5da7be46498"></script>


  <style>

  	
a{
	cursor:pointer;
	
}
  	/*댓글*/
 #replyTable td {
	text-align: center;
}

.btnwrap {
	text-align: right;
}

.btn {
	width: 120px;
	height: 50px;
}

.panel-shadow {
	box-shadow: rgba(0, 0, 0, 0.3) 7px 7px 7px;
}

.panel-white {
	border: 1px solid #dddddd;
}

.panel-white  .panel-heading {
	color: #333;
	background-color: #fff;
	border-color: #ddd;
}

.panel-white  .panel-footer {
	background-color: #fff;
	border-color: #ddd;
}

.post .post-heading {
	height: 95px;
	padding: 20px 15px;
}

.post .post-heading .avatar {
	width: 60px;
	height: 60px;
	display: inline-block;
	margin-right: 15px;
}

.post .post-heading .meta .title {
	margin-bottom: 0;
}

.post .post-heading .meta .title a {
	color: black;
}

.post .post-heading .meta .title a:hover {
	color: #aaaaaa;
}

.post .post-heading .meta .time {
	margin-top: 8px;
	color: #999;
}

.post .post-image .image {
	width: 100%;
	height: auto;
}

.post .post-description {
	padding: 15px;
}

.post .post-description p {
	font-size: 14px;
}

.post .post-description .stats {
	margin-top: 20px;
}

.post .post-description .stats .stat-item {
	display: inline-block;
	margin-right: 15px;
}

.post .post-description .stats .stat-item .icon {
	margin-right: 8px;
}

.post .post-footer {
	border-top: 1px solid #ddd;
	padding: 15px;
}

.post .post-footer .input-group-addon a {
	color: #454545;
}

.post .post-footer .comments-list {
	padding: 0;
	margin-top: 20px;
	list-style-type: none;
}

.post .post-footer .comments-list .comment {
	display: block;
	width: 100%;
	margin: 20px 0;
}

.post .post-footer .comments-list .comment .avatar {
	width: 35px;
	height: 35px;
}

.post .post-footer .comments-list .comment .comment-heading {
	display: inline-block;
	width: 100%;
}

.post .post-footer .comments-list .comment .comment-heading .user {
	font-size: 14px;
	font-weight: bold;
	display: inline-block;
	margin-top: 0;
	margin-right: 10px;
}

.post .post-footer .comments-list .comment .comment-heading .time {
	font-size: 12px;
	color: #aaa;
	margin-top: 0;
	display: inline-block;
}

.post .post-footer .comments-list .comment .comment-body {
	margin-left: 50px;
}

.post .post-footer .comments-list .comment>.comments-list {
	margin-left: 50px;
}

#rSubmit {
	background: url("${contextPath}/resources/images/common/edit.png")
		no-repeat;
	width: 40px;
	height: 40px;
	border: none;
}

.rcontent {
	width: 100%;
}

.time {
	margin-left:700px;
}

.replyArea {
	width:100%;
	display: inline;
}



.rId {
	width: 10%;
	height: 10%;
	border: 0;
	outline: 0;
	background: white;
	color: red;
}
.starR{
  background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
  background-size: auto 100%;
  width: 20px;
  height: 20px;
  display: inline-block;
  text-indent: -9999px;
  cursor: pointer;
  margin-top:5px;
}
.starRev{
	margin-left:20px;
	width:200px;
	float:left;
}
.starArea{
	width:100%;
}
.form-control{
float:left;
}

#ss{
	margin-left:100px;
	padding-top : 5px;
}

#ss a{
text-decoration: none; 
 color: gray; 

 } 
 #ss a.onn{ 
 color: red; 
 }
 .starR.onn{background-position:0 0;}
 
  </style> 
 </head>
 <body>

<jsp:include page="../common/menubar2.jsp"/>
<br><br><br><br>
 


<div class="renew-wrap">
	<div class="renew-content">
		<div class="rn-02"><!--제목-->
			<p class="rn-big-title">[제목] ${art.artTitle }</p>
			<div class="rn-product-short-data">
				<p><span class="ps-date">${art.startDate } ~ ${art.endDate }</span><span class="ps-location"> ${art.address } </span></p>	
			</div>			
        </div><!--rn-02-->  
	</div>	
</div>



<div class="movie-pop-wrap">
 <!-- 뭔지 모르지만 공간 차지  -->
</div>

<div class="renew-wrap rw2">
    <div
     class="renew-content">
		<div class="rn-03"><!--상단-->
			<div class="rn-03-left"><!--포스터, 지역, 동영상-->
				<div class="rn-product-imgbox">
					<img class='lazyload' src="${ contextPath }/resources/images/art/${ img[0].changeName }"/><!-- 이미지 -->
				</div>

				<div class="rn-product-social">
				
				<c:if test="${ empty loginUser }">
					<a href="javascript:;" class="rn-product-good">
						<img src="${ contextPath }/resources/images/musical/빈하트.png" alt=""/><!--좋아요 안누른 하트-->
						<span class="rn-pdg-txt1">로그인 하셔야 이용 가능합니다 .</span><!-- 안누른 찜 -->
					</a>
				</c:if>
				<c:if test="${ !empty loginUser }">
					<a  class="rn-product-good" id="jjim">
                        <img src="${ contextPath }/resources/images/musical/빈하트.png" alt="" id="h1" /><!--좋아요 안누른 하트-->
                        <img src="${ contextPath }/resources/images/musical/꽉찬하트.png" alt="" id="h2"/><!--좋아요 누른 하트-->
                       		 <span id="h22" class="rn-pdg-txt2">Like : ${ like }</span>
					</a>
					<input type="hidden" id="flag" value="">					
				</c:if>

				
					<script>				
						$(function(){
							// 초기 페이지 로딩 시 댓글 불러오기
							JjimSelect();	

							
							// 댓글 등록 ajax
							$("#jjim").on("click", function(){
								var artNo = ${art.artNo};
								var no = ${loginUser.no};
								var flag = $("#flag").val();
								
								$.ajax({
									url:"jjim.do",
									data:{artNo:artNo , alarmNo:no , flag:flag},
									type:"post",
									success:function(data){
										if(data =="InSuccess" ){
											JjimSelect();
											alert("찜 성공");
										}
										if(data =="DeSuccess"){
											JjimSelect();
											alert("찜 취소");
										}
										if(data == "Infail"){
											alert("찜 실패");
										}
										if(data == "Defail"){
											alert("찜 취소 실패");
										}
									}
								});
							});
						});				
						
						// 찜 불러오는 ajax 함수
						function JjimSelect(){
							var artNo = ${art.artNo};
							var no = ${loginUser.no};
							
							$.ajax({
								url:"selectJjim.do",
								data:{artNo:artNo , no:no},
								dataType:"json",
								success:function(data){
									if(data==0){//찜 목록이 비어 있을때 
										$("#h1").attr("src" , "${ contextPath }/resources/images/musical/빈하트.png");
										$('#flag').val(0);									
									}else{ // 찜 목록이 있을때
										$("#h1").attr("src" , "${ contextPath }/resources/images/musical/꽉찬하트.png");
										$('#flag').val(1);										
									}
								},
								error:function(e){
									console.log(e);
								}
							});
							
						}
					</script>					
				</div>				
            </div><!--rn-03-left-->
         <%--    <c:if test="${art.rating eq 0 }">
            	ㅎㅇ
            </c:if>
             --%>
			<div class="rn-03-right"><!--상품정보-->
				<div class="rn-product-area1"><!--등급, 관람시간, 출연, 가격, 혜택-->
					<dl>
						<dt>등급</dt>
						<c:if test="${ art.age == 0}">
							<dd>전체 이용가</dd>
						</c:if>
						<c:if test="${ art.age != 0}">
						<dd>&nbsp;만
							${ art.age }	
						세이상</dd>
						</c:if>
						<c:if test="${ art.artType != 0 }">
						<dt>관람시간</dt>
						<dd>&nbsp;총 ${art.durationTime }분(인터미션 없음)</dd>
						<dt>출연</dt>
						<dd>&nbsp;${aT[0].actor}     
						<dt id="dtPrice">좌석</dt>
						<dd>
						 <span class='rn-red'>${ yS }</span>/${allS}
						</dd>
						</c:if>
						<c:if test="${ art.artType == 0 }">
							<dt>관람시간</dt>
							<dd>&nbsp;평균 ${art.durationTime }분</dd>
							<dt>출연</dt>
							<dd>&nbsp;${aT[0].actor}   	
						</c:if>
						
						
						<dt id="dtPrice">가격</dt>
						<dd id="divPrice" class="rn-product-price">
							<ul class="rn-product-price1 scroll-color">
								<c:if test="${ art.artType != 0 }">
                                <li>좌석 <span class='rn-red'>${ sList[0].price}</span>원</li>
								</c:if>
								<c:if test="${ art.artType == 0 }">
									<li>입장권 <span class='rn-red'>${ sList[0].price}</span>원</li>
								</c:if>
							</ul>
							<p class='rn-product-price2'>할인 적용 시 최저가 
                                <span class='rn-red'>${ sList[0].price - 7000}</span>원 ~ 최고가 
                                <span class='rn-red'>${ sList[0].price - 1000}</span>원
                            </p>
						</dd>
					</dl>					
				</div>
                <!--포인트-->
				
				<div class="rn-product-area3"><!--공연시간안내, 배송정보-->
					<dl>
						<dt>공연시간 안내</dt>
						<dd>
2020년 1월 1일부터 관람시간이 아래와 같이 변경됩니다.<br>
<br>
월,화,수,목,금 (평일) : 오전 10:00~오후 7:00<br>
토,일,공휴일(주말 및 공휴일) : 오전 10:00 ~ 오후 8:00<br>
<br>
*마감 한 시간 전까지 입장가능<br>
*월요일 특별개관</dd>
						<dt>배송정보</dt>
						<c:if test="${ art.artType == 0 }">
							<dd>현장 수령 <span class='rn-red'>가능</span></dd>
	                        <dd>택배 배송 <span class='rn-red'>불가능</span></dd>			
						</c:if>
						<c:if test="${ art.artType != 0 }">
	                        <dd>현장 수령 <span class='rn-red'>가능</span></dd>
	                        <dd>택배 배송 <span class='rn-red'>가능</span></dd>			
						</c:if>
					</dl>
				</div>

                <!--자동주문방지적용-->
                
		<div class="rn-05"><!--예매버튼-->    
		<c:url var="buy" value="buy.do">
							<c:param name="artNo" value="${ art.artNo }"/>
							<c:param name="timeNo" value="${ aT[0].dateCount }"/>
		</c:url>     
		
		<c:if test="${ !empty loginUser}">
            <a href="#" onclick="window.open('${buy}', '', 'width=715px, height=650px');" style="text-decoration:none;" class='rn-bb03'>예매하기</a>            
		</c:if>
		<c:if test="${ empty loginUser}">
			<a href="loginPage.do" class="rn-bb03"><span>로그인</span></a>
		</c:if>
		</div><!--rn-05-->
			</div><!--rn-03-right-->  
		</div><!--rn-03-->


        <div class="rn-06" id="divMiddleBanner"></div><!--중간띠배너-->
	    

		<div class="rn-07"  style="text-align: center;" ><!--하단탭5개버튼-->
			<a href="#divMiddleBanner" class="on" style="text-decoration:none;"><span>상세정보</span></a>
		</div><!--rn-07-->
		<div class="rn-tab-boxes">
			<div class="rn-tab-area rn-08 on" id="rn-tab01" style="display:block;"><!--탭1 상세정보-->
				<div class="rn-0801"><!--유의사항-->
					<p class="rn08-tit" id="titPerfNotice">유의사항</p>
                    <div><p><img class="txc-image" src="${ contextPath }/resources/images/musical/유의사항.PNG"/></p></div>
				</div><!--rn-0801-->
				<div class="rn-0803"><!--공연정보-->
					<p class="rn08-tit">공연정보</p>
					<div class="rn08-txt" id="divPerfContent">
                        <div><p><img class='lazyload' src="${ contextPath }/resources/images/art/${ img[1].changeName }"/><!-- 이미지 --></p></div>
					</div>
				</div><!--rn-0803-->
				<div class="rn-0804"><!--캐스팅일정-->
					<div class="rn08-tbl rn-0803-tbl">
						<table>
							<caption></caption>
							<colgroup>
								<col width="18.5%" />
								<col width="*" /> 
							</colgroup>
							<tbody>
								<tr><th scope="row" class="rn08-tbl-tit">기획사 정보</th>
								<td id="divPerfOrganization">${art.companyInfo } </td>
                                </tr>
							</tbody>
						</table>
					</div>
                </div><!--rn-0804-->
				<div class="rn-0805"><!--상품정보제공 고시-->
					<p class="rn08-tit">상품정보제공 고시</p>
					<div class="rn08-txt">
						<div class="rn08-tbl rn08-tbl-plus">
							<table>
								<caption></caption>
								<colgroup>
									<col width="18.5%" />
									<col width="31.5%" />
									<col width="18.5%" />
									<col width="31.5%" />
								</colgroup>
								<tbody>
									<tr>
                                        <th scope="row" class="rn08-tbl-tit2">주최/기획</th>
                                        <td>${art.companyName } </td>
                                        <th scope="row" class="rn08-tbl-tit2">소비자상담</th>
                                        <td>${art.companyPhone }</td>
                                    </tr>
									<tr>
                                        <th scope="row" class="rn08-tbl-tit2">주연</th>
                                        <td>${aT[0].actor}</td>           
                                        <th scope="row" class="rn08-tbl-tit2">관람등급</th>
                                        <td>
                                        <c:if test="${ art.age == 0}">
                                        	전체 이용가
                                        </c:if>
                                        <c:if test="${ art.age !=0 }">
											만  ${ art.age } 세이상 
										</c:if>
										</td>
                                    </tr>
									<tr>
                                        <th scope="row" class="rn08-tbl-tit2">공연시간</th>
                                        <td> ${art.durationTime }분</td>
                                        <th scope="row" class="rn08-tbl-tit2">공연장소</th>
                                        <td> ${art.address }</td>
                                    </tr>
									<tr><th scope="row"class="rn08-tbl-tit2">취소/환불방법</th><td colspan="3">
										<div class="rn08-detail-box">
											<p>
												취소 일자에 따라 아래와 같이 취소수수료가 부과됩니다. 예매일보다 관람일 기준이 우선 적용되오니 유의해주시기 바랍니다.<br />
												단, 예매 후 7일 이내라도 취소시점이 공연일로부터 10일 이내라면 그에 해당하는 취소수수료가 부과됩니다.<br />
												(단, 상품에 따라 취소 정책이 달라질 수 있고, 각 공연이 공지하는 취소 정책이 우선 적용되므로, 예매 시 참고하시기 바랍니다.)
											</p>
											<div class="rn08-detail-tbl">
												<table>
													<caption></caption>
													<colgroup>
														<col width="50%" />
														<col width="50%" />
													</colgroup>
													<tbody>
														<tr><th scope="col">취소일</th><th scope="col">취소수수료</th></tr>
														<tr><td>예매 후 7일 이내</td><td>없음</td></tr>
														<tr><td>예매 후 8일 ~ 관람일 10일 전까지</td><td><span class="rn-red" id="cancelFeeGenre">장당 4,000원</span>(단, 티켓 금액의 10% 이내)</td></tr>
														<tr><td>관람일 9일 전 ~ 관람일 7일 전까지</td><td>티켓 금액의 10%</td></tr>
														<tr><td>관람일 6일 전 ~ 관람일 3일 전까지</td><td>티켓 금액의 20%</td></tr>
														<tr><td>관람일 2일 전 ~ 취소마감일시까지</td><td>티켓 금액의 30%</td></tr>
													</tbody>
												</table>
											</div>						
											<p>
												예매수수료는 예매 당일 밤 12시 이전 취소 시에만 환불되며, 그 이후 기간에는 환불되지 않습니다.<br />
												취소는 MY공연>예매확인/취소 에서 직접 취소 또는 고객센터(010-4927-0935)를 통해 취소 가능합니다.<br />
												티켓이 배송된 후에는 PC/모바일 취소가 불가, 취소마감시간 이전에 고객센터로 티켓이 반송되어야 취소 가능합니다.<br />
												(취소수수료는 티켓 도착일 기준으로 부과되며, 배송비는 환불되지 않습니다.)<br />
												각 상품별로 취소 정책이 다르게 적용될 수 있으니, 각 상품 안내 사항을 확인해주시기 바랍니다. 
											</p>
										</div>
									</td></tr>
								</tbody>
							</table>
						</div>
					</div>					
                </div><!--상품정보제공 고시-->
                

				<div class="rn-0806">
				
					<br><br><br>
                    <!-- 자도 부분 -->
                    <img src="${ contextPath }/resources/images/musical/쥐도.png" alt=""/>
                    <div style="text-align:center; margin:auto">
                   	  ${art.address} 오시는길
                    </div>
					<br><br><br>                 
                    <!--지도 부분-->
						<div id="map" style="width:1000px;height:600px; z-index:0; margin:auto" ></div>
							   <script>
								var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								    mapOption = {
								        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
								        level: 3 // 지도의 확대 레벨
								    };  
								
								// 지도를 생성합니다    
								var map = new kakao.maps.Map(mapContainer, mapOption); 
								
								// 주소-좌표 변환 객체를 생성합니다
								var geocoder = new kakao.maps.services.Geocoder();
								
								// 주소로 좌표를 검색합니다
								geocoder.addressSearch("${art.address}", function(result, status) {
								
								    // 정상적으로 검색이 완료됐으면 
								     if (status === kakao.maps.services.Status.OK) {
								
								        var coords = new kakao.maps.LatLng(result[0].y, result[0].x),
								           content = '<div style="padding:5px; width:400px;"><a href="https://map.kakao.com/link/search/${art.address}" style="color:blue" text-decoration="none" target="_blank">${art.artTitle}</a></div>';
								
								        // 결과값으로 받은 위치를 마커로 표시합니다
								        var marker = new kakao.maps.Marker({
								            map: map,
								            position: coords
								        });
								
								        // 인포윈도우로 장소에 대한 설명을 표시합니다
								        var infowindow = new kakao.maps.InfoWindow({
								            position : coords,
								            content : content
								        });
								        infowindow.open(map, marker);
								
								        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								        map.setCenter(coords);
								    } 
								});    
								</script>
                
                
                
                <br><br><br><br>
              	 댓글
              
                </div>
	</div>
              		<div class="panel panel-white post panel-shadow">
			<table id="replyTable">
				<thead>
					<tr>
						<td colspan="4"><b id="rCount"></b></td>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<input type="hidden" id="id" value="${loginUser.id }">
			<div class="post-footer">
					<div class="starArea">
						<input class="form-control" type="text" value="별점등록"
							readonly style="width: 90px; text-align: center;">
							
						<p id="ss"> <!-- 부모 --> 
							<a href="#" value="1">★</a> <!-- 자식들--> 
							<a href="#" value="2">★</a> 
							<a href="#" value="3">★</a>
							<a href="#" value="4">★</a> 
							<a href="#" value="5">★</a> 
						<p>
					</div>
				
				<div class="input-group">
				
					<div>
						<input class="form-control" type="text" value="${loginUser.name }"
							readonly style="width: 90px; text-align: center;">
					</div>

					<input class="form-control" id="rContent"
						placeholder="Add a comment" type="text"> 
						
					
					<span class="input-group-addon">
						<button id="rSubmit"></button>
					</span>
				</div>
				<ul class="comments-list">
					<li class="comment">
						<div class="comment-body" id="body">

							<div class="comment-heading" id="head">
								<div class="replyArea">
									<span class="user"></span> 
										<span class="star"></span>
										<h5 class="time"></h5><!-- 작성시간 -->
										<button type="button" class="rId" id="tt"  name="rId"></button>
								</div>
				
								<div class="replyArea2">
									<h6 class="rcontent">
										<!-- 작성내용 -->
									</h6>

								</div>
							</div>

						</div>
					</li>
				</ul>

			</div>
		</div>	 
              
              	 
              	 
              	 
              	 <!--  댓글    -->
              	 
      <script>
		var id = $("#id").val();
		console.log("id" + id);

		// 초기 페이지 로딩 시 댓글 불러오기
		getReplyList();

		$("#ss a").click(function(){ 
			$(this).parent().children("a").removeClass("onn"); 
			$(this).addClass("onn").prevAll("a").addClass("onn"); 
			console.log($(this).attr("value"));
			return false;
			});
		
		// 댓글 등록 ajax
		$("#rSubmit").on("click", function() {
			
			// 필요한 값을 가지고 db에 insert한 뒤
			// 등록 성공 시 댓글리스트 다시 불러오기
			// 요청 url : addReply.do
			var rContent = $("#rContent").val();
			var star = document.getElementsByClassName("onn").length;
			console.log("document.getElementsByClassName(on).length;" +  star)
			var refAno = ${art.artNo};
			console.log("star : " + star);

			$.ajax({
				url : "addReply.do",
				data : {
					star : star,
					rContent : rContent,
					refAno : refAno
				},
				type : "post",
				success : function(data) {
					if (data == "success") {
						getReplyList(); // 등록 성공시 다시 댓글리스트 불러오기
						$("#rContent").val("");
					}
				}
			});
		});

		function getReplyList() {
			var artNo = ${art.artNo};
			console.log(artNo);
			
					$.ajax({
						url : "rArtList.do",
						data : {artNo : artNo},
						dataType : "json",
						success : function(data) {
							console.log(data);

							$tableBody = $(".comments-list");
							$tableBody.html("");

							$("#rCount").text("댓글(" + data.length + ")");

							if (data.length > 0) {
								for ( var i in data) {
									var rId = data[i].rId;
									switch(data[i].star){
									case 1: data[i].star="★☆☆☆☆"
										break;
									case 2: data[i].star="★★☆☆☆"
										break;
									case 3: data[i].star="★★★☆☆"
										break;
									case 4: data[i].star="★★★★☆"
										break;
									case 5: data[i].star="★★★★★"
										break;
									}
									var $li = $("<li class='comment'>");
									var $body = $("<div class='comment-body'>");
									var $heading = $("<div class='comment-heading'>");
									var $reply = $("<div class='replyArea'>");
									var $reply2 = $("<div class='replyArea2'>");
									var $user = $("<span class='user'>").text(
											data[i].rWriter);
									var $p = $("<h6 class='rcontent'>").text(" ⇒ " + 
											data[i].rContent);
									var $time = $("<h5 class='time'>").text(
											data[i].rCreateDate);
									var $star = $("<span class='star'>").text(
											data[i].star).css({"color":"red"});
									var $del = $(
											"<button class='rId' id='tt' value=" + data[i].rId + ">")
											.text("x");

									$tableBody.append($li);
									$li.append($body);
									$body.append($heading);
									$reply.append($user);
									$reply.append($star);
									$reply.append($time);
									if (data[i].rWriter == id) {
										$reply.append($del);
									}

									$reply2.append($p);
									$heading.append($reply);
									$heading.append($reply2);

								}
							} else {
								// 댓글이 등록되지 않았을 때
								var $tr = $("<tr>");
								var $rContent = $("<td colspan='2'>").text(
										"등록 된 댓글이 없습니다.");
								$tr.append($rContent);
								$tableBody.append($tr);
							}

						},
						error : function(e) {
							console.log(e);
						}
					});

		}
	</script>
	<script>
		$(document).on("click","#tt",function(){
			console.log("gd");
			var rId = this.value;
			
			if(confirm("정말 삭제하시겠습니까?")){
			$.ajax({
				url : "rdelete.do",
				data : {rId : rId},
				success : function(data) {
					console.log(data);
					getReplyList();
				}
				
			});
			}else{
				return false;
			}
		});
		
		

	</script>
                <br><br><br><br><br><br><br><br>
    </div>
    </div>	
</div>

<jsp:include page="../common/footer.jsp" />
</body>
</html>



