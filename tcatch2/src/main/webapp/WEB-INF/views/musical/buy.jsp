<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
	<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BUY</title>

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
table {
	margin: auto;
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
		<form action="buy.do" method="post" id="joinForm">
		<input type="hidden" name="artNo" value="${ s.artNo }"> 
		<input type="hidden" id="timeNo" name="timeNo" value=""> 
				회차선택 &nbsp; : &nbsp;<select id="timeSelect" class="tt">
                                    <option>----</option>
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