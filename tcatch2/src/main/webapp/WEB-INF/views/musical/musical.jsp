<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>김대성</title>


<!-- 상품 설명 UI -->
<link rel='stylesheet' type='text/css'
	href="${ contextPath }/resources/css/product/product.css" />
<!-- 이미지 UI-->
<link rel='stylesheet' type='text/css'
	href="${ contextPath }/resources/css/product/productImg.css" />
<!-- body--> 




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
				<img src='${contextPath}/resources/images/musical/mLogo.png' />
			</p>
		<button onclick="location.href='insert.do'">ArtInsert</button>
		<button onclick="location.href='timeInsertForm.do'">TimeInsert</button>
			<div class="rank-best">
			<div>
			<!-- 1위 -->
				<a href="">
					<span class="rank-best-img">
						<img class='rank-best-img' src="${ contextPath }/resources/images/art/${ list[0].changeName }"/>
					</span>
						<p class="rlb-tit">뮤지컬 드라큘라 （Dracula：The Musical）</p> <!-- 제목 -->
						<p class="rlb-sub-tit">2020-09-21 ~ 2020-09-21<br>우리집에서 함</p> <!-- 날짜 및 시간 -->
						<p class="rank-best-point">
							<span class="star-point">
								★★★★★
							</span>
						</p>
				</a>
			</div>
			<div>
				<!-- 2위 -->
				<a href="">
					<span class="rank-best-img">
						<img class='rank-best-img' src="${ contextPath }/resources/images/art/${ list[0].changeName }"/>
					</span>
						<p class="rlb-tit">뮤지컬 드라큘라 （Dracula：The Musical）</p> <!-- 제목 -->
						<p class="rlb-sub-tit">2020-09-21 ~ 2020-09-21<br>우리집에서 함</p> <!-- 날짜 및 시간 -->
						<p class="rank-best-point">
							<span class="star-point">
								★★★★
							</span>
						</p>
				</a>
			</div>
			
			<div>				
				<!-- 3위 -->
				<a href="">
					<span class="rank-best-img">
						<img class='rank-best-img' src="${ contextPath }/resources/images/art/${ list[0].changeName }"/>
					</span>
						<p class="rlb-tit">뮤지컬 드라큘라 （Dracula：The Musical）</p> <!-- 제목 -->
						<p class="rlb-sub-tit">2020-09-21 ~ 2020-09-21<br>우리집에서 함</p> <!-- 날짜 및 시간 -->
						<p class="rank-best-point">
							<span class="star-point">
								★★★
							</span>
						</p>

					</a>										
				</div>
			</div>		
			
			
			<p class='m2-tit'>
				<img src='${contextPath}/resources/images/musical/mLogo.png' />
			</p>
			<br><br><br>
			
			<div class='ms-list-imgs'>
				<c:forEach var="a" items="${ list }"> 
						<c:url var="adetail" value="musicalDetail.do">
							<c:param name="artNo" value="${ a.artNo }"/>
						</c:url>
					<!-- 목록 1 -->
					<a href='${adetail}' target='_self' title='뮤지컬 (은밀하게 위대하게 - THE LAST)'>
						<div class='list-bigger-wrap'>
							<img class='lazyload' src="${ contextPath }/resources/images/art/${ a.changeName }"/>
							
							<div class='list-bigger-txt'>
								<p class='list-b-tit1'>${a.artTitle}</p>
								<p class='list-b-tit2'>조회수 ${a.count }</p>
								<p class='list-b-circle'>${ a.sale }%</p>
							</div>
						</div>
					</a>
				</c:forEach>
				<!-- 목록 -->
			</div>
		</section>
		<!-- m2-sec02 할인 상품 -->
		<!-- 일반 상품 -->
		
		<section class='m2-sec06'>
			<p class='m2-tit'>
				<img src='http://tkfile.yes24.com/imgNew/genre/m2-tit03.png' alt='' />
			</p>
			
			
			<!-- 일반 상품 1  -->
			<div class='ms-list-imgs2'>
				<a href='#'
					target='_self' title='뮤지컬 <사랑은 비를 타고>'><span>
					<img class='lazyload' src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200122/20200122-36049_1.jpg" alt='' /></span>
					<div class='list-2-txt'>
						<p class='list-2-tit1'>
							뮤지컬
							&lt;사랑은 비를 타고&gt;
						</p>
						<p class='list-2-tit2'>조회수 : </p>
					</div>
				</a>
			</div>
			<!-- 일반 상품 -->
			
			  
			
			
		</section>
	</div>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>
