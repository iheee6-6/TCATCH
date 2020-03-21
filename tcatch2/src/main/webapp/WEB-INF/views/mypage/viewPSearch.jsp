<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<meta charset="UTF-8">
	<c:choose>
		<c:when test="${empty viewPerformanceList }">
			<div
				style="width: 700px; height: 300px; padding: 100px; text-align: center; border-top: 1px solid black; border-bottom: 1px solid black">
				관람내역이 없습니다.</div>
		</c:when>
		<c:otherwise>
			<%	int index = 1;%>
			<c:forEach var="v" items="${viewPerformanceList }">

				<div class="memo end">
					<h3 style="margin: 0">
						<div class="number">
							<span><%=index++%></span>
						</div>
						<strong>${v.artTitle }</strong>
					</h3>
					<p class="poster"
						style="margin-right: 50px; margin-left: 30px; padding: 0px;">
						
						<img src="resources/images/art/${v.renameFile }" width="141" height="174">
						
					</p>

					<ul>
						<li><em>예매번호</em><span class="bold">${v.tNo }</span></li>
						<li><em>장르</em>
						<c:choose>
							<c:when test="${v.artType ==1 }"><span>콘서트</span></c:when>
							<c:when test="${v.artType ==2 }"><span>뮤지컬</span></c:when>
							<c:when test="${v.artType ==3 }"><span>연극</span></c:when>
							<c:otherwise><span>전시</span></c:otherwise>
						</c:choose></li>
						<!-- 2014.08.16 06:00 -->
						<fmt:parseDate var="dateString" value="${v.viewDate }"
							pattern="yyyy-MM-dd" />
						<fmt:formatDate var="vDate" value="${dateString }"
							pattern="yyyy.MM.dd : aaa hh:mm" />

						<li><em>관람일시</em><span>${vDate }</span></li>
						<li><em>공연장</em><span>${v.address }</span></li>
						
						<li><em>좌석</em>(<span class="red" style="width:auto">
						<c:forTokens var="seat" items="${v.seat}" delims=" ">
							${seat} ,
						</c:forTokens></span>)</li>
						
					</ul>
					
					<div class="btnL">
					<c:url var="pDetail" value="musicalDetail.do">
							<c:param name="artNo" value="${v.artNo }" />
						</c:url>
						<button class="btn btn-sm" style="margin:0px;"onclick="location.href='${pDetail}'">공연정보</button>
						<c:if test="${ empty v.review_content}">
							<button class="btn btn-sm" onclick="location.href='${pDetail}'">관람후기
								작성</button>
						</c:if>
					</div>
						<c:if test="${ !empty v.review_content}">
						<br>
							<em>-후기- </em> 
							<div style="width: 450px; margin-left: 210px;">
							<span>${v.review_content }</span>
							</div>
						</c:if>
				
				</div>
			</c:forEach>
			
			<!-- 페이징 -->
	<div align="center" height="20">
		<c:if test="${pi.currentPage<=1 }">
				[이전] &nbsp;
			</c:if>
			<c:if test="${pi.currentPage>1 }">
				<c:url var="before" value="checknCancel.do">
					<c:param name="page" value="${ pi.currentPage3 -1 }"/>
				</c:url>
				<a href="${before }">[이전]</a> &nbsp;
			</c:if>
			
			<c:forEach var="p" begin="${pi.startPage }" end="${pi.maxPage }">
					<c:if test="${p eq pi.currentPage }">
						<font color="red" size="4"><b>[${ p }]</b></font>
					</c:if>
					<c:if test="${p ne pi.currentPage }">
						<c:url var="pagination" value="noticeView.do">
							<c:param name="page" value="${ p }" />
						</c:url>
						<a href="${pagination }">${ p }</a> &nbsp;
					</c:if>
				</c:forEach>
			
			<c:if test="${pi.currentPage>=pi.maxPage }">
				[다음]
			</c:if>
			<c:if test="${pi.currentPage < pi.maxPage }">
				<c:url var="after" value="checknCancel.do">
					<c:param name="page" value="${pi.currentPage+1 }"/>
				</c:url>
				<a href="${ after }">[다음]</a>
			</c:if>
	</div>
		</c:otherwise>
		
		
	</c:choose>

	