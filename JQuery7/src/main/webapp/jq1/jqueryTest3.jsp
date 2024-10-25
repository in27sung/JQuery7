<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq1/jqueryTest3</title>
<!-- jquery 라이브러리 추가(필수) -->
<script src="../jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		alert("제이쿼리 실행");

		//$("h2").css('color', 'red'); //속성에 값을 설정
		// 1) 속성의 정보를 가져오기(확인)
		// ex) $("table").attr("border");
		var c = $("h2").css('color'); // 속성의 값을 가져오기
		alert(c);
		
		// 2) 속성의 정보를 특정 값으로 변경 
		// h2태그의 글자색을 blue로 변경 
		//$("h2").css("color", "blue");
		
		// 3) 속성의 정보를 특정 값으로 각각 변경 
		$(".head0").css("color", "red");
		$("#head1").css("color", "orange");
		$(".head2").css("color", "yellow");
		
		var cArr = ["yellow", "orange", "red"];
		
		$(".head0").css("color", cArr[0]);
		
		$("h2").css("color",function(index,value){
			alert(index + "/" + value);
			// h2태그의 인덱스 번호 / 태그의 color 속성값 
			return cArr[index];
		});
		
		// 4) 여러가지 속성을 적용
		// 글자색 -> 전부 yellow
		// 배경색 -> 전부 black
		$("h2").css("color","yellow");
		$("h2").css("background","black");
		
		//-> 한번에 여러가지 속성을 적용 
		$("h2").css({
			"color":"red",
			"backgroundColor":"yellow"
		})
		
		// h2 - 배경색 black, 글자색 : red, orange, yellow
		cArr = ["red", "orange", "yellow"]
		
		$("h2").css({
			"backgroundColor":"black",
			"color":function(index){
			return cArr[index];				
			}
		})
	});
</script>
</head>
<body>
	<h2 class="head0">head-0</h2>
	<h2 id="head1">head-1</h2>
	<h2 class="head2">head-2</h2>
</body>
</html>