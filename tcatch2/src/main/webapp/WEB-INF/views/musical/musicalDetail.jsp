<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>






<!doctype html> 
<html lang="ko">
 <head>
  <title>김대성/디테일</title>

  <link rel='stylesheet' type='text/css' href='http://tkfile.yes24.com/New/Css/reset.css' />
  <link rel='stylesheet' type='text/css' href='http://tkfile.yes24.com/New/Css/sub.css' />	

  
  <script type='text/javascript' src='http://tkfile.yes24.com/New/Js/jquery-3.4.1_min.js'></script>


  <style type="text/css">
  	body{font-family: 'NanumBarunGothic', '맑은 고딕', 'Malgun Gothic', sans-serif;}
  </style>
 </head>
 <body>
<jsp:include page="../common/menubar.jsp"/>
<br><br><br><br>
 
 <form name="mainForm" method="post" action="./36369?IdPerf=36369" id="mainForm">

<div class="renew-wrap">
	<div class="renew-content">
		<div class="rn-02"><!--제목-->
			<p class="rn-big-title">[제목] 제목제목</p>
			<div class="rn-product-short-data">
				<p><span class="ps-date">날짜 ~ 날짜</span><span class="ps-location"> ~위치~ </span></p>	
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
					<img class='lazyload' src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200122/20200122-36049_1.jpg"/><!-- 이미지 -->
				</div>

				<div class="rn-product-social">
					<a href="javascript:;" class="rn-product-good">
                        <img src="http://tkfile.yes24.com/imgNew/sub/rn-product-good1.png" alt="" id="h1" /><!--좋아요 안누른 하트-->
                        <img src="http://tkfile.yes24.com/imgNew/sub/rn-product-good2.png" alt="" id="h2"/><!--좋아요 누른 하트-->
                        <span class="rn-pdg-txt2">찜</span>
                        <span class="rn-pdg-txt1"></span>
					</a>
					<script>
					var h1 = document.getElementById("h1");
					var h2 = document.getElementById("h2");
					var aa = document.getElementsByClassName("rn-product-good");

					$("#h1").click(function(){
						$("#h1").hide();
						$("#h2").fadeToggle(0);
					});
					$("#h2").click(function(){
						$("#h2").hide();
						$("#h1").fadeToggle(0);
					});
					</script>
						
				</div>				
            </div><!--rn-03-left-->
            
            
			<div class="rn-03-right"><!--상품정보-->
				<div class="rn-product-area1"><!--등급, 관람시간, 출연, 가격, 혜택-->
					<dl>
						<dt>등급</dt>
						<dd>&nbsp;만 19세이상</dd>
						<dt>관람시간</dt>
						<dd>&nbsp;총 999분(인터미션 없음)</dd>
						<dt>출연</dt>
						<dd>&nbsp;
                            고태훈 바보(기타) ,
                            킹고태 병맛(베이스) , 
                            코태훈 코고는소리(드럼)
                            
						<dt id="dtPrice">좌석</dt>
						<dd>
						 <span class='rn-red'>100</span>/100
						</dd>
						
						<dt id="dtPrice">가격</dt>
						<dd id="divPrice" class="rn-product-price">
							<ul class="rn-product-price1 scroll-color">
                                <li>R석 <span class='rn-red'>80,000</span>원</li>
                                <li>S석 <span class='rn-red'>60,000</span>원</li>
                                <li>조석 <span class='rn-red'>1,890,000</span>원</li>
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
						<dd>2020년 3월 8일(일) 오후 6시</dd>
						<dt>배송정보</dt>
                        <dd>현장 수령 <span class='rn-red'>가능</span></dd>
                        <dd>택배 배송 <span class='rn-red'>가능</span></dd>
					</dl>
				</div>

                <!--자동주문방지적용-->
                
		<div class="rn-05"><!--예매버튼-->         
            <a href="#" onclick="window.open('buy.do', 'www.naver.com', 'width=715, height=650');" class='rn-bb03'>예매하기</a>
            
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
                    <div><p>어쩌고 저쩌고 어쩌고 저쩌고 어쩌고 저쩌고 어쩌고 저쩌고 어쩌고 저쩌고 어쩌고 저쩌고</p></div>
				</div><!--rn-0801-->
				<div class="rn-0803"><!--공연정보-->
					<p class="rn08-tit">공연정보</p>
					<div class="rn08-txt" id="divPerfContent">
                        <div><p>어쩌고 저쩌고 어쩌고 저쩌고 어쩌고 저쩌고 어쩌고 저쩌고 어쩌고 저쩌고 어쩌고 저쩌고</p></div>
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
								<td id="divPerfOrganization">회사 정보 가져오기 </td>
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
                                        <td>회사 이름 </td>
                                        <th scope="row" class="rn08-tbl-tit2">소비자상담</th>
                                        <td>회사 번호</td>
                                    </tr>
									<tr>
                                        <th scope="row" class="rn08-tbl-tit2">주연</th>
                                        <td>주연 정보</td>
                                        <th scope="row" class="rn08-tbl-tit2">관람등급</th>
                                        <td>만 ()세이상</td>
                                    </tr>
									<tr>
                                        <th scope="row" class="rn08-tbl-tit2">공연시간</th>
                                        <td>시간 )</td>
                                        <th scope="row" class="rn08-tbl-tit2">공연장소</th>
                                        <td>장소 </td>
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
												취소는 MY공연>예매확인/취소 에서 직접 취소 또는 고객센터(1544-6399)를 통해 취소 가능합니다.<br />
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
					<img src="D:\HTML\티캐취\imges\address.png">
					KH 정보교육원 오시는 길 
					<br><br><br>
                    <img src="D:\HTML\티캐취\imges\zz.PNG">
                    <!--지도 부분-->
                </div>

                <br><br><br><br><br><br><br><br>
    </div>
    </div>	
</div>
</div>
</form>
<jsp:include page="../common/footer.jsp" />
</body>
</html>



