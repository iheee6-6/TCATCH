<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<meta charset="UTF-8">
	<c:choose>
		<c:when test="${empty viewPerformanceList }">
			<div
				style="width: 700px; height: 300px; padding: 100px; text-align: center; border-top: 1px solid black; border-bottom: 1px solid black">
				no list</div>
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
						<img
							src="http://tkfile.yes24.com/upload2/PerfBlog/201408/20140807/20140807-18681_1.jpg"
							width="141" height="174" alt="Ripple Effect the Concert">
					</p>

					<ul>
						<li><em>예매번호</em><span class="bold">${v.tNo }</span></li>
						<li><em>장르</em><span>${v.artType}</span></li>
						<!-- 2014.08.16 06:00 -->
						<fmt:parseDate var="dateString" value="${v.viewDate }"
							pattern="yyyy.MM.dd : aaa hh:mm" />

						<li><em>관람일시</em><span>${dateString }</span></li>
						<li><em>공연장</em><span>${v.address }</span></li>
						<li><em>좌석(<span class="red">${v.seat }</span>)
						</em><span> </span></li>
					</ul>
					<br>
					<div>
						<c:url var="pDetail" value="musicalDetail.do">
							<c:param name="artNo" value="${v.artNo }" />
						</c:url>
						<button class="btn btn-sm" onclick="location.href='${pDetail}'">공연정보</button>
						<button class="btn btn-sm" onclick="location.href='${pDetail}'">관람후기
							작성</button>
					</div>
				</div>
			</c:forEach>
		</c:otherwise>
	</c:choose>
