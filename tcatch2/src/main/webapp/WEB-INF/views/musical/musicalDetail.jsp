<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>






<!doctype html> 
<html lang="ko">
 <head>
  <title>��뼺/������</title>

  <link rel='stylesheet' type='text/css' href='http://tkfile.yes24.com/New/Css/reset.css' />
  <link rel='stylesheet' type='text/css' href='http://tkfile.yes24.com/New/Css/sub.css' />	

  
  <script type='text/javascript' src='http://tkfile.yes24.com/New/Js/jquery-3.4.1_min.js'></script>


  <style type="text/css">
  	body{font-family: 'NanumBarunGothic', '���� ���', 'Malgun Gothic', sans-serif;}
  </style>
 </head>
 <body>
<jsp:include page="../common/menubar.jsp"/>
<br><br><br><br>
 
 <form name="mainForm" method="post" action="./36369?IdPerf=36369" id="mainForm">

<div class="renew-wrap">
	<div class="renew-content">
		<div class="rn-02"><!--����-->
			<p class="rn-big-title">[����] ��������</p>
			<div class="rn-product-short-data">
				<p><span class="ps-date">��¥ ~ ��¥</span><span class="ps-location"> ~��ġ~ </span></p>	
			</div>			
        </div><!--rn-02-->  
	</div>	
</div>

<div class="movie-pop-wrap">
 <!-- ���� ������ ���� ����  -->
</div>

<div class="renew-wrap rw2">
    <div
     class="renew-content">
		<div class="rn-03"><!--���-->
			<div class="rn-03-left"><!--������, ����, ������-->
				<div class="rn-product-imgbox">
					<img class='lazyload' src="http://tkfile.yes24.com/upload2/PerfBlog/202001/20200122/20200122-36049_1.jpg"/><!-- �̹��� -->
				</div>

				<div class="rn-product-social">
					<a href="javascript:;" class="rn-product-good">
                        <img src="http://tkfile.yes24.com/imgNew/sub/rn-product-good1.png" alt="" id="h1" /><!--���ƿ� �ȴ��� ��Ʈ-->
                        <img src="http://tkfile.yes24.com/imgNew/sub/rn-product-good2.png" alt="" id="h2"/><!--���ƿ� ���� ��Ʈ-->
                        <span class="rn-pdg-txt2">��</span>
                        <span class="rn-pdg-txt1"></span>
					</a>
					<script>
					var h1 = document.getElementById("h1");
					var h2 = document.getElementById("h2");
					var aa = document.getElementsByClassName("rn-product-good");

					$("#h1").click(function(){
						$("#h1").hide();
						$("#h2").fadeToggle(0);
					});
					$("#h2").click(function(){
						$("#h2").hide();
						$("#h1").fadeToggle(0);
					});
					</script>
						
				</div>				
            </div><!--rn-03-left-->
            
            
			<div class="rn-03-right"><!--��ǰ����-->
				<div class="rn-product-area1"><!--���, �����ð�, �⿬, ����, ����-->
					<dl>
						<dt>���</dt>
						<dd>&nbsp;�� 19���̻�</dd>
						<dt>�����ð�</dt>
						<dd>&nbsp;�� 999��(���͹̼� ����)</dd>
						<dt>�⿬</dt>
						<dd>&nbsp;
                            ������ �ٺ�(��Ÿ) ,
                            ŷ���� ����(���̽�) , 
                            ������ �ڰ�¼Ҹ�(�巳)
                            
						<dt id="dtPrice">�¼�</dt>
						<dd>
						 <span class='rn-red'>100</span>/100
						</dd>
						
						<dt id="dtPrice">����</dt>
						<dd id="divPrice" class="rn-product-price">
							<ul class="rn-product-price1 scroll-color">
                                <li>R�� <span class='rn-red'>80,000</span>��</li>
                                <li>S�� <span class='rn-red'>60,000</span>��</li>
                                <li>���� <span class='rn-red'>1,890,000</span>��</li>
							</ul>
							<p class='rn-product-price2'>���� ���� �� ������ 
                                <span class='rn-red'>48,000</span>�� ~ �ְ� 
                                <span class='rn-red'>88,000</span>��
                            </p>
						</dd>
					</dl>					
				</div>
                <!--����Ʈ-->
				
				<div class="rn-product-area3"><!--�����ð��ȳ�, �������-->
					<dl>
						<dt>�����ð� �ȳ�</dt>
						<dd>2020�� 3�� 8��(��) ���� 6��</dd>
						<dt>�������</dt>
                        <dd>���� ���� <span class='rn-red'>����</span></dd>
                        <dd>�ù� ��� <span class='rn-red'>����</span></dd>
					</dl>
				</div>

                <!--�ڵ��ֹ���������-->
                
		<div class="rn-05"><!--���Ź�ư-->         
            <a href="#" onclick="window.open('buy.do', 'www.naver.com', 'width=715, height=650');" class='rn-bb03'>�����ϱ�</a>
            
		</div><!--rn-05-->
			</div><!--rn-03-right-->
		</div><!--rn-03-->


        <div class="rn-06" id="divMiddleBanner"></div><!--�߰�����-->
	    

		<div class="rn-07"  style="text-align: center;" ><!--�ϴ���5����ư-->
			<a href="#divMiddleBanner" class="on"><span>������</span></a>
		</div><!--rn-07-->
		<div class="rn-tab-boxes">
			<div class="rn-tab-area rn-08 on" id="rn-tab01" style="display:block;"><!--��1 ������-->
				<div class="rn-0801"><!--���ǻ���-->
					<p class="rn08-tit" id="titPerfNotice">���ǻ���</p>
                    <div><p>��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼��</p></div>
				</div><!--rn-0801-->
				<div class="rn-0803"><!--��������-->
					<p class="rn08-tit">��������</p>
					<div class="rn08-txt" id="divPerfContent">
                        <div><p>��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼�� ��¼��</p></div>
					</div>
				</div><!--rn-0803-->
				<div class="rn-0804"><!--ĳ��������-->
					<div class="rn08-tbl rn-0803-tbl">
						<table>
							<caption></caption>
							<colgroup>
								<col width="18.5%" />
								<col width="*" /> 
							</colgroup>
							<tbody>
								<tr><th scope="row" class="rn08-tbl-tit">��ȹ�� ����</th>
								<td id="divPerfOrganization">ȸ�� ���� �������� </td>
                                </tr>
							</tbody>
						</table>
					</div>
                </div><!--rn-0804-->

				<div class="rn-0805"><!--��ǰ�������� ���-->
					<p class="rn08-tit">��ǰ�������� ���</p>
					<div class="rn08-txt">
						<div class="rn08-tbl rn08-tbl-plus">
							<table>
								<caption></caption>
								<colgroup>
									<col width="18.5%" />
									<col width="31.5%" />
									<col width="18.5%" />
									<col width="31.5%" />
								</colgroup>
								<tbody>
									<tr>
                                        <th scope="row" class="rn08-tbl-tit2">����/��ȹ</th>
                                        <td>ȸ�� �̸� </td>
                                        <th scope="row" class="rn08-tbl-tit2">�Һ��ڻ��</th>
                                        <td>ȸ�� ��ȣ</td>
                                    </tr>
									<tr>
                                        <th scope="row" class="rn08-tbl-tit2">�ֿ�</th>
                                        <td>�ֿ� ����</td>
                                        <th scope="row" class="rn08-tbl-tit2">�������</th>
                                        <td>�� ()���̻�</td>
                                    </tr>
									<tr>
                                        <th scope="row" class="rn08-tbl-tit2">�����ð�</th>
                                        <td>�ð� )</td>
                                        <th scope="row" class="rn08-tbl-tit2">�������</th>
                                        <td>��� </td>
                                    </tr>
									<tr><th scope="row"class="rn08-tbl-tit2">���/ȯ�ҹ��</th><td colspan="3">
										<div class="rn08-detail-box">
											<p>
												��� ���ڿ� ���� �Ʒ��� ���� ��Ҽ����ᰡ �ΰ��˴ϴ�. �����Ϻ��� ������ ������ �켱 ����ǿ��� �������ֽñ� �ٶ��ϴ�.<br />
												��, ���� �� 7�� �̳��� ��ҽ����� �����Ϸκ��� 10�� �̳���� �׿� �ش��ϴ� ��Ҽ����ᰡ �ΰ��˴ϴ�.<br />
												(��, ��ǰ�� ���� ��� ��å�� �޶��� �� �ְ�, �� ������ �����ϴ� ��� ��å�� �켱 ����ǹǷ�, ���� �� �����Ͻñ� �ٶ��ϴ�.)
											</p>
											<div class="rn08-detail-tbl">
												<table>
													<caption></caption>
													<colgroup>
														<col width="50%" />
														<col width="50%" />
													</colgroup>
													<tbody>
														<tr><th scope="col">�����</th><th scope="col">��Ҽ�����</th></tr>
														<tr><td>���� �� 7�� �̳�</td><td>����</td></tr>
														<tr><td>���� �� 8�� ~ ������ 10�� ������</td><td><span class="rn-red" id="cancelFeeGenre">��� 4,000��</span>(��, Ƽ�� �ݾ��� 10% �̳�)</td></tr>
														<tr><td>������ 9�� �� ~ ������ 7�� ������</td><td>Ƽ�� �ݾ��� 10%</td></tr>
														<tr><td>������ 6�� �� ~ ������ 3�� ������</td><td>Ƽ�� �ݾ��� 20%</td></tr>
														<tr><td>������ 2�� �� ~ ��Ҹ����Ͻñ���</td><td>Ƽ�� �ݾ��� 30%</td></tr>
													</tbody>
												</table>
											</div>						
											<p>
												���ż������ ���� ���� �� 12�� ���� ��� �ÿ��� ȯ�ҵǸ�, �� ���� �Ⱓ���� ȯ�ҵ��� �ʽ��ϴ�.<br />
												��Ҵ� MY����>����Ȯ��/��� ���� ���� ��� �Ǵ� ������(1544-6399)�� ���� ��� �����մϴ�.<br />
												Ƽ���� ��۵� �Ŀ��� PC/����� ��Ұ� �Ұ�, ��Ҹ����ð� ������ �����ͷ� Ƽ���� �ݼ۵Ǿ�� ��� �����մϴ�.<br />
												(��Ҽ������ Ƽ�� ������ �������� �ΰ��Ǹ�, ��ۺ�� ȯ�ҵ��� �ʽ��ϴ�.)<br />
												�� ��ǰ���� ��� ��å�� �ٸ��� ����� �� ������, �� ��ǰ �ȳ� ������ Ȯ�����ֽñ� �ٶ��ϴ�. 
											</p>
										</div>
									</td></tr>
								</tbody>
							</table>
						</div>
					</div>					
                </div><!--��ǰ�������� ���-->
                

				<div class="rn-0806">
				
					<br><br><br>
                    <!-- �ڵ� �κ� -->
					<img src="D:\HTML\Ƽĳ��\imges\address.png">
					KH ���������� ���ô� �� 
					<br><br><br>
                    <img src="D:\HTML\Ƽĳ��\imges\zz.PNG">
                    <!--���� �κ�-->
                </div>

                <br><br><br><br><br><br><br><br>
    </div>
    </div>	
</div>
</div>
</form>
<jsp:include page="../common/footer.jsp" />
</body>
</html>



