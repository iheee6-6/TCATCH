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
	width: 15px;
	height: 15px;
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
		<form action="buyTwo.do" method="post" id="joinForm">
		<input type="hidden" name="artNo" value="${ s.artNo }"> 
		<input type="hidden" name="timeNo" value="${ s.timeNo }"> 
		<!-- 회차선택 &nbsp; : &nbsp;<select name="timeNo" class="tt">
                                    <option>----</option>
                                    <option value="0">1회차 날짜 : </option>
                                    <option value="1">2회차 날짜 : </option>
                                    <option value="2">3회차 날짜 : </option>
                                    <option value="3">4회차 날짜 : </option>
                                    <option value="4">5회차 날짜 : </option>
                                    <option value="5">6회차 날짜 : </option>
                                    <option value="6">7회차 날짜 : </option>
                                    <option value="7">8회차 날짜 : </option>
                                    <option value="8">9회차 날짜 : </option>
                                    <option value="9">10회차 날짜 : </option>
                              </select> -->
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
	var sC =${sCount};
	console.log(sC);
	console.log(Math.floor(sC/30));
	console.log((sC%30));
	
        $(document).ready(function () {
        	/* var count =0;
            for(var j = 0 ; j <=(sC/30); j++){          
                $("tbody").append("<tr>");
                    for (var i = 1; i <=30; i++) {
                    	var sI = "${sList[0].status}";
                        if(i==16){
                        $("tbody").append("<td  id='a1'>"+String.fromCharCode(j+65)+"</td>");
                        }
                        if(sI == "Y"){
                            $("tbody").append("<td><input type='checkbox' id='c" +j+"_"+i + "' value="+String.fromCharCode(j+65)+"-"+i+"><label class='l'for='c" +j+"_"+i + "'" + "></label></td>");
                        }else if(sI == "N"){
                        	console.log("N");
                        	$("tbody").append("<td><input type='checkbox' id='c" +j+"_"+i + "' value="+String.fromCharCode(j+65)+"-"+i+"><label class='l'for='c" +j+"_"+i + "'" + "></label></td>");
                            $("#c" +j+"_"+i).next().css({ "background": "red" });
                            $("#c" +j+"_"+i).attr("disabled", "disabled");
                        }
                    if(j==Math.floor(sC/30) && i==(sC%30)){
                    	//마지막 라운드 뽑아내면 버림 .
                    	break;                    
                    }
                    count++;
                } 
                $("tbody").append("</tr>");
            } */
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