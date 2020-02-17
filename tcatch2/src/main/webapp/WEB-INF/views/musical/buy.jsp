<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BUY</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
			<table>
				<thead>
					<tr>
						<td colspan="31"><br>무대 방향 <br><hr>
						</td>
					</tr>
				</thead>
				<tbody>
				
				</tbody>
			</table>
			<div id="bor">
				<p>선택한 좌석:</p>
				<div id="whktjr"></div>
				<button type="submit" id="goBuy">구매</button>
				<button type="button" onclick="re();" id="ree">취소</button>
			</div>
			<br>
		</form>
	</section>


	<script>
        $(document).ready(function () {
            for(var j = 1 ; j <=15; j++){          
                $("tbody").append("<tr>");
                    for (var i = 1; i <=30; i++) {
                        if(i==16){
                        $("tbody").append("<td  id='a1'>"+String.fromCharCode(j+64)+"</td>");
                        }
                    $("tbody").append("<td><input type='checkbox' id='c" +j+"_"+i + "' value="+String.fromCharCode(j+64)+"-"+i+"><label class='l'for='c" +j+"_"+i + "'" + "></label></td>");               
                }
                $("tbody").append("</tr>");
            }
            $("input[type=checkbox]").change(checkedChange);
        });
        
        var tt="";
        function checkedChange() {
            if ($(this).prop("checked")) {
                $(this).next().css({ "background": "red" });
                $(this).attr("disabled", "disabled");
                tt+=$(this).val()+"  ";
            }
            $("#whktjr").html(tt);
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