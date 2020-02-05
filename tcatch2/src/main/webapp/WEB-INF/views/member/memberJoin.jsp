<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	span.guide{
		display:none;
		font-size:12px;
		top:12px;
		right:10px;
	}
	
	span.ok {
		color:green;
	}
	
	span.error {
		color:red;
	}
	
	
	
	
	
</style>
</head>
<body>
	
	<h1 align="center">회원가입</h1>
	<div align="center">
		<form action="minsert.do" method="post" id="joinForm"
		onsubmit="return validate()">
			<table width="500" cellspacing="5">
				<tr>
					<td width="150">* 아이디</td>
					<td width="450">
						<input type="text" name="id" id="userId">
						<!-- ajax 이후에 적용 -->
						<span class="guide ok">이 아이디는 사용 가능합니다.</span>
						<span class="guide error">이 아이디는 사용할 수 없습니다.</span>
						<input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0">
					</td>
				</tr>
				<tr>
					<td>* 이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>* 비밀번호</td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td>* 비밀번호 확인</td>
					<td><input type="password" name="pwd2"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<input type="radio" name="gender" value="M">남
						<input type="radio" name="gender" value="F">여
					</td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="number" name="age" min="20" max="100"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="tel" name="phone"></td>
				</tr>
				<!-- 주소는 도로명주소 API : postcodify를 이용해서 작성 -->
				<tr>
					<td>우편번호</td>
					<td>
						<input type="text" name="post" class="postcodify_postcode5" size="6" />
						<button type="button" id="postcodify_search_button">검색</button>
					</td>
				</tr>
				<tr>
					<td>도로명 주소</td>
					<td><input type="text" name="address1" class="postcodify_address" value="" /></td>
				</tr>
				<tr>
					<td>상세 주소</td>
					<td><input type="text" name="address2" class="postcodify_extra_info" value="" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button>가입하기</button>
						&nbsp;
						<input type="reset" value="작성취소">
					</td>
				</tr>
			</table>
		</form>
		<br>
		<br>
		<div align="center">
			<a href="home.do">시작 페이지로 이동</a>
		</div>
	</div>


	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>

	<!-- ajax 이후 추가 : 아이디 중복 확인 -->
	<script>
		$(function(){
			$("#userId").on("keyup", function(){
				var userId = $(this).val();
				
				if(userId.length < 4){
					$(".guide").hide(); // 보여졌던 글 사라지게
					$("#idDuplicateCheck").val(0); // 가입 가능 여부를 불가로 지정
					return; // 4글자 이하는 아래 ajax를 시행하지 않고 리턴
				}
				
				$.ajax({
					url:"dupid.do",
					data:{id:userId},
					success:function(data){
						// 1,2번 방법
						// if(data == "true"){
						// 3번 방법
						if(data.isUsable == true){
							$(".guide.error").hide();
							$(".guide.ok").show();
							$("#idDuplicateCheck").val(1); // 회원 가입 가능 값
						}else{
							$(".guide.error").show();
							$(".guide.ok").hide();
							$("#idDuplicateCheck").val(0); // 회원 가입 가능 값
						}
					},
					error:function(e){
						console.log(e);
					}
				});
				
				
				
				
			});
		});
	
	function validate(){
		// 아이디 중복 체크 후 가입 가능 여부
		if($("#idDuplicateCheck").val() == 0){
			alert("사용 가능한 아이디를 입력해주세요.");
			$("#userId").focus();
			return false;
		}
		return true;
	}
		
		
		
	</script>












</body>
</html>