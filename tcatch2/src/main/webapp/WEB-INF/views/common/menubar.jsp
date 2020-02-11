<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>YES24 티켓</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}"
scope="application"/>
<link rel='stylesheet' type='text/css'
	href="${ contextPath }/resources/css/main2.css" />
<link rel='stylesheet' type='text/css'
	href="${ contextPath }/resources/css/menu.css" />
<link rel='stylesheet' type='text/css'
	href="${ contextPath }/resources/css/main1.css" />


<style type="text/css">
body {
	font-family: 'NanumBarunGothic', '맑은 고딕', 'Malgun Gothic', sans-serif;
}
.consice{
	background-color:white;
}

</style>

</head>

<body>



	<header class="perform-top fixed" id="perform-top">
 	        
 	<div class="pf-left">
		<h1><a href="/New/Main.aspx?Gcode=009_201" class="pf-logo"><img src="http://tkfile.yes24.com/imgNew/common/pf-logo.png" alt="" class="trans" /><img src="http://tkfile.yes24.com/imgNew/common/pf-logo-w.png" alt="" class="fixed" /></a></h1>
	</div>
	<div class="pf-center">
		<h2><a href="#">콘서트<span></span></a>

        
        </h2>
		<h2><a href="#" >뮤지컬<span></span></a>

        </h2>
		<h2><a href="#" >연극<span></span></a>
        
        </h2>
		<h2><a href="#">전시<span></span></a>

        </h2>
		
	</div>
	<div class="pf-right">
        <div class="pf-right-menu">
            <a href="/Rank/All">랭킹</a>
        </div>
		<div class="pf-top-srch" autocomplete="off">
			<input type="text" id="searchWord" />
            <input type="hidden" name="" id="searchType" value="" />
			<a href="#" onclick="jsf_mm_Search();"><img src="http://tkfile.yes24.com/imgNew/common/pf-srch.png" alt="" class="trans" /><img src="http://tkfile.yes24.com/imgNew/common/pf-srch-w.png" alt="" class="fixed" /></a>
		</div>
		<a href="/Pages/MyPage/MyPageMain.aspx?Gcode=009_204" class="my-ticket"><span>MY티켓</span></a>
		<a href="/Pages/English/Perf/FnPerfList.aspx?Gcode=009_205" class="global" target="_blank"><span>GLOBAL</span></a>
	</div>
    

        </header>

</body>
</html>