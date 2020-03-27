<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCATCH</title>
<link rel="shortcut icon" type="image/x-icon" href='${contextPath}/resources/images/common/logo.png'>
    <style type="text/css">
        body{font-family: 'NanumBarunGothic', '맑은 고딕', 'Malgun Gothic', sans-serif;}
    </style>
    <link rel='stylesheet' type='text/css' href="${ contextPath }/resources/css/product/detail1.css" />
    <link rel='stylesheet' type='text/css' href="${ contextPath }/resources/css/product/search.css" />
</head>
  <body>

<jsp:include page="../common/menubar2.jsp"/>
<br>
	<br> 
	<br> 
	<br> 
  <div id='dialogAlert' style='display:none;'></div><div id='dialogConfirm' style='display:none;'></div><div id='dialogPopup' style='display:none;'></div>

  
      <!-- 콘텐츠 //-->
      <div class="srch-scroll srch-scroll01">
          <div class="srch-scroll-slide">

          </div>
      </div>
  
      <div class="content-min-wrap">



          <div class="srch-top">
              <p><span id="resultSearchWord"></span>검색어를 입력해주세요.</p>
              <div class="srch-top-box">
              <form action="searchArt.do" method="post">
                  <input type="text" id="subText" name="title" />
                  <a href="javascript:goSearch();" class="btn-srch1"></a>
                  <button type="submit" id="searchArt" style="display:none"></button>                  
              </form>
                  <script>
                	function goSearch(){
                		$("#searchArt").click();
                	}  
                  
              	    
                  </script>
              
              </div>
              <div class="srch-top-keyword" id="subSearchTextView">
              </div>
          </div>



          <div class="srch-word">
 
          </div>
  
    
  
          <div class="srch-sec srch-sec01">
  
              <div id="viewPerf">
                <div class="srch-list">
				
                <c:forEach var="a" items="${ list }"> 

						<c:url var="adetail" value="musicalDetail.do">
							<c:param name="artNo" value="${ a.artNo }"/>
						</c:url>
                    <div class="srch-list-item">
                        <div>
                            <a href="${adetail }">
                               <img src="${ contextPath }/resources/images/art/${ a.changeName }"/>
                            </a>
                        </div>
                        <div>
                            <p class="item-state">
                                <span class="item-state02">
	                                <c:if test="${ a.artType ==0 }">
	                                	전시
	                                </c:if>
	                                <c:if test="${ a.artType ==1 }">
	                                	콘서트
	                                </c:if>
	                                <c:if test="${ a.artType ==2 }">
	                                	뮤지컬
	                                </c:if>
	                                <c:if test="${ a.artType ==3 }">
	                                	공연
	                                </c:if>
                                </span>
                            </p>
                            <p class="item-tit">
                               <a href="#">${a.artTitle}</a>
                            </p>
                        </div>
                        <div>${ a.startDate } ~ ${a.endDate}</div>
                        <div>${a.address } </div>
                    </div>
				</c:forEach>
                
                </div>
              </div>
  </div>
  </div>

	<jsp:include page="../common/footer.jsp" />
  
  </body>
</html>