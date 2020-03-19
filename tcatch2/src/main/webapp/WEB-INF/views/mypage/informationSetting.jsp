<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/menubar2.jsp" />

	<div class="wrapper">
		<jsp:include page="leftMenu.jsp" />

		<div class="main-panel">
			<div class="content" style="margin-top: 20px;">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title text-danger" style="float: left;">
									<i class="fa fa-* fa-bookmark"></i> &nbsp;회원 정보 관리
								</h4>
							</div>
							<div class="card-body">
								<div style="margin:40px; padding:20px;">
									<button class="btn" onclick="location.href='memberUpdateView.do'">회원 정보 수정하기</button>
								</div>
								<hr>
								<div style="margin:40px; padding:20px;">
									<c:url var="mdelete" value="memdelete.do">
										<c:param name="id" value="${ loginUser.id }"/>
									</c:url>
									<button class="btn" onclick="location.href='${mdelete}'">탈퇴하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<script>
			function memberDelete(){
				if(confirm("정말 탈퇴하시겠습니까?")){
					
				}
			}
			
			$(function(){
				
			});
		</script>
</body>
</html>