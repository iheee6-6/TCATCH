<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<meta charset="UTF-8">
<style>
.goPage {
	cursor: pointer;
}

.memo.end {
	margin-bottom: 5px;
}

.reviewMemo {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	border: 1px dotted black;
	width: 350px;
	height: 55px;
	margin-left: 210px;
}
li{
	list-style:none;
}
</style>
	<c:choose>
		<c:when test="${empty viewPerformanceList }">
			<div
				style="width: 700px; height: 300px; padding: 100px; text-align: center; border-top: 1px solid black; border-bottom: 1px solid black">
				관람내역이 없습니다.</div>
		</c:when>
		<c:otherwise>
			
			<c:forEach var="v" items="${viewPerformanceList }" varStatus="status">

				<div class="memo end">
					<h3 style="margin: 0">
						<div class="number">
						<c:set value="${pi.currentPage}" var="index"/>
						<c:if test="${status.last }">
							<c:set value="${pi.currentPage +1}" var="index"/>
						</c:if>
							<span>${index}</span>
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
						
						<fmt:formatDate var="vDate" value="${v.viewDate }"
							pattern="yyyy.MM.dd : aaa hh:mm" />

						<li><em>관람일시</em><span>${vDate }</span></li>
						<li><em>공연장</em><span>${v.address }</span></li>
						<c:if test="${ v.artType!=0}">
						<li><em>좌석</em>(<span class="red" style="width:auto">
						<c:forTokens var="seat" items="${v.seat}" delims=" " varStatus="status">
							${seat} 
							<c:if test="${not status.last}">
								,
							</c:if>
						</c:forTokens></span>)</li>
						</c:if>
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
						
							<em>< 후기 > </em> 
							<div class="reviewMemo" style="padding:5px;">
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
				<span class="goPage" onclick="searchPage(${pi.currentPage-1})">[이전]</span> &nbsp;
			</c:if>
			
			<c:forEach var="p" begin="${pi.startPage }" end="${pi.maxPage }">
					<c:if test="${p eq pi.currentPage }">
						<font color="red" size="4"><b>[${ p }]</b></font>
					</c:if>
					<c:if test="${p ne pi.currentPage }">
						<span class="goPage" onclick="searchPage(${p})">${ p }</span> &nbsp;
					</c:if>
				</c:forEach>
			
			<c:if test="${pi.currentPage>=pi.maxPage }">
				[다음]
			</c:if>
			<c:if test="${pi.currentPage < pi.maxPage }">
				<span class="goPage" onclick="searchPage(${pi.currentPage+1})">[다음]</span>
			</c:if>
	</div>
		</c:otherwise>
		
		
	</c:choose>

	