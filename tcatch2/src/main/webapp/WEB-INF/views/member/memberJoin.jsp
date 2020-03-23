<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.4/examples/floating-labels/">

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
	rel="stylesheet">

<title>TCATCH 회원가입</title>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.form-signin {
	margin: auto;
	width: 1000px;
}

.btn-lg {
	width: 247px;
}

.mb-4 {
	margin-top: 60px;
}

body {
	background-color: white;
}

h1, label, button, p, table {

}

.joinbtn {
	text-align: center;
}

.btn{
	width: 250px;
	height: 50px;
	font-size: 20px;
}

th {
	width:150px;
	font-size: 17px;
	font-weight: 900;
}
tr>td{
	width:100px;
}
td{
	width:600px;
}
#phone1 {
	width: 80px;
	height: 32px;
}

span.guide {
	display: none;
	font-size: 12px;
	top: 12px;
	right: 10px;
}

span.ok {
	color: green;
}

span.error {
	color: red;
}
</style>
</head>
<body>
<jsp:include page="../common/menubar2.jsp"/>
<br><br><br><br><br>

	<form class="form-signin" action="minsert.do" method="post"
		id="joinForm" onsubmit="return validate()">
		<div class="text-center mb-4">
			<!-- <img class="mb-4" src="로고.png" alt="" width="100" height="90"> -->
			<h1 class="mb-4" style="font-family: 'Do Hyeon', sans-serif; font-size:40px;">Ticket Catch</h1>
			<h1 class="h3 mb-3 font-weight-normal" style="font-family: 'Do Hyeon', sans-serif;">회원가입</h1>
		</div>
		<table align="center" width="1000" height="600">
			<tr>
				<td></td>
				<th>이름 *</th>
				<td><input type="text" name="name" size="30"></td>
			</tr>

			<tr>
			<td></td>
				<th>생년월일</th>
				<td><input type="text" name="birth"></td>
			</tr>
			<tr>
			<td></td>
				<th>성별 *</th>
				<td><input type="radio" name="gender" value="M">남&emsp;
					<input type="radio" name="gender" value="F">여</td>
			</tr>

			<tr>
			<td></td>
				<th>아이디 *</th>
				<td><input type="text" name="id" id="userId" size="30">
					<span class="guide ok">이 아이디는 사용 가능합니다.</span> 
					<span class="guide error">이 아이디는 사용할 수 없습니다.</span> 
					<input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0"></td>
			</tr>
			<tr>
			<td></td>
				<th>비밀번호 *</th>
				<td><input type="password" name="pwd" size="30"></td>
			</tr>
			<tr>
			<td></td>
				<th>비밀번호 확인 *</th>
				<td><input type="password" name="pwd2" size="30">
				<span id="pwdResult"></span></td>
			</tr>

			<tr>
			<td></td>
				<th>우편번호</th>
				<td><input type="text" name="post" class="postcodify_postcode5"
					size="10" />
					<button type="button" id="postcodify_search_button">검색</button></td>
			</tr>
			<tr>
			<td></td>
				<th>도로명 주소</th>
				<td><input type="text" name="address1"
					class="postcodify_address" size="30" value="" /></td>
			</tr>
			<tr>
			<td></td>
				<th>상세 주소</th>
				<td><input type="text" name="address2"
					class="postcodify_extra_info" size="30" value="" /></td>
			</tr>
			<tr>
			<td></td>
				<th scope="row">휴대전화</th>
				<td><select id="phone1" name="phone1" required>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
				</select>-<input id="phone2" name="phone2" maxlength="4" type="text" required />-<input
					id="phone3" name="phone3" maxlength="4" type="text" required /></td>
			</tr>
			<tr>
			<td></td>
				<th scope="row">* 이메일 (인증 필수)</th>
				<td>
					<div id="email">
						<input name="email" class="emailcheck0" id="mEmail">
						<button class="btn" type="button" onclick="emailCheck();"
							id="emailcheck1" name="emailcheck">인증하기</button><br>
							 <input name="email" class="emailcheck5" id="text">
                                                        <button class="btn" type="button" onclick="emailCheck1();"
                                                        id="emailcheck2" name="emailcheck1">인증번호 확인</button><br>
					</div>
				</td>
			</tr>

		</table>
		<div class="joinbtn">
			<button class="btn btn-lg btn-primary btn-block2" style="font-family: 'Do Hyeon', sans-serif; font-size:20px;">회원가입</button>
			&emsp;
			<button type="button" class="btn btn-danger" style="font-family: 'Do Hyeon', sans-serif;"
				onclick="location.href='home.do'">메인으로</button>
		</div>
	</form>
	
	<script>
	var okEmail = false;
		$(function() {
			$("#userId").on("keyup", function() {
				var userId = $(this).val();
				
				if (userId.length <4) {
					$(".guide").hide(); // 보여졌던 글 사라지게
					$("#idDuplicateCheck").val(0); // 가입 가능 여부를 불가로 지정
					return; // 4글자 이하는 아래 ajax를 시행하지 않고 리턴
				}

				$.ajax({
					url : "dupid.do",
					data : {
						id : userId
					},
					success : function(data) {
						// 1,2번 방법
						// if(data == "true"){
						// 3번 방법
						if (data.isUsable == true) {
							$(".guide.error").hide();
							$(".guide.ok").show();
							$("#idDuplicateCheck").val(1); // 회원 가입 가능 값
						} else {
							$(".guide.error").show();
							$(".guide.ok").hide();
							$("#idDuplicateCheck").val(0); // 회원 가입 불가능 값
						}
					},
					error : function(e) {
						console.log(e);
					}
				});

			});
		});
		
		function emailCheck(){
        	alert("이메일이 전송되었습니다");
				var email = $("#mEmail").val();
				
				$.ajax({
					// url : 데이터를 전송할 url(필수!!!)
					url : "email.do",
					
					// data : 요청 시 전달할 파라미터 설정
					data:{email:email},
					// key:value
					
					// type : 전송 방식(GET / POST)
					type : "get",
					
					// success : Ajax 통신 성공 시 처리할 함수를 지정하는 속성
					success : function(data){
						// result 매개변수 : 서버에서 응답이 왔을 때 그 값이 저장 되는 변수
						// 매개변수명 임의 지정 가능
						key = data;
					},
					
					// error : Ajax 통신 실패 시 처리할 함수를 지정하는 속성
					error : function(){
						console.log('Ajax 통신 실패...');
						checkEmail = false;
					}					
				});
				
        }
        
       function emailCheck1() {
    	   var code = $(".emailcheck5").val();
			if(key == code) {
				alert("인증되었습니다.")
				okEmail = true;
			}else {
				alert("인증번호가 일치하지 않습니다.")
			}
       }

		function validate() {
			// 아이디 중복 체크 후 가입 가능 여부
			if ($("#idDuplicateCheck").val() == 0) {
				alert("사용 가능한 아이디를 입력해주세요.");
				$("#userId").focus();
				return false;
			}
			if(!(/^[a-z][a-z\d]{3,11}$/.test($("#joinForm input[name=userId]").val()))){
                alert('아이디는 영소문자 + 숫자 4~12자 입력');
                $("#joinForm input[name=userId]").select();
                return false;
            }
            
            if($("#joinForm input[name=pwd]").val() != $("#joinForm input[name=pwd2]").val()){
                $("#pwdResult").text("비밀번호 불일치").css("color","red");
                return false;
            }
            
            if(!(/^[가-힣]{2,}$/.test($("#joinForm input[name=name]").val()))){
                alert('이름은 한글로 2글자 이상 입력');
                $("#joinForm input[name=name]").select();
                return false;
            }	
            
            if(!(/^[a-zA-Z\d]{8,15}$/.test($("#joinForm input[name=pwd]").val()))){
                alert('비밀번호는 8자 이상 15자 미만으로 영문 + 숫자 , 숫자 + 영문 으로 설정해주세요');
                $("#joinForm input[name=pwd]").select();
                return false;
            }
            
            if(okEmail == false) {
            	alert("이메일 인증을 해주세요.")
            	return false;
            }
            
            alert("회원가입 성공!");
            return true;
		}
		
		
	</script>
	
	<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script>
		$(function() {
			$("#postcodify_search_button").postcodifyPopUp();
		});
	</script>

	



</body>
</html>