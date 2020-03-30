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

.joinbtn {
	text-align: center;
}

.btn-danger {
	width: 250px;
	height: 50px;
	font-size: 20px;
}

th {
	font-size: 15px;
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
	<jsp:include page="../common/menubar2.jsp" />

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
							<th>* 아이디</th>
							<td><input type="text" name="id" id="userId" size="30"
								value="${loginUser.id }" readonly></td>
						</tr>
						
						<tr>
							<th>* 이름</th>
							<td><input type="text" id="name" name="name" size="30"
								value="${loginUser.name }" required>
								<span class="guide error"> 한글로 2글자 이상 입력</span>
								</td>
						</tr>

						<tr>
							<th>생년월일</th>
							<td><input type="text" name="birth" id="userBirth"
								value="${loginUser.birth}" readonly></td>
						</tr>
						<tr>
							<th> 성별</th>
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
							<th>* 비밀번호</th>
							<td><input type="password" id="pwd1" name="pwd1" size="30"
								required>
								<span class="guide error">8자 이상 15자 미만으로 영문 또는 숫자 
								</span></td>
						</tr>
						<tr>
							<th>* 비밀번호 확인</th>
							<td><input type="password" id="pwd2" name="pwd" size="30"
								required> <span class="guide ok">비밀번호가 일치합니다.</span> <span
								class="guide error">비밀번호가 일치하지 않습니다.</span> 
								</td>
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
							<th>우편번호</th>
							<td><input type="text" name="post"
								class="postcodify_postcode5" size="10" value="${addr1 }" />
								<button type="button" id="postcodify_search_button">검색</button></td>
						</tr>
						<tr>
							<th>도로명 주소</th>
							<td><input type="text" name="address1"
								class="postcodify_address" size="30" value="${addr2 }" /></td>
						</tr>
						<tr>
							<th>상세 주소</th>
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
							<th scope="row">* 이메일</th>
							<td>
								<div id="email">
									<input name="email" class="emailcheck0" id="text"
										value="${loginUser.email}" readonly>
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
	
	<script>
	$(function() {
		$("#userU").addClass("active");
		
		$("#name").on("keyup",function(){
			console.log("name");
			if(!(/^[가-힣]{2,}$/.test($(this).val()))){
				console.log("name안");
           		$(this).siblings('.guide.error').show();
			}else{
				$(this).siblings('.guide.error').hide();
			}
		});
		
		$("#pwd1").on("keyup", function() {
			$(".guide.ok").hide();
		 	if(!(/^[a-zA-Z\d]{8,15}$/.test($(this).val()))){
		 		$(this).siblings('.guide.error').show();
		 	}else{
		 		$(this).siblings('.guide.error').hide();
		 	}
		 });
		 
		$("#pwd2").on("keyup", function() {
			var pwd2 = $(this).val();
			var pwd1 = $("#pwd1").val();
			if(pwd1!=""||pwd2!=""){
				if((/^[a-zA-Z\d]{8,15}$/.test($("#pwd1").val()))){
					console.log(pwd1.value);
					if(pwd1!=pwd2){
						console.log("안");
						$(this).siblings('.guide.error').show();
						$(".guide.ok").hide();
					}else{
						console.log("맞");
						$(this).siblings('.guide.error').hide();
						$(".guide.ok").show();
						//$("#submit").removeAttr("disabled");
						
					}
				}
			}
			
		});
		
		
	});
	function validate(){
		if(!(/^[가-힣]{2,}$/.test($("#name").val()))){
			alert('이름은 한글로 2글자 이상 입력');
			$("#name").select();
			return false;
		}
		if(!(/^[a-zA-Z\d]{8,15}$/.test($("#pwd1").val()))){
			alert('비밀번호는 8자 이상 15자 미만으로 영문 또는 숫자로 설정해주세요');
			$("#pwd1").select();
			return false;
		}
		if($("#pwd1").val() != $("#pwd2").val()){
			alert("비밀번호가 일치하지 않습니다.");
			$("#pwd2").select();
			return false;
        }
		return true;
	}
	</script>
	
	

	<jsp:include page="../common/footer.jsp" />
	
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script>
		$(function() {
			$("#postcodify_search_button").postcodifyPopUp();
		});
	</script>
</body>
</html>