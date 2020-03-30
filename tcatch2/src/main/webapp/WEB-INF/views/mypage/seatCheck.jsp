<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCATCH</title>
<style>
 body {
 text-align:center
 }
</style>
</head>
<body>
	<h3>무대 방향</h3>
	<hr>
	<table>
		<%int count = 65;%>
		<tbody>
			<tr>
				<c:forEach var="s" items="${sList}">

					<c:choose>
					<c:when test='${ s.seatName.contains("15") }'>
						<td id='a1'><%= (char)count++ %></td>
					</c:when>

					<c:when test='${ s.seatName.contains("30") }'>
						<tr></tr>
					</c:when>
					
					<c:otherwise>
					<td>
						<input type="checkbox" name="seatName[]"
							id="${s.seatName }" value="${s.seatName }" disabled> <label
							class="l" for='${s.seatName }'></label>
					</td>
					</c:otherwise>
					</c:choose>
				</c:forEach>
			</tr>

		</tbody>
	</table>
	<script>
			$(function(){
				var seatArray= '${seat}'.split(" ");
				for(var s in seatArray){
					$('input:checkbox[value="seatArray[s]"]').css({ "background": "red" });
				}
				
			});
	</script>
</body>
</html>