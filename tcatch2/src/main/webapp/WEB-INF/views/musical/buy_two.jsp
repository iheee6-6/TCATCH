<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>��뼺/������</title>

<link rel='stylesheet' type='text/css'
	href='http://tkfile.yes24.com/New/Css/reset.css' />
<link rel='stylesheet' type='text/css'
	href='http://tkfile.yes24.com/New/Css/sub.css' />

<!--          -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
	rel="stylesheet">
	
	
<script type='text/javascript'
	src='http://tkfile.yes24.com/New/Js/jquery-3.4.1_min.js'></script>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
body {
	font-family: 'NanumBarunGothic', '���� ���', 'Malgun Gothic', sans-serif;
}

#whktjr {
	border: 1px solid black;
	width: 300px;
	height: 50px;
	text-align: center;
}

#goBuy, #ree {
	width: 140px;
	float: left;
	disply: inline-block;
}

#rn-05 {
	float: right;
}

#phone1 {
	width: 80px;
	height: 32px;
}

/* ���̺� */
#table1 {
	width: 100%;
	font-size: 20px;
	text-align: center;
}

#table1 td {
	height: 50px;
}

.tablee {
	width: 100%;
}

.tablee td {
	padding: 10px;
}

#content {
	width: 50%;
}
</style>
</head>
<body>
		<p class='m2-tit'>
			<img src='${contextPath}/resources/images/musical/mLogo.png' />
			</p>
		<div class="ms-list-view">
		
		<div class="rn-03-right">
			<!--��ǰ����-->

			<dl>
				<dt>��¥</dt>
				<dd>&nbsp;2020.03.26 (��)</dd>
				<dt>�ð�</dt>
				<dd>&nbsp;[2ȸ]19�� 00 ��</dd>
				<dt>�ż�</dt>
				<dd>${count } ��</dd>
				<dt id="dtPrice">�¼�</dt>
				<dd>${seatName}</dd>

			</dl>

			<!--����Ʈ-->
			<dl>
				<dt>�����ð� �ȳ�</dt>
				<dd>2020�� 3�� 8��(��) ���� 6��</dd>
				<dt>�������</dt>
				<dd>
					�ù� ���  <input type="radio" name="r" value="0" id="xorqo">
				</dd>
				<dd>
					���� ����  <input type="radio" name="r" value="1" id="guswkd">
				</dd>
				
				<script>
				$(document).ready(function () {
			        $('input[type=radio]').click(function () {
			          // getter
			          var radioVal = $('input[name="r"]:checked').val();
			          $("#type").val(radioVal);
			        });
			      });
				</script>
			</dl>
			<pre>
�� ���� �ݾ׿� ���� ��ۺ� ���� ����˴ϴ�.(50,000�� �̸�: 3,000��)
�� ����/ �����갣 ������� ��� ��ۺ� �߰��˴ϴ�.
�� ���ֵ� 3000��, ���ֵ� �� �����갣 2000��
</pre>
			<!--�ڵ��ֹ���������-->
		<form action="buyEnd.do" method="post">
			<input type="hidden" name="mNo" value="${ loginUser.no }">
			<input type="hidden" name="seatName" value="${seatName}">
			<input type="hidden" name="seatSal" value="${count * 40000}">
			<input type="hidden" name="type" id="type" value="">
			<input type="hidden" name="purchaseCount" value="${count}">
			<input type="hidden" name="timeNo" value="${timeNo }">
			<input type="hidden" name="artNo" value="${artNo }">
			
			
			<div class="rn-05">
				<!--���Ź�ư-->
				<button type="submit" class="rn-bb03">���� �ϱ�</button>
				<!--��ҹ�ư-->
				<a href="#"  onclick="cancel();"
					class='rn-bb03'>����ϱ�</a>
			</div>
		</form>
			<script>
				function cancel(){
					window.close();
				}
			</script>
			


		</div>
		<!--rn-03-right-->
		</div>

</body>
</html>