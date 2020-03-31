<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TCATCH</title>
<link rel='stylesheet' type='text/css' href="${ contextPath }/resources/css/product/detail1.css" />
	<!-- sub.css -->
	<link rel='stylesheet' type='text/css' href="${ contextPath }/resources/css/product/detail2.css" />
	
<style>
 body {
 text-align:center;
 width:800px;
 }
 
table{
	margin: auto;
	padding:auto;
}

#a1 {
	background: red;
	color: white;
	font-size: 10px;
	text-align: center;
}

label {
	display: inline-block;
	width: 16px;
	height: 16px;
	border: 2px solid #bcbcbc;
	cursor: pointer;
}

input[type=checkbox] {
	display: none;
}

td {
	width: 15px;
	height: 15px;
}
 #td{
 	width:400px;
 }


</style>
	
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<br>
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
							class="l" for='${s.seatName }' id="${s.seatName }"></label>
					</td>
					</c:otherwise>
					</c:choose>
				</c:forEach>
			</tr>

		</tbody>
	</table>
	<script>
			$(function(){
				console.log("${seat}");
				var seatArray= '${seat}'.split(" ");
				
				for(var s in seatArray){
					if(seatArray[s] != "")
					$('input:checkbox[value='+seatArray[s]+']').next().css({"background":"red"});
				}
				
			});
	</script>
</body>
</html>