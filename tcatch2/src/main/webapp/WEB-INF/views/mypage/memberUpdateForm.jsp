<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>Insert title here</title>
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
	<jsp:include page="../common/menubar.jsp" />

	<div class="wrapper">
		<jsp:include page="leftMenu.jsp" />

		<div class="main-panel">
			<div class="content" style="margin-top: 20px;">

				<form class="form-signin" action="memupdate.do" method="post"
					id="updateForm" onsubmit="return validate()">
					<h4 class="card-title text-danger"
						style="float: left; margin-bottom: 30px">
						<i class="fa fa-* fa-bookmark"></i> &nbsp;회원 정보 수정
					</h4>

					<table align="center" width="600" height="600">
						<tr>
							<th>이름 *</th>
							<td><input type="text" name="name" size="30"
								value="${loginUser.name }" required></td>
						</tr>

						<tr>
							<th>생년월일</th>
							<td><input type="text" name="birth" id="userBirth"
								value="${loginUser.birth}"></td>
						</tr>
						<tr>
							<th>성별 *</th>
							<td><input type="radio" name="gender" value="M" id="m">남 &nbsp;
									<input type="radio" name="gender" value="F" id="f">여</td>
							<c:if test="${loginUser.gender eq 'M' }">
								<script>
									$("#m").prop("checked",true);
								</script>
							</c:if>
							<c:if test="${loginUser.gender eq 'F' }">
								<script>
									$("#f").prop("checked",true);
								</script>
							</c:if>
						</tr>

						<tr>
							<th>아이디 *</th>
							<td><input type="text" name="id" id="userId" size="30"
								value="${loginUser.id }" readonly></td>
						</tr>
						<tr>
							<th>비밀번호 *</th>
							<td><input type="password" id="pwd" name="pwd1" size="30"
								required></td>
						</tr>
						<tr>
							<th>비밀번호 확인 *</th>
							<td><input type="password" id="pwd2" name="pwd2" size="30"
								required> <span class="guide ok">비밀번호가 일치합니다.</span> <span
								class="guide error">비밀번호가 일치하지 않습니다.</span> <input type="hidden"
								name="pwdEqCh" id="pwdEqCh" value="0"></td>
						</tr>
						<c:forTokens var="addr" items="${ loginUser.address }" delims=","
							varStatus="status">
							<c:if test="${ status.index eq 0 }">
								<c:set var="addr1" value="${ addr }" />
							</c:if>
							<c:if test="${ status.index eq 1 }">
								<c:set var="addr2" value="${ addr }" />
							</c:if>
							<c:if test="${ status.index eq 2 }">
								<c:set var="addr3" value="${ addr }" />
							</c:if>
						</c:forTokens>
						<c:forTokens var="phone" items="${loginUser.phone }" delims="-"
							varStatus="status">
							<c:if test="${status.index eq 0 }">
								<c:set var="phone1" value="${phone}" />
							</c:if>
							<c:if test="${status.index eq 1 }">
								<c:set var="phone2" value="${phone}" />
							</c:if>
							<c:if test="${status.index eq 2 }">
								<c:set var="phone3" value="${phone}" />
							</c:if>
						</c:forTokens>
						<tr>
							<td>우편번호</td>
							<td><input type="text" name="post"
								class="postcodify_postcode5" size="10" value="${addr1 }" />
								<button type="button" id="postcodify_search_button">검색</button></td>
						</tr>
						<tr>
							<td>도로명 주소</td>
							<td><input type="text" name="address1"
								class="postcodify_address" size="30" value="${addr2 }" /></td>
						</tr>
						<tr>
							<td>상세 주소</td>
							<td><input type="text" name="address2"
								class="postcodify_extra_info" size="30" value="${addr3 }" /></td>
						</tr>
						<tr>
							<th scope="row">휴대전화</th>
							<td><select id="phone1" name="phone1" value="${ phone1}">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select>-<input id="phone2" name="phone2" maxlength="4" type="text"
								value="${ phone2}" />-<input id="phone3" name="phone3"
								maxlength="4" type="text" value="${ phone3}" /></td>
						</tr>
						<tr>
							<th scope="row">* 이메일 (인증 필수)</th>
							<td>
								<div id="email">
									<input name="email" class="emailcheck0" id="text"
										value="${loginUser.email}">
									<button class="btn" type="button" onclick="emailCheck();"
										id="emailcheck1" name="emailcheck">인증하기</button>
								</div>
							</td>
						</tr>

					</table>
					<div class="joinbtn">
						<button class="btn btn-lg btn-primary btn-block2" id="submit">수정완료</button>
					</div>
				</form>

			</div>
		</div>

	</div>
	<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
	<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script>
	$(function() {
		$("#userU").addClass("active");
		$("#submit").attr("disabled","disabled");
		
		$("#pwd2").on("keyup", function() {
			var pwd2 = $(this).val();
			var pwd1 = $("#pwd1").val();
			if(pwd1!=""||pwd2!=""){
				if(pwd1!=pwd2){
					$(".guide.error").show();
					$(".guide.ok").hide();
				}else{
					$(".guide.error").hide();
					$(".guide.ok").show();
					$("#submit").removeAttr("disabled");
					
				}
			}
			
		});
	});

	</script>
	
	

	<jsp:include page="../common/footer.jsp" />
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