<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TACTCH</title>
<!-- Bootstrap core CSS -->

<style>
.outer {
	width:500px;
	height:1000px;
   margin: auto;
   margin-top: 50px;
}

.tt {
   width: 100%;
   border: 1px solid rgba(0, 128, 0, 0.507);
}
#inner{
width:100%;
margin-bottom:3%;
}
</style>
</head>

 	<body id="page-top">
 	<jsp:include page="../common/menubar2.jsp"/>
<br><br><br><br>
  <div id="inner">
	<section id="portfolio">
		<div class="container">
			<div class="row">
				<div class="outer">
					<br>
					<h2 align="center">회사 입력</h2>

					<div class="tableArea">
						<form action="insertCompany.do" method="post">
								<table id="wrap">
									<tr>
										<td colspan="3"><hr></td>
									</tr>
									<tr>
										<td colspan="3"><label>회사 이름</label></td>									
									</tr>
									<tr>
										<td colspan="3"><input type="text" name="companyName"></td>
									</tr>
									<tr>
										<td colspan="3"><label>회사 소개</label><input type="text" size="58" name="companyInfo" min="0" class="tt"></td>
									</tr> 
									<tr>
										<td colspan="3"><label>회사 번호</label></td>
									</tr>
									<tr><td colspan="3">
											<select id="phone1" name="phone1" required>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select>-<input id="phone2" name="phone2" maxlength="4" type="text" required />-
											<input id="phone3" name="phone3" maxlength="4" type="text" required />
										</td>
									</tr>
									<tr>
										<td colspan="3"><hr></td>
									</tr>
								</table>
								<input type="button" id="add" value="회차 추가">
								
								<div align="center">
									<button type="submit" value="등록하기">등록하기</button>
								</div>
								<br>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section></div>
	<jsp:include page="../common/footer.jsp" />
</body>

</html>