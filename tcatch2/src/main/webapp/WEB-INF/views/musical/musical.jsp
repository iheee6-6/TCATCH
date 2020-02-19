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

						
			<div class='ms-list-imgs'>
				<c:forEach var="a" items="${ list }"> 
						<c:url var="adetail" value="musicalDetail.do">
							<c:param name="artNo" value="${ a.artNo }"/>
						</c:url>
					<!-- 목록 1 -->
					<a href='${adetail}' target='_self'
						title='뮤지컬 (은밀하게 위대하게 - THE LAST)'>
						<div class='list-bigger-wrap'>
							<img class='lazyload'
								src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200122/20200122-36049_1.jpg"
								alt='뮤지컬 (은밀하게 위대하게 - THE LAST)' />
							<div class='list-bigger-txt'>
								<p class='list-b-tit1'>${a.artTitle}</p>
								<p class='list-b-tit2'>조회수 ${a.count }</p>
								<p class='list-b-circle'>30%</p>
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
