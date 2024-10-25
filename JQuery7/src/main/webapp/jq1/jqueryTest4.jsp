<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq1/jqueryTest4</title>
<script src="../jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function(){
		alert("제이쿼리 실행");
		
		// css(): 요소의 스타일시트 속성을 변경 
		$('img').css("width","200");
		
		// attr(): 요소의 속성의 정보를 접근 
		$("img").attr("width", "250");
		
		// img태그의 가로길이 출력 
		var w = $("img").attr("width")
		alert("width: " + w);
		
		// img태그의 border 속성의 값을 5로 설정 
		//$("img").attr("border","5");
		
// 		var bArr = [5, 10, 15, 20] 
// 		// border 속성의 값을 5, 10, 15, 20으로 설정
// 		$("img").attr("border",function(index){
// 		// h2태그의 인덱스 번호 / 태그의 color 속성값 
// 		return (index+1) * 5;
// 		});
		
		// img 태그의 세로길이 50, 100, 150 / 0, 5, 10
			$("img").attr({
				"height":function(index){
					return (index+1) * 50;
				},
				"border":function(index){
					return (index) * 5;
				}
			})		
		
	}); //제이쿼리 끝
	// jsp > html > jquery
</script>
</head>
<body>
	<img alt="bird" src="bird-8058620_640.jpg">
	<img alt="building" src="building-7014904_640.jpg">
	<img alt="car" src="car-7275386_640.jpg">
	<img alt="cat" src="cat-8275147_640.jpg">
</body>
</html>