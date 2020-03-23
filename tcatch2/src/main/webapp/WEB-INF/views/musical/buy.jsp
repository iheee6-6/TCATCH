<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BUY</title>

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
table{
	margin: auto;
	padding:auto;
}

thead {
	text-align: center;
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
 	height:100px;
 }

#whktjr {
	border: 1px solid black;
	width: 300px;
	height: 50px;
	text-align: center;
}

#bor {
	width: 300px;
	height: 100px;
	margin: auto;
}

#goBuy, #ree {
	width: 50%;
	float:left;
	disply: inline-block;
}
</style>
</head>
<body>
	<section class="sec03">
	<img src='${contextPath}/resources/images/musical/mLogo.png' />
	<c:if test="${ art.artType != 0 }">

		
		<table>
			<thead>
					<tr>
						<td colspan="31"><br>무대 방향 <br><hr>
						</td>
					</tr>
				</thead>
			<tbody>
			<tr>
				<c:forEach var="s" items="${sList}">
				
				<td>

				<c:if test="${s.status eq 'Y' }">
					<input type="checkbox" name="seatName[]" id="${s.seatName }" value="${s.seatName }">
					<label class="l" for='${s.seatName }'></label>
				</c:if>
				
				<c:if test="${s.status eq 'N' }">
					<input type="checkbox" name="seatName[]" id="${s.seatName }" value="${s.seatName }" disabled>
					<label class="l" for='${s.seatName }' style="background: red"></label>
				</c:if>
				</td>
				<c:if test="${ s.seatName  eq 'A-15'}">
				<td  id='a1'>A</td>
				</c:if>
				
				<c:if test="${ s.seatName eq 'A-30' }">
					<tr><td></td></tr>
				</c:if>
				
				<c:if test="${ s.seatName  eq 'B-15'}">
				<td  id='a1'>B</td>
				</c:if>
				
				<c:if test="${ s.seatName eq 'B-30' }">
					<tr></tr>
				</c:if>
				</c:forEach>
			</tr>

			</tbody>
			</table>
			<table>
				<tr>
					<td id="td">
					<form action="buy.do" method="post" id="joinForm">

					<input type="hidden" name="artNo" value="${ s.artNo }"> 
					<input type="hidden" id="timeNo" name="timeNo" value="">  <!-- 즉 회차번호를 가져가는거임 -->
							회차선택 &nbsp; : &nbsp;<select id="timeSelect" class="tt" >
			                                    	 <option>-----------</option>                                   
			                                    <c:forEach var="t" items="${ aT }">
			                               		     <option value="${t.dateCount }">${t.dateCount }회차 ${ t.dateTime }</option>
			                                    </c:forEach>
			                              </select>
			                    
			                              <script>
			                              		$("#timeSelect").change(selectC);
			                              		
			                              		function selectC(){
			                              			 var value = $("option:selected").val();
			                              			 console.log(value);
			                                         $("#timeNo").val(value);
			                              		}
			                              </script>
			                              <button type="submit">좌석 불러오기</button>
              		</form>
					</td>
				</tr>
			</table>
	<form action="buyTwo.do" method="post" id="joinForm">
		<input type="hidden" name="artNo" value="${ s.artNo }"> 
		<input type="hidden" name="timeNo" value="${ s.timeNo }"> 
			<div id="bor">
				<p>선택한 좌석:</p>
						<input type="text" name="seatName[]" id="whktjr">
				<button type="submit" id="goBuy">구매</button>
				<button type="button" onclick="re();" id="ree">취소</button>
			</div>
		<br>

		</form>
        </c:if>
        
        <!-- 전시  -->
        <c:if test="${art.artType==0 }">
        <form action="buyExhibition.do" method="post" id="joinForm">
			<input type="hidden" name="artNo" value="${ s.artNo }"> 
			<input type="hidden" name="timeNo" value="${ s.timeNo }"> 
				<div id="bor">
					<p>${ sList[0].seatName } : <select name="count" class="tt">
												<option value="1">1매</option>
												<option value="2">2매</option>
												<option value="3">3매</option>
												<option value="4">4매</option>
												<option value="5">5매</option>
												<option value="6">6매</option>
												<option value="7">7매</option>
												<option value="8">8매</option>
												<option value="9">9매</option>
												<option value="10">10매</option>
										</select>
						${ sList[0].price }원
					</p> 
					<button type="submit" id="goBuy">구매</button>
				</div>
			<br>
		</form>
        </c:if>
	</section>
	
	<script>

        $(document).ready(function () {
            $("input[type=checkbox]").change(checkedChange);
        });
        
        var tt="";
        function checkedChange() {
            if ($(this).prop("checked")) {
                $(this).next().css({ "background": "red" });
                $(this).attr("disabled", "disabled");
                tt+=$(this).val()+" ";
            }
            $("#whktjr").val(tt);
        }
        
        function re(){
        	tt="";
        	$("#whktjr").html(tt);
        	$("input[type=checkbox]").attr("disabled", false);
        	$("input[type=checkbox]").prop("checked", false);
        	$("label").css({ "background": "white" });
        }
      </script>
        
        
</body>
</html>