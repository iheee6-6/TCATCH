$(function(){		
		
	/*ticket open*/
	//스와이프라이브러리 사용
	var ticketOL = $(".ticketo .swiper-slide").length;
	if(ticketOL <= 5 ){
		$(".sec02 .swiper-button-next").css("display","none");
		$(".sec02 .swiper-button-prev").css("display","none");
		$(".ticketo .swiper-wrapper").css({"display":"block","text-align":"center","font-size":"0"});
		$(".ticketo .swiper-slide").css({"margin-left":"12px","margin-right":"12px","display":"inline-block"});
		$(".ticketo .swiper-slide:first").css("margin-left","0");
		$(".ticketo .swiper-slide:last").css("margin-right","0");
	}else{
		var ticketO = new Swiper('.ticketo', {
		  slidesPerView: 5,
		  spaceBetween: 24,
		  slidesPerGroup: 1,
		  navigation: {
			nextEl: '.sec02 .swiper-button-next',
			prevEl: '.sec02 .swiper-button-prev',
		  },
		});
	}

	$(document).ready(function(){
		//랭킹 마우스오버시 배경확대
		$(".rank-list li").on('mouseenter',function(){
			$(this).find(".bg-img").stop().animate({
				width: 570+"px",
				height: 630+"px",
				marginTop: -315+"px",
				marginLeft: -285+"px"
			 }, 500);	
		});
		$(".rank-list li").on('mouseleave',function(){
			$(this).find(".bg-img").stop().animate({
				width: 456+"px",
				height: 504+"px",
				marginTop: -252+"px",
				marginLeft: -228+"px"
			 }, 500);	
		});
	});	

	/*bnr-slide*/
	//스와이프 라이브러리 사용하려다가 페이드슬라이드는 투명이미지 사용이 곤란하여 제작, 메인의 키비주얼 슬라이드와 동일 
	var bnrcount = 0;
	var bnrLength = $(".bnrslide .swiper-slide").length;

	function bnrslide(){		
		if(bnrcount == bnrLength-1){
			bnrcount = 0;
			var bnrbg = $(".bnrslide .swiper-slide").eq(bnrcount).attr("colorbg");
			$(".bnrslide .swiper-slide").stop().fadeOut();
			$(".bnrslide .swiper-slide").eq(bnrcount).stop().fadeIn();
			$(".bnrslide .swiper-pagination span").removeClass("active");
			$(".bnrslide .swiper-pagination span").eq(bnrcount).addClass("active");
			$(".bnr-slide-bg").css("background",bnrbg);
		}else{
			bnrcount += 1;
			var bnrbg = $(".bnrslide .swiper-slide").eq(bnrcount).attr("colorbg");
			$(".bnrslide .swiper-slide").stop().fadeOut();
			$(".bnrslide .swiper-slide").eq(bnrcount).stop().fadeIn();
			$(".bnrslide .swiper-pagination span").removeClass("active");
			$(".bnrslide .swiper-pagination span").eq(bnrcount).addClass("active");
			$(".bnr-slide-bg").css("background",bnrbg);
		}
	}
	if(bnrLength == 1){
		$(".bnrslide .swiper-pagination").css("display","none");
	}else{
		$(".bnrslide .swiper-pagination").css("display","block");
		var bnrgo;
		clearInterval(bnrgo);
		bnrgo = setInterval(bnrslide, 4000);
	}	
	$(".bnrslide .swiper-pagination span").on("mouseenter",function(){
		clearInterval(bnrgo);
	});
	$(".bnrslide .swiper-pagination span").on("mouseleave",function(){
		clearInterval(bnrgo);
		bnrgo = setInterval(bnrslide, 4000);
	});
	$(".bnrslide .swiper-pagination span").on('click',function(){
		var spIdx = $(this).index();
		bnrcount = spIdx;
		var bnrbg = $(".bnrslide .swiper-slide").eq(bnrcount).attr("colorbg");
		$(".bnrslide .swiper-slide").css("display","none");
		$(".bnrslide .swiper-slide").eq(bnrcount).css("display","block");
		$(".bnrslide .swiper-pagination span").removeClass("active");
		$(".bnrslide .swiper-pagination span").eq(bnrcount).addClass("active");
		$(".bnr-slide-bg").css("background",bnrbg);
	});	
	

	/*플로팅배너 배너버튼동작*/
	$(".float-bnr-btn").on('mouseenter',function(e){
		e.preventDefault();
		$(".float-bnr-btn").fadeOut();
		$(".float-bnr-img").fadeIn();
	});
	$(".float-bnr-img").on('mouseleave',function(e){
		e.preventDefault();
		$(".float-bnr-btn").fadeIn();
		$(".float-bnr-img").fadeOut();
	});	
	var bnrTop = parseInt($(".float-bnr-btn").css("top"));

	
	/*엔젤티켓*/
	//스와이프라이브러리 사용
	var boxf1Length = $(".box-f-slide1 .swiper-slide").length;
	if(boxf1Length==1){
		$(".boxf1-p").css("display","none");
	}else{
		$(".boxf1-p").css("display","block");
			var boxf1 = new Swiper('.boxf1', {
			slidesPerView: 1,
			loop: true,
			effect: 'fade',
			  pagination: {
				el: '.boxf1-p',
				clickable: true,
			  },
			autoplay: {
				delay: 8000,
				disableOnInteraction: false
			  },		
		});
	}

	/*엔젤티켓 오른쪽 슬라이드*/
	//스와이프라이브러리 사용
	var boxf2Length = $(".box-f-slide2 .swiper-slide").length;
	if(boxf2Length==1){
		$(".boxf2-next").css("display","none");
		$(".boxf2-prev").css("display","none");
	}else{
		$(".boxf2-next").css("display","block");
		$(".boxf2-prev").css("display","block");
		var boxf2 = new Swiper('.boxf2', {
			slidesPerView: 1,
			loop: true,
			navigation: {
				nextEl: '.boxf2-next',
				prevEl: '.boxf2-prev',
			  },				
		});
	}
	

	/*리뷰엔 인터뷰*/
	//스와이프라이브러리 사용
	var rnislide = new Swiper('.rni-slide-wrap .swiper-container', {
		slidesPerView: 3, //슬라이드 보이는갯수, 3으로 작성한 이유는 루프돌면서 끝으로 가면 마지막 번호에서 오른쪽에 공란발생해서 (이미지 연결이 바로 안되고 넥스트 버튼눌러야 새로 생성됨)
	    spaceBetween: 60,
	    slidesPerGroup: 1, //슬라이드 넘어가는 갯수
		centeredSlides: true,
		loop: true,
		navigation: {
			nextEl: '.rni-next',
			prevEl: '.rni-prev',
		  },
    });

	/*popup-close*/
	$(".pop-bottom a").on('click',function(e){
		e.preventDefault();
		$(".sec07").css("display","none");
	});	

	/*장르메인 - 키비주얼*/
	//스와이프라이브러리 사용
	var m2kvs = new Swiper('.swiper-container.m2-kvs', {
		spaceBetween: 25,
		loop: true,
		loopAdditionalSlides:4,
		autoplay: {
			delay: 4000,
			disableOnInteraction: false
		},
		navigation: {
			nextEl: '.swiper-button-next.m2-kvs',
			prevEl: '.swiper-button-prev.m2-kvs',
		},
    });

	/*장르메인 - 동영상 함께있는 페이드인,아웃 슬라이드*/
	//스와이프라이브러리 사용
	var ms3Length = $(".ms3-wrap .swiper-slide").length;
	if(ms3Length==1){
		$(".swiper-pagination.ms3").css("display","none");
	}else{
		$(".swiper-pagination.ms3").css("display","block");
		var ms3 = new Swiper('.swiper-container.ms3', {   
		  loop: true,
		  effect: 'fade',
		  pagination: {
			el: '.swiper-pagination.ms3',
			clickable: true,
		  },
		  autoplay: {
			delay: 4000,
			disableOnInteraction: false
		  },     
		});
	}
	

	/*장르메인 - WEEKLY RANKING*/
	//마우스오버하면 클래스 붙였다 뗏다 하면서 크기조절
	$(".ms5-l ul li").on('mouseenter',function(){
		$(".ms5-l ul li").removeClass("on");
		$(this).addClass("on");
	});

	/*장르메인 - 지역별추천*/
	//스와이프라이브러리 사용
	var ms5Length = $(".ms5-rs-wrap .swiper-slide").length;
	if(ms5Length <= 3){
		$(".swiper-button-next.ms5-rs").css("display","none");
		$(".swiper-button-prev.ms5-rs").css("display","none");
		$(".ms5-rs-wrap .swiper-wrapper").css({"display":"block","text-align":"center"});
		$(".ms5-rs-wrap .swiper-slide").css({"display":"inline-block","position":"static","margin-right":"25px"});
		$(".ms5-rs-wrap .swiper-slide:last").css("margin-right","0");
	}else{
		$(".swiper-button-next.ms5-rs").css("display","block");
		$(".swiper-button-prev.ms5-rs").css("display","block");
		var ms5r = new Swiper('.swiper-container.ms5-rs', {  
		  slidesPerView: 3,
		  spaceBetween: 26,
		  loop: true,
		  autoplay: {
			delay: 6000,
			disableOnInteraction: false
		  },     
		  navigation: {
			nextEl: '.swiper-button-next.ms5-rs',
			prevEl: '.swiper-button-prev.ms5-rs',
		  },
		});
	}


});


