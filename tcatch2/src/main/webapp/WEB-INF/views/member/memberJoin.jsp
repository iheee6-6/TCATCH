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
	width: 700px;
}

.btn-lg {
	width: 247px;
}

.mb-4 {
	margin-top: 50px;
}

body {
	background-color: white;
}

h1, label, button, p, table {
	font-family: 'Do Hyeon', sans-serif;
}

.joinbtn {
	text-align: center;
}

.btn-danger {
	width: 250px;
	height: 50px;
	font-size: 20px;
}

th {
	font-size: 20px;
	font-weight: 100;
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
<jsp:include page="../common/menubar.jsp"/>
<br><br><br><br>

	<form class="form-signin" action="minsert.do" method="post"
		id="joinForm" onsubmit="return validate()">
		<div class="text-center mb-4">
			<!-- <img class="mb-4" src="로고.png" alt="" width="100" height="90"> -->
			<h1 class="mb-4" style="font-family: 'Do Hyeon', sans-serif; font-size:40px;">Ticket Catch</h1>
			<h1 class="h3 mb-3 font-weight-normal" style="font-family: 'Do Hyeon', sans-serif;">회원가입</h1>
		</div>
		<table align="center" width="600" height="600">
			<tr>
				<th>이름 *</th>
				<td><input type="text" name="name" size="30"></td>
			</tr>

			<tr>
				<th>생년월일</th>
				<td><input type="text" name="birth"></td>
			</tr>
			<tr>
				<th>성별 *</th>
				<td><input type="radio" name="gender" value="M">남&emsp;
					<input type="radio" name="gender" value="F">여</td>
			</tr>

			<tr>
				<th>아이디 *</th>
				<td><input type="text" name="id" id="userId" size="30">
					<span class="guide ok">이 아이디는 사용 가능합니다.</span> 
					<span class="guide error">이 아이디는 사용할 수 없습니다.</span> 
					<input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0"></td>
			</tr>
			<tr>
				<th>비밀번호 *</th>
				<td><input type="password" name="pwd" size="30"></td>
			</tr>
			<tr>
				<th>비밀번호 확인 *</th>
				<td><input type="password" name="pwd2" size="30"></td>
			</tr>

			<tr>
				<td>우편번호</td>
				<td><input type="text" name="post" class="postcodify_postcode5"
					size="10" />
					<button type="button" id="postcodify_search_button">검색</button></td>
			</tr>
			<tr>
				<td>도로명 주소</td>
				<td><input type="text" name="address1"
					class="postcodify_address" size="30" value="" /></td>
			</tr>
			<tr>
				<td>상세 주소</td>
				<td><input type="text" name="address2"
					class="postcodify_extra_info" size="30" value="" /></td>
			</tr>
			<tr>
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
				<th scope="row">* 이메일 (인증 필수)</th>
				<td>
					<div id="email">
						<input name="email" class="emailcheck0" id="text">
						<button class="btn" type="button" onclick="emailCheck();"
							id="emailcheck1" name="emailcheck">인증하기</button>
					</div>
				</td>
			</tr>

		</table>
		<div class="joinbtn">
			<button class="btn btn-lg btn-primary btn-block2" style="font-family: 'Do Hyeon', sans-serif;">회원가입</button>
			&emsp;
			<button type="button" class="btn btn-danger" style="font-family: 'Do Hyeon', sans-serif;"
				onclick="location.href='home.do'">메인으로</button>
		</div>
	</form>
	
	<script>
		$(function() {
			$("#userId").on("keyup", function() {
				var userId = $(this).val();

				if (userId.length < 4) {
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
							$("#idDuplicateCheck").val(0); // 회원 가입 가능 값
						}
					},
					error : function(e) {
						console.log(e);
					}
				});

			});
		});

		function validate() {
			// 아이디 중복 체크 후 가입 가능 여부
			if ($("#idDuplicateCheck").val() == 0) {
				alert("사용 가능한 아이디를 입력해주세요.");
				$("#userId").focus();
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