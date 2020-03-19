<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
 


<div class="renew-wrap">
	<div class="renew-content">
		<div class="rn-02"><!--����-->
			<p class="rn-big-title">[����] ${art.artTitle }</p>
			<div class="rn-product-short-data">
				<p><span class="ps-date">${art.startDate } ~ ${art.endDate }</span><span class="ps-location"> ${art.address } </span></p>	
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
					<img class='lazyload' src="${ contextPath }/resources/images/art/${ img[0].changeName }"/><!-- �̹��� -->
				</div>

				<div class="rn-product-social">
				
				<c:if test="${ empty loginUser }">
					<a href="javascript:;" class="rn-product-good">
						<img src="${ contextPath }/resources/images/musical/����Ʈ.png" alt=""/><!--���ƿ� �ȴ��� ��Ʈ-->
						<span class="rn-pdg-txt1">�α��� �ϼž� �̿� �����մϴ� .</span><!-- �ȴ��� �� -->
					</a>
				</c:if>
				<c:if test="${ !empty loginUser }">
					<a  class="rn-product-good" id="jjim">
                        <img src="${ contextPath }/resources/images/musical/����Ʈ.png" alt="" id="h1" /><!--���ƿ� �ȴ��� ��Ʈ-->
                        <img src="${ contextPath }/resources/images/musical/������Ʈ.png" alt="" id="h2"/><!--���ƿ� ���� ��Ʈ-->
                       		 <span id="h22" class="rn-pdg-txt2">Like : ${ like }</span>
					</a>
					<input type="hidden" id="flag" value="">					
				</c:if>

					<script>				
						$(function(){
							// �ʱ� ������ �ε� �� ��� �ҷ�����
							JjimSelect();						

							 
							// ��� ��� ajax
							$("#jjim").on("click", function(){
								var artNo = ${art.artNo};
								var no = ${loginUser.no};
								var flag = $("#flag").val();
								
								$.ajax({
									url:"jjim.do",
									data:{artNo:artNo , alarmNo:no , flag:flag},
									type:"post",
									success:function(data){
										if(data =="InSuccess" ){
											alert("�� ����");
											JjimSelect();
										}
										if(data =="DeSuccess"){
											alert("�� ���");
											JjimSelect();
										}
										if(data == "Infail"){
											alert("�� ����");
										}
										if(data == "Defail"){
											alert("�� ��� ����");
										}
									}
								});
							});
						});				
						
						// �� �ҷ����� ajax �Լ�
						function JjimSelect(){
							var artNo = ${art.artNo};
							var no = ${loginUser.no};
							
							$.ajax({
								url:"selectJjim.do",
								data:{artNo:artNo , no:no},
								dataType:"json",
								success:function(data){
									if(data==0){//�� ����� ��� ������ 
										$("#h1").attr("src" , "${ contextPath }/resources/images/musical/����Ʈ.png");
										$('#flag').val(0);									
										/* $("#h1").toggle(0);	 */
									}else{ // �� ����� ������
										$("#h1").attr("src" , "${ contextPath }/resources/images/musical/������Ʈ.png");
										$('#flag').val(1);										
										/* $("#h2").toggle(0);  */
									}
								},
								error:function(e){
									console.log(e);
								}
							});
							
						}
					</script>					
				</div>				
            </div><!--rn-03-left-->
         <%--    <c:if test="${art.rating eq 0 }">
            	����
            </c:if>
             --%>
			<div class="rn-03-right"><!--��ǰ����-->
				<div class="rn-product-area1"><!--���, �����ð�, �⿬, ����, ����-->
					<dl>
						<dt>���</dt>
						<c:if test="${ art.age == 0}">
							<dd>��ü �̿밡</dd>
						</c:if>
						<c:if test="${ art.age != 0}">
						<dd>&nbsp;��
							${ art.age }	
						���̻�</dd>
						</c:if>
						<dt>�����ð�</dt>
						<dd>&nbsp;�� ${art.durationTime }��(���͹̼� ����)</dd>
						<dt>�⿬</dt>
						<dd>&nbsp;${aT[0].actor}     
						<dt id="dtPrice">�¼�</dt>
						<dd>
						 <span class='rn-red'>${ yS }</span>/${allS}
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
				
				<div class="rn-product-area2"><!--�����ð��ȳ�, �������-->
					<dl>
						<dt>�������</dt>
                        <dd>���� ���� <span class='rn-red'>����</span></dd>
                        <dd>�ù� ��� <span class='rn-red'>����</span></dd>
					</dl>
				</div>

                <!--�ڵ��ֹ���������-->
                
		<div class="rn-05"><!--���Ź�ư-->    
		<c:url var="buy" value="buy.do">
							<c:param name="artNo" value="${ art.artNo }"/>
							<c:param name="timeNo" value="${ aT[0].timeNo }"/>
		</c:url>     
                              
		<c:if test="${ !empty loginUser}">
            <a href="#" onclick="window.open('${buy}', '', 'width=715, height=650');" class='rn-bb03'>�����ϱ�</a>            
		</c:if>
		<c:if test="${ empty loginUser}">
			<a href="loginPage.do" class="rn-bb03"><span>�α���</span></a>
		</c:if>
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
                    <div><p>���ɼ��������ϼ�����</p></div>
				</div><!--rn-0801-->
				<div class="rn-0803"><!--��������-->
					<p class="rn08-tit">��������</p>
					<div class="rn08-txt" id="divPerfContent">
                        <div><p><img class='lazyload' src="${ contextPath }/resources/images/art/${ img[1].changeName }"/><!-- �̹��� --></p></div>
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
								<td id="divPerfOrganization">${art.companyInfo } </td>
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
                                        <td>${art.companyName } </td>
                                        <th scope="row" class="rn08-tbl-tit2">�Һ��ڻ��</th>
                                        <td>${art.companyPhone }</td>
                                    </tr>
									<tr>
                                        <th scope="row" class="rn08-tbl-tit2">�ֿ�</th>
                                        <td>${aT[0].actor}</td>           
                                        <th scope="row" class="rn08-tbl-tit2">�������</th>
                                        <td>
                                        <c:if test="${ art.age == 0}">
                                        	��ü �̿밡
                                        </c:if>
                                        <c:if test="${ art.age !=0 }">
											��  ${ art.age } ���̻� 
										</c:if>
										</td>
                                    </tr>
									<tr>
                                        <th scope="row" class="rn08-tbl-tit2">�����ð�</th>
                                        <td> ${art.durationTime }��</td>
                                        <th scope="row" class="rn08-tbl-tit2">�������</th>
                                        <td> ${art.address }</td>
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
												��Ҵ� MY����>����Ȯ��/��� ���� ���� ��� �Ǵ� ������(010-4927-0935)�� ���� ��� �����մϴ�.<br />
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
                    ${art.address }
                    <!--���� �κ�-->
                </div>

                <br><br><br><br><br><br><br><br>
    </div>
    </div>	
</div>
</div>

<jsp:include page="../common/footer.jsp" />
</body>
</html>



