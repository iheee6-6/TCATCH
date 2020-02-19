<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>��뼺</title>


<!-- ��ǰ ���� UI -->
<link rel='stylesheet' type='text/css'
	href="${ contextPath }/resources/css/product/product.css" />
<!-- �̹��� UI-->
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
					<!-- ��� 1 -->
					<a href='${adetail}' target='_self'
						title='������ (�����ϰ� �����ϰ� - THE LAST)'>
						<div class='list-bigger-wrap'>
							<img class='lazyload'
								src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200122/20200122-36049_1.jpg"
								alt='������ (�����ϰ� �����ϰ� - THE LAST)' />
							<div class='list-bigger-txt'>
								<p class='list-b-tit1'>${a.artTitle}</p>
								<p class='list-b-tit2'>��ȸ�� ${a.count }</p>
								<p class='list-b-circle'>30%</p>
							</div>
						</div>
					</a>
				</c:forEach>
				<!-- ��� -->
			</div>
		</section>
		<!-- m2-sec02 ���� ��ǰ -->
		<!-- �Ϲ� ��ǰ -->
		
		<section class='m2-sec06'>
			<p class='m2-tit'>
				<img src='http://tkfile.yes24.com/imgNew/genre/m2-tit03.png' alt='' />
			</p>
			
			
			<!-- �Ϲ� ��ǰ 1  -->
			<div class='ms-list-imgs2'>
				<a href='#'
					target='_self' title='������ <����� �� Ÿ��>'><span>
					<img class='lazyload' src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200122/20200122-36049_1.jpg" alt='' /></span>
					<div class='list-2-txt'>
						<p class='list-2-tit1'>
							������
							&lt;����� �� Ÿ��&gt;
						</p>
						<p class='list-2-tit2'>��ȸ�� : </p>
					</div>
				</a>
			</div>
			<!-- �Ϲ� ��ǰ -->
			
			
			
			
			
		</section>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>
