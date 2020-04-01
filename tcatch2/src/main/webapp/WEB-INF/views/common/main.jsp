<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
						<% int count=1; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>TCATCH</title>
<link rel="shortcut icon" type="image/x-icon" href='${contextPath}/resources/images/common/logo.png'>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/album/">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
        
        
        <!-- 상품 설명 UI -->
<link rel='stylesheet' type='text/css' href="${ contextPath }/resources/css/product/product.css" />
<!-- 이미지 UI-->
<link rel='stylesheet' type='text/css' href="${ contextPath }/resources/css/product/productImg.css" />
<style>
.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      #imgg{

         width : 300px;
         height : 400px;
      }
      
      .shadow-sm{
         margin-left : 25px;
         width:300px;
      }
      .txc_3 {
         font-size : 15px;
         color:white;
      }
      
      #sexy{
      	padding:0;
      	margin:auto;
      	border:1px solid #ddd;
      	width:100px;
      	display:inline-block;
      }
      
      
      a{
     	text-decoration:none;
      }
</style>

   
</head>
<body>

   <jsp:include page="menubar2.jsp"/>
   <br>
   <br>
   <br>
   <br>
   <div class='m2-kv-hidden'>
      <div class='m2-kv-wrap'>
         <div class='m2-kv'>
            <div class='swiper-container m2-kvs'>
               <div class='swiper-wrapper'>
                  <c:forEach var="a" items="${list }">
                          <c:url var="adetail" value="musicalDetail.do">
                             <c:param name="artNo" value="${ a.artNo }"/>
                        </c:url>
                  <div class='swiper-slide'>
                     <a href='${adetail }'>
                        <img src="${ contextPath }/resources/images/art/${ a.changeName }"/>
                     <div class='m2-kvs-txt'>
                           <p class='m2-kvs-tit'>
                              <span class="txc_3">${a.artTitle }</span>
                           </p>
                           <p class='m2-kvs-detail'>
                              <span class="txc_3">${a.startDate } ~ ${ a.endDate }  ${ a.address }</span>
                           </p>
                     </div>
                  </a>
                  </div>
                  </c:forEach>
                  
               </div>
            </div>
         </div>
      </div>
      <div class='swiper-button-next m2-kvs'></div>
      <div class='swiper-button-prev m2-kvs'></div>
   </div>
   
   <!-- 전시 top list -->
   <br>

  <h1 align="center">	<img src='${contextPath}/resources/images/musical/exhibition.png' /></h1>
  <div class='ms-list-imgs2'>
  	<% count=1; %>
				<c:forEach var="a" items="${ list0 }">
						<c:url var="adetail2" value="musicalDetail.do">
							<c:param name="artNo" value="${ a.artNo }"/>
						</c:url> 
						
						<a href='${adetail2}' >
						<span>
							<img class='lazyload' src="${ contextPath }/resources/images/art/${ a.changeName }"/>
						</span>
							<div class='list-2-txt'>
									<p class="list-2-tit3">
										<%= count++ %>위
									 </p>
								<p class='list-2-tit1'>
									${a.artTitle}
								</p>
								<p class='list-2-tit2'>♥Like : ${ a.count }</p>
							</div>
						</a>
				</c:forEach>

			</div>
  
     <!-- 콘서트 top list -->
  <h1 align="center">	<img src='${contextPath}/resources/images/musical/concert.png' /></h1>
   		<div class='ms-list-imgs2'>
   			<% count=1; %>
				<c:forEach var="a" items="${ list1 }">
						<c:url var="adetail2" value="musicalDetail.do">
							<c:param name="artNo" value="${ a.artNo }"/>
						</c:url> 

						<a href='${adetail2}' style="text-decoration:none;" >
						<span>
							<img class='lazyload' src="${ contextPath }/resources/images/art/${ a.changeName }"/>
						</span>
							<div class='list-2-txt'>
									<p class="list-2-tit3">
										<%= count++ %>위
									 </p>
								<p class='list-2-tit1'>
									${a.artTitle}
								</p>
								<p class='list-2-tit2'>♥Like : ${ a.count }</p>

							</div>
						</a>
				</c:forEach>
			</div>
  
   <!-- 뮤지컬 top list -->
   <section class='m2-sec06'>
  <h1 align="center">	<img src='${contextPath}/resources/images/musical/mLogo.png' /></h1>
   <div class='ms-list-imgs2'>
	<% count=1; %>
				<c:forEach var="a" items="${ list2 }">
						<c:url var="adetail2" value="musicalDetail.do">
							<c:param name="artNo" value="${ a.artNo }"/>
						</c:url> 
						<a href='${adetail2}' style="text-decoration:none;" >
						<span>
							<img class='lazyload' src="${ contextPath }/resources/images/art/${ a.changeName }"/>
						</span>
							<div class='list-2-txt'>
									<p class="list-2-tit3">
										<%= count++ %>위
									 </p>
								<p class='list-2-tit1'>
									${a.artTitle}
								</p>
								<p class='list-2-tit2'>♥Like : ${ a.count }</p>
							</div>
						</a>
				</c:forEach>
			</div>
  </section>
   <!-- 연극 top list -->
  <h1 align="center">	<img src='${contextPath}/resources/images/musical/drama.png' /></h1>
   <div class='ms-list-imgs2'>
   	<% count=1; %>
				<c:forEach var="a" items="${ list3 }">

						<c:url var="adetail2" value="musicalDetail.do">
							<c:param name="artNo" value="${ a.artNo }"/>
						</c:url> 
					<c:if test="${ a.sale == 0 }">
							<a href='${adetail2}' style="text-decoration:none;" >
						<span>
							<img class='lazyload' src="${ contextPath }/resources/images/art/${ a.changeName }"/>
						</span>
							<div class='list-2-txt'>
									<p class="list-2-tit3">
										<%= count++ %>위
									 </p>
								<p class='list-2-tit1'>
									${a.artTitle}
								</p>
								<p class='list-2-tit2'>♥Like :${ a.count }</p>
							</div>
						</a>
					</c:if>
				</c:forEach>
			</div>
 

   <script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<link rel='stylesheet' type='text/css' href='${ contextPath }/resources/css/main/swiper.css' />
<script type='text/javascript' src='${ contextPath }/resources/js/main/main1.js'></script>
<script type='text/javascript' src='${ contextPath }/resources/js/main/main2.js'></script>
<script type='text/javascript' src='${ contextPath }/resources/js/main/main3.js'></script>

   <jsp:include page="footer.jsp"/>

</body>
</html>