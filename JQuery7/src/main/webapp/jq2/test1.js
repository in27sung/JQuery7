/**
 * test1.js 파일
 * 직접 실행X
 */
//JavaScript 실행 가능 
//alert("hello");

// JQuery 실행 가능 
$(document).ready(function() {
	alert("Hello jQuery(외부 js파일)");

	// 이벤트: 사용자가 브라우저에 와서 수행하는 모든 동작 
	// -> 이벤트핸들러: 이벤트를 처리하기 위한 도구 

	// input 태그가 클릭되었을 때 
	$('input').click(function() {
		alert("제이쿼리 이벤트");
	});

	// 모든 이벤트처리 수행(이벤트 위임)
	$('input').on("click", function() {
		alert("제이쿼리 이벤트on!")
	});

	// When any <h2> element is clicked, append a "+" button after it
	$('h2').click(function() {
		//		$(this).html(function(index,oldHtml){
		//			return oldHtml+"+";
		//		});
		$(this).append("+")

//		$(this).after('<button>+</button>');
	});


	//마우스 이벤트: 마우스를 올렸을때 다른그림으로 변경 
	// When the mouse enters the image, change the image source
//	$('img').mouseover(function() {
//		$(this).attr('src', '../jq1/bird-8058620_640.jpg'); // Change to new image on hover
//	});
//
//	// When the mouse leaves the image, revert to the original image
//	$('img').mouseout(function() {
//		$(this).attr('src', '../jq1/building-7014904_640.jpg'); // Revert back to the original image
//	});
	
	$('img').mouseover(function() {
		$(this).attr('src', '../jq1/bird-8058620_640.jpg'); // Change to new image on hover
	}).mouseout(function() {
			$(this).attr('src', '../jq1/building-7014904_640.jpg'); // Revert back to the original image
	});
	
}); //JQuery

$(document).ready(function() {
	// 키보드 이벤트 처리
	
	//textarea 태그에 키보드 입력 이벤트
	$('textarea').keyup(function(){
		//alert("키보드 입력");
		
		//입력된 정보를 가져오기
		var t = $('textarea').val();
//		console.log(t); 
//		alert(t.length);
		
		// 키보드로 입력된 글자수를 측정
		// h3태그(id: txtLength) 정보에 200에서 입력된 글자수를 
		// 뺀 나머지 숫자를 표시
		$("#txtLength").html(200 - t.length); 
		 
	});
	
});

/* 효과 처리 jQuery */
$(document).ready(function(){
	
	$('h1').click(function(){
		$('h2').show();
	});
	
	//h2 클릭시 이벤트 발생 	
	$("h2").click(function(){
//		$("h2").hide();
//		$("h2").toggle();
//		.slide
//		.fade
		$(this).next().fadeToggle("slow", function(){
			// 콜백함수 - 적용하는 효과가 완전히(100%) 실행 후 동작하는 함수 
//			alert("토글 끝");
		});		
	});
//	$("h2").on("click", function(){
//		
//	});

	// div #aniDiv를 클릭 할때 마다 사이즈를 50씩 증가 
	
	$("#aniDiv").click(function(){
		
//		alert("#aniDiv 클릭!");
		
		// 기존의 요소의 가로, 세로 길이 측정 
		var width = $(this).css("width");
		var height = $(this).css("height");
//		alert(width +"/" + height);
		
		// 기존의 값 + 50 
//		$(this).css({
//			"width" : parseInt(width) + 50, 
//			"height" : parseInt(height) + 50
//		});
		
		$(this).animate({
			"width" : parseInt(width) + 50, 
			"height" : parseInt(height) + 50
		});
	});
	// https://bxslider.com/
	$(function(){
	  $('.bxslider').bxSlider({
		auto: true,
		autoControls: true,
		stopAutoOnClick: true,
		pager: true,
	    mode: 'fade',
	    captions: true,
	    slideWidth: 600
	  });
	});
});


























