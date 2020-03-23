<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html> 
<html lang="ko">
 <head>
  <title>김대성/디테일</title>

  <link rel='stylesheet' type='text/css' href='http://tkfile.yes24.com/New/Css/reset.css' />
  <link rel='stylesheet' type='text/css' href='http://tkfile.yes24.com/New/Css/sub.css' />	

  
  <script type='text/javascript' src='http://tkfile.yes24.com/New/Js/jquery-3.4.1_min.js'></script>

	<!-- 지도 API -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7ca88425a9b2838d03cea5da7be46498&libraries=services"></script>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7ca88425a9b2838d03cea5da7be46498"></script>
	
	

  <style type="text/css">
  	body{font-family: 'NanumBarunGothic', '맑은 고딕', 'Malgun Gothic', sans-serif;}
  </style> 
 </head>
 <body>

<jsp:include page="../common/menubar.jsp"/>
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
											alert("찜 성공");
											JjimSelect();
										}
										if(data =="DeSuccess"){
											alert("찜 취소");
											JjimSelect();
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
                                <li>R석 <span class='rn-red'>80,000</span>원</li>
                                <li>S석 <span class='rn-red'>60,000</span>원</li>
                                <li>조석 <span class='rn-red'>1,890,000</span>원</li>
								</c:if>
								<c:if test="${ art.artType == 0 }">
									<li>입장권 <span class='rn-red'>40,000</span>원</li>
								</c:if>
							</ul>
							<p class='rn-product-price2'>할인 적용 시 최저가 
                                <span class='rn-red'>48,000</span>원 ~ 최고가 
                                <span class='rn-red'>88,000</span>원
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
            <a href="#" onclick="window.open('${buy}', '', 'width=715, height=650');" class='rn-bb03'>예매하기</a>            
		</c:if>
		<c:if test="${ empty loginUser}">
			<a href="loginPage.do" class="rn-bb03"><span>로그인</span></a>
		</c:if>
		</div><!--rn-05-->
			</div><!--rn-03-right-->  
		</div><!--rn-03-->


        <div class="rn-06" id="divMiddleBanner"></div><!--중간띠배너-->
	    

		<div class="rn-07"  style="text-align: center;" ><!--하단탭5개버튼-->
			<a href="#divMiddleBanner" class="on"><span>상세정보</span></a>
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
								           content = '<div style="padding:5px;">${art.artTitle}<br><a href="https://map.kakao.com/link/search/${art.address}" style="color:blue" text-decoration="none" target="_blank">검색하기</a></div>';
								
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
                <br><br><br><br><br><br><br><br>
    </div>
    </div>	
</div>
</div>

<jsp:include page="../common/footer.jsp" />
</body>
</html>



