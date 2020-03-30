<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/album/">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
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
   
   <!-- top list -->
   <br>
   <h1 align="center">Top List</h1>
   
   <div class="album py-5">

    <div class="container" >

      <div class="row">
      
      <c:forEach var="a" items="${list }">

        <c:url var="adetail" value="musicalDetail.do">
           <c:param name="artNo" value="${ a.artNo }"/>
      </c:url>
        <div class="col-md-4">
        <a href="${adetail}">
          <div class="card mb-4 shadow-sm">
         <img id="imgg" class='lazyload' src="${ contextPath }/resources/images/art/${ a.changeName }"/>

            <text x="50%" y="50%" fill="#eceeef" dy=".3em">${ a.artTitle }</text></svg>
            <div class="card-body">
              <p class="card-text"></p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                      ${a.startDate } ~ ${ a.endDate }
                </div>
                <small class="text-muted">조회수 ${a.count }</small>
              </div>
            </div>
          </div>
        </div>
        </a>
        </c:forEach>

        
        
        
      </div>
    </div>
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