<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>

    <title>커뮤니티 안내</title>


    <link rel='stylesheet' type='text/css' href='http://tkfile.yes24.com/New/Css/reset.css' />
    <link rel='stylesheet' type='text/css' href='http://tkfile.yes24.com/New/Css/common.css' /> 
    <link rel='stylesheet' type='text/css' href='http://tkfile.yes24.com/New/Css/main2.css?v=2020012203' />
    <link rel='stylesheet' type='text/css' href='http://tkfile.yes24.com/New/Css/guide.css' />

    <script type="text/javascript" src="http://tkfile.yes24.com/New/Js/guide.js"></script>
    <script type="text/javascript" src="/New/UserGuide/Scripts/FAQ.js?v=212"></script>
    <style type="text/css">
        body{font-family: 'NanumBarunGothic', '맑은 고딕', 'Malgun Gothic', sans-serif;}
    </style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<br>
	<br>
    <!-- 콘텐츠 //-->
    <div class="content-min-wrap">
	    <p class="big-title">이용안내</p>
	    <div class="brochure">
		    <div>
			    <p><span>고객센터</span></p>
			    <dl>
				    <dt>전화문의 : </dt>
				    <dd>1544-6399</dd>
				    <dt>이용시간 : </dt>
				    <dd>평일 09:00~18:00 / 토요일 09:00~17:00<br />(점심시간: 12:00~13:00 / 일요일, 공휴일 휴무)</dd>
			    </dl>
		    </div>
		    <div>
			    <p><span>1:1문의</span><a href="http://www.yes24.com/Mall/Help/CS/Apply" target="_blank">문의하기</a></p>
			    <p>
				    평일 오후 5시 이후 문의는 당일 답변이 어려울 수 있습니다.<br />
				    토,일요일/공휴일 문의는 운영 시간 내 순차적으로 답변 드리겠습니다.<br />
				    <span>잠깐!</span> 1:1 문의 전 FAQ 를 먼저 확인해보세요.
			    </p>
		    </div>
	    </div>
	    <div class="guide-division">
		    <a href="#" class="on">예매방법</a>
		    <a href="#">결제방법</a>
		    <a href="#">수수료</a>
		    <a href="#">취소/환불</a>
		    <a href="#">티켓수령</a>
		    <a href="#">FAQ</a>
		    <a href="#">티켓판매/제휴문의</a>
	    </div>
	    <div class="guidebox gb01" style="display:block;">
	    </div><!--guidebox gb01 예매방법-->
	    <div class="guidebox gb02">
	    </div><!--guidebox gb02 결제방법-->
	    <div class="guidebox gb03">
	    </div><!--guidebox gb03 수수료-->
	    <div class="guidebox gb04">
	    </div><!--guidebox gb04 취소/환불-->
	    <div class="guidebox gb05">
	    </div><!--guidebox gb05 티켓수령-->
	    <div class="guidebox gb06">
		    <div class="guide-faq-srch">
			    궁금하신 내용을 입력해주세요.
			    <input id="SearchTextbox" onkeypress="if (event.keyCode==13){ onSearch();event.returnValue=false}" type="text" />
			    <a href="javascript:;" onclick="onSearch();"></a>
		    </div>
		    <div class="guide-faq-btns">
			    <a href="#" onclick="getFaq();" class="on">전체(<span id="faqTap">0</span>)</a>
			    <a href="#" onclick="getFaq(10);">회원(<span id="faqTap10">0</span>)</a>
			    <a href="#" onclick="getFaq(11);">예매/결제(<span id="faqTap11">0</span>)</a>
			    <a href="#" onclick="getFaq(12);">취소/환불(<span id="faqTap12">0</span>)</a>
			    <a href="#" onclick="getFaq(13);">티켓수령(<span id="faqTap13">0</span>)</a>
			    <a href="#" onclick="getFaq(14);">팬클럽(<span id="faqTap14">0</span>)</a>
			    <a href="#" onclick="getFaq(15);">기타(<span id="faqTap15">0</span>)</a>
		    </div>
		    <div class="guide-faq-result" style="display:none;">
			    <p><span id="divSearchText"></span>에 대한 검색결과 <em id="divSearchCount"></em></p>
		    </div>
		    <div class="guide-faq-list">
		    </div>
		    <p class="guide-faq-nolist" style="display:none;">
			    <span>검색된 FAQ 가 없습니다.</span><br />
			    궁금하신 사항은 1:1문의를 남겨주시거나 고객센터(T.1544-6399)를 이용해 주시면<br />
			    친절하고 정확하게 안내해드리겠습니다.
		    </p>
		    <div class="guide-faq-pager">
		    </div>
	    </div><!--guidebox gb06 FAQ-->
	    <div class="guidebox gb07">
		    <div class="gb07box">
			    <p>판매 상담 및 계약</p>
			    <ul>
				    <li>판매 대행 의뢰할 공연에 대한 개요를 대표 E-mail 로 발송해주시면, 담당자가 확인 후 기획사 담당자에게 연락을 드립니다. yesticket@yes24.com</li>
				    <li>담당자와 공연 판매 대행 관련 상담 및 계약을 진행합니다. </li>
				    <li>연간계약과 단일계약 중 선택하여 계약하고 관련 서류 작업을 완료합니다.</li>
			    </ul>
		    </div>
		    <div class="gb07box">
			    <p>공연/상품 등록</p>
			    <ul>
				    <li>공연 등록 의뢰서 작성 후 각 담당자 E-mail 또는 yesticket@yes24.com 로 보내주세요. </li>
				    <li>공연 등록에 필요한 이미지, 좌석배치도 등과 함께 사업자등록증, 통장 사본을 전달주시면 더욱 빠르게 처리 가능합니다.</li>
				    <li>등록 자료 접수 후 영업일 기준 3~4일 이내에 등록됩니다.</li>
				    <li>필요한 경우 티켓 오픈 관련 공지사항을 게시할 수 있습니다. </li>
			    </ul>
		    </div>
		    <div class="gb07box">
			    <p>판매/마케팅</p>
			    <ul>
				    <li>판매는 예스24를 비롯하여 제휴사에서도 함께 판매됩니다. </li>
				    <li>판매 현황은 어드민을 통해 확인하실 수 있습니다.   ▶ 기획사 어드민: tms.yes24.com</li>
				    <li>초대권 등 티켓 발권은 대표 E-mail (yesticket@yes24.com) 으로 신청 가능합니다. </li>
				    <li>공연 당일 해당 티켓 발송 또는 판매담당자 지원 가능합니다. 사전에 담당자와 협의해주시기 바랍니다. </li>
				    <li>마케팅은 영업 담당자와 협의하시거나 tikcketmd@yes24.com 로 메일로 보내주시면 됩니다. </li>
			    </ul>
		    </div>
		    <div class="gb07box">
			    <p>정산</p>
			    <ul>
				    <li>공연 종료되면 3일 이내에 정산서를 보내드립니다. 조정 사항이 있는 경우 담당자와 협의합니다.</li>
				    <li>7일 이내에 판매수수료를 제외한 정산금액을 입금하여 드립니다.</li>
			    </ul>
		    </div>
		    <ul class="bg07btns">
			    <li>
				    <p>티켓 등록 의뢰서</p>
				    <a href="http://tkfile.yes24.com/Upload2/download/(예스24)_티켓등록의뢰서.xlsx">다운</a>
			    </li>
			    <li>
				    <p>예스24 CI</p>
				    <a href="http://tkfile.yes24.com/upload/download/예스24_CI.zip">다운</a>
			    </li>
			    <li>
				    <p>배너 제작 가이드</p>
				    <a href="http://tkfile.yes24.com/Upload2/download/psdGuide.zip">다운</a>
			    </li>
		    </ul>
	    </div><!--guidebox gb07 티켓판매/제휴문의-->
    </div>
    <!-- 콘텐츠 //-->

    <input name="hiddenTabNo" id="hiddenTabNo" type="hidden" value="6" />

    


</body>
</html>
