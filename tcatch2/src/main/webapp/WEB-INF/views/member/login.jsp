<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/floating-labels/">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
    


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      .form-signin{
        margin: auto;
        width: 300px;
      }
      .btn{
        width: 147px;
      }
      .mb-4{
        margin-top:200px;
        font-size:50px;
      }
      body{
        background-color:white;
      }
    </style>

<head>
	<title>Login</title>
	<meta charset="UTF-8">
</head>

<body>
<jsp:include page="../common/menubar.jsp"/>
    <form class="form-signin">
  <div class="text-center mb-4">
    <!-- <img class="mb-4" src="로고.png" alt="" width="100" height="90"> -->
    <h1 class="mb-4" style="font-family: 'Do Hyeon', sans-serif;">Ticket Catch</h1>
    <h1 class="h3 mb-3 font-weight-normal" style="font-family: 'Do Hyeon', sans-serif;">로그인/회원가입</h1>
  </div>

  <div class="form-label-group">
      <label for="inputEmail" style="font-family: 'Do Hyeon', sans-serif;">I D</label>
    <input type="text" id="inputId" class="form-control" placeholder="ID" required autofocus>
  </div>
  <br>

  <div class="form-label-group">
      <label for="inputPassword" style="font-family: 'Do Hyeon', sans-serif;">Password</label>
    <input type="password" id="inputPassword" class="form-control" placeholder="PWD" required>
    
  </div>
  <br>

  <button class="btn btn-lg btn-primary btn-block1" type="submit" style="font-family: 'Do Hyeon', sans-serif;">로그인</button>
  <button class="btn btn-lg btn-primary btn-block2" type="submit" onclick="location.href='enrollView.do'" style="font-family: 'Do Hyeon', sans-serif;">회원가입</button>
  <p class="mt-5 mb-3 text-muted text-center" style="font-family: 'Do Hyeon', sans-serif;">T CATCH에 오신 것을 환영합니다.</p>
  <p class="mt-5 mb-3 text-muted text-center" style="font-family: 'Do Hyeon', sans-serif;">로그인하시면 더욱 많은 서비스를 이용가능합니다.</p>
</form>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</body>
</html>