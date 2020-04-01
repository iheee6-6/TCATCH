<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>TACTCH</title>
<link rel="shortcut icon" type="image/x-icon" href='${contextPath}/resources/images/common/logo.png'>


<!-- 상품 설명 UI -->
<link rel='stylesheet' type='text/css' href="${ contextPath }/resources/css/product/product.css" />
<!-- 이미지 UI-->
<link rel='stylesheet' type='text/css' href="${ contextPath }/resources/css/product/productImg.css" />


<style>
.rank-best{width:1200px; margin:0 auto; text-align:center;font-size:0;background:#f6f6f6;}
.rank-best > div{display:inline-block;box-sizing:border-box;width:400px;height:675px;border-right:1px solid #ddd;}
.rank-best > div:last-child{border-right:0 none;}
.rank-best > div a{display:block;width:260px;position:relative;overflow:hidden;padding:60px 69px 70px 70px;}
.rank-best > div a .rank-best-img{display:block;width:100%;height:364px;margin-bottom:22px;overflow:hidden;}
.rank-best > div a .rank-best-img img{transition:all 0.3s;}
.rank-best > div a:hover .rank-best-img img{transform:scale(1.12);}
.rank-best > div a .rlb-tit{font-size:16px;line-height:24px;font-weight:700;color:#333;height:48px;overflow:hidden;margin:0 -25px 12px -25px;}
.rank-best > div a .rlb-sub-tit{font-size:13px;color:#999;height:60px;border-bottom:1px solid #eee;line-height:18px;}
.rank-best > div a .rank-best-point{text-align:center;margin-top:18px;}
.rank-best > div a .rank-best-point *{vertical-align:middle;display:inline-block;}
.rank-best > div a .rank-best-point strong{font-size:20px;font-weight:700;color:#333;margin-right:14px;}
.rank-best > div a .rank-best-point span{font-size:12px;height:12px;line-height:12px;color:#ff7d1e;position:relative;}
.rank-best > div a .rank-best-point span:last-child:after{display:none;}
.rank-best > div a .rank-best-number{position:absolute; top:60px;left:70px;width:55px;height:71px;background:url('http://tkfile.yes24.com/imgNew/common/ico-rank-bestbg1.png')no-repeat;}

.rank-best > div a .rank-best-number span{display:block;color:#fff; font-size:16px;font-weight:700;padding:15px 0 13px 0;position:relative;}
.rank-best > div a .rank-best-number span:nth-child(1):after{content:"";display:block;width:13px;height:1px;background:#fff;opacity:0.5;position:absolute;left:21px;bottom:7px;}
.rank-best > div a .rank-best-number span:last-child{display:inline-block;font-size:12px;padding:0;}
.rank-best > div a .rank-best-number span.rank-best-number-up{padding-left:10px;margin-left:-3px;}
.rank-best > div a .rank-best-number span.rank-best-number-up:before{content:"↑";display:block;position:absolute;top:-1px;left:0;font-size:10px;font-weight:400;font-family:'Noto Sans KR','NanumBarunGothic','맑은 고딕','Malgun Gothic',sans-serif;}
.rank-best > div a .rank-best-number span.rank-best-number-down{padding-left:10px;margin-left:-3px;}
.rank-best > div a .rank-best-number span.rank-best-number-down:before{content:"↓";display:block;position:absolute;top:-1px;left:0;font-size:10px;font-weight:400;font-family:'Noto Sans KR','NanumBarunGothic','맑은 고딕','Malgun Gothic',sans-serif;}
.rank-best > div a .rank-best-tag{position:absolute;top:402px;left:75px;width:48px;height:27px;font-size:12px;color:#fff;padding-top:7px;background:url('http://tkfile.yes24.com/imgNew/common/ico-tag.png')no-repeat;}


div {
    display: block;
}

.lazyload{

	height : 302.4px;

}

</style>
</head> 
<body>
	<jsp:include page="../common/menubar.jsp" />
	<br>
	<br> 
	<br> 
	<br>

	<div class="cp-top-wrap">
			   
		<section class='m2-sec02'>
			<p class='m2-tit'>
				<img src='${contextPath}/resources/images/musical/TCATCH.png' />
			</p>
		<button onclick="location.href='insert.do'">ArtInsert</button>
		<button onclick="location.href='timeInsertForm.do'">TimeInsert</button>
		<button onclick="location.href='companyInsertForm.do'">CompanyInsert</button>
		<button onclick="location.href='searchArtForm.do'">search</button>
		
		<c:url var="update" value="artUpdateForm.do">
							<c:param name="artNo" value="1"/>
		</c:url>
		<button onclick="location.href='${update}'">artUpdateForm</button>		
			<div class="rank-best">
			<div>
			<!-- 1위 -->
				<c:url var="adetail" value="musicalDetail.do">
							<c:param name="artNo" value="${ list[0].artNo }"/>
				</c:url>
				<a href="${adetail}">
					<span class="rank-best-img">
						<img class='rank-best-img' src="${ contextPath }/resources/images/art/${ list[0].changeName }"/>
					</span>
						<p class="rlb-tit">${ list[0].artTitle }</p> <!-- 제목 -->
						<p class="rlb-sub-tit">${ list[0].startDate } ~ ${list[0].endDate}<br>${ list[0].address }</p> <!-- 날짜 및 시간 -->
						<p class="rank-best-point">
							<span class="star-point">
								♥Like : ${ list[0].jjimCount }
							</span>
						</p>
				</a>
			</div>
			<div>
				<!-- 2위 -->
				<c:url var="adetail" value="musicalDetail.do">
							<c:param name="artNo" value="${ list[1].artNo }"/>
				</c:url>
				<a href="${adetail}">
					<span class="rank-best-img">
						<img class='rank-best-img' src="${ contextPath }/resources/images/art/${ list[1].changeName }"/>
					</span>
						<p class="rlb-tit">${ list[1].artTitle }</p> <!-- 제목 -->
						<p class="rlb-sub-tit">${ list[1].startDate } ~ ${list[1].endDate}<br>${list[1].address}</p> <!-- 날짜 및 시간 -->
						<p class="rank-best-point">
							<span class="star-point">
								♥Like : ${ list[1].jjimCount }
							</span>
						</p>
				</a>
			</div>
			
			<div>				
				<!-- 3위 -->
				<c:url var="adetail" value="musicalDetail.do">
							<c:param name="artNo" value="${ list[2].artNo }"/>
				</c:url>
				<a href="${adetail}">
					<span class="rank-best-img">
						<img class='rank-best-img' src="${ contextPath }/resources/images/art/${ list[2].changeName }"/>
					</span>
						<p class="rlb-tit">${ list[2].artTitle }</p> <!-- 제목 -->
						<p class="rlb-sub-tit">${ list[2].startDate } ~ ${list[2].endDate}<br>${list[2].address }</p> <!-- 날짜 및 시간 -->
						<p class="rank-best-point">
							<span class="star-point">
								♥Like : ${ list[2].jjimCount }
							</span>
						</p>

					</a>										
				</div>
			</div>		
			
			
			<p class='m2-tit'>
				<img src='${contextPath}/resources/images/musical/할인.png' />
			</p>
			<br><br><br>
			
			<div class='ms-list-imgs'>
				<c:forEach var="a" items="${ list }"> 
						<c:url var="adetail" value="musicalDetail.do">
							<c:param name="artNo" value="${ a.artNo }"/>
						</c:url>
					<!-- 목록 1 -->
					<c:if test="${ a.sale != 0 }">
						<a href='${adetail}' >
							<div class='list-bigger-wrap'>
								<img class='lazyload' src="${ contextPath }/resources/images/art/${ a.changeName }"/>
								
								<div class='list-bigger-txt'>
									<p class='list-b-tit1'>${a.artTitle}</p>
									<p class='list-b-tit2'>조회수 ${a.count } , 댓글 (${ a.replyCount })</p>		
									<p class='list-b-circle'>${ a.sale }%</p>
								</div>
							</div>
						</a>
					</c:if>
				</c:forEach>
				<!-- 목록 -->
			</div>
		</section>
		<!-- m2-sec02 할인 상품 -->
		<!-- 일반 상품 -->
		
		<section class='m2-sec06'>
			<p class='m2-tit'>
				<img src='${contextPath}/resources/images/musical/Art.png' />
			</p>
			
			
			<!-- 일반 상품 1  -->
			<div class='ms-list-imgs2'>
				<c:forEach var="a" items="${ list }">
						<c:url var="adetail2" value="musicalDetail.do">
							<c:param name="artNo" value="${ a.artNo }"/>
						</c:url> 
					<c:if test="${ a.sale == 0 }">
						<a href='${adetail2}' >
						<span>
							<img class='lazyload' src="${ contextPath }/resources/images/art/${ a.changeName }"/>
						</span>
							<div class='list-2-txt'>
								<p class='list-2-tit1'>
									${a.artTitle}
								</p>
								<p class='list-2-tit2'>댓글 (${ a.replyCount })</p>
							</div>
						</a>
					</c:if>
				</c:forEach>
			</div>
			<!-- 일반 상품 -->
		</section>
	</div>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>
