<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq1/jqueryTest7</title>
<style type="text/css">
/* h2 { */
/* 	background-color: red; */
/* } */
.high_0 {
	background: red;
}

.high_1 {
	background: orange;
}

.high_2 {
	background: yellow;
}

.high_3 {
	background: green;
}

.high_4 {
	background: blue;
}
</style>
<script src="../jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//h2 태그에 각각 클래스명을 설정 
		//$("h2").attr("class", "high_0");
// 		$("h2").attr("class",function(index){
// 			return "high_" + index;
// 		});
		
		// each
// 		$.each('h2',function(){
// 			console.log("h2 each()")
// 		});
		$('h2').each(function(index){
			$(this).addClass("high_" + index);
			// this: 나를 나타내느 레퍼런스 
			//  	이벤트가 발생한 대상/요소를 나타내는 레퍼런스 
		});
		
		//이미지 제어 
		$('img').css("width", "400");
		$('img').css("height", "250");
		
		// 일정 주기별로 반복 실행하는 메서드 
		setInterval(function(){
// 			console.log("Hello!");
			return $("#imgDiv").append($('img').first())
		},1000);// ms 단위
		
		//Interval을 멈추는 버튼 구현
		clearInterval(intervalId);
	
	});//jquery
	
	// class: 여러개 접근
	// id: 하나 접근 

</script>
</head>
<body>

	<!-- h2 태그의 배경색 backgound)을 CSS로 변경 -->

	<!-- 	<h2 class="high_0">head-0</h2> -->
	<!-- 	<h2 class="high_1">head-1</h2> -->
	<!-- 	<h2 class="high_2">head-2</h2> -->
	<!-- 	<h2 class="high_3">head-3</h2> -->
	<!-- 	<h2 class="high_4">head-4</h2> -->

	<h2 class="">head-0</h2>
	<h2 class="">head-1</h2>
	<h2 class="">head-2</h2>
	<h2 class="">head-3</h2>
	<h2 class="">head-4</h2>

	<hr>
	
	<div id="imgDiv">
		<img alt="bird" src="bird-8058620_640.jpg">
		<img alt="building" src="building-7014904_640.jpg">
		<img alt="car" src="car-7275386_640.jpg">
		<img alt="cat" src="cat-8275147_640.jpg">
	</div>	
	
	<button id="start">Start</button>
	<button id="stop">Stop</button>
	
</body>
</html>