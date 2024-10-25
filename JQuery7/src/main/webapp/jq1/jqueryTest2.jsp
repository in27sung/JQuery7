<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq1/jqueryTest2.jsp</title>

<!-- jquery 라이브러리 추가(필수) -->
<!-- <script src="../jquery-3.7.1.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.7.1.js"  -->
<!-- integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script> -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> -->
<!-- jquery 사용 -->
<script type="text/javascript">
	$(document).ready(function(){
		//alert("ready JQuery");
		$("*").css('color', 'blue'); //모든요소 (All)
		$("h2").css("color", "red"); // 특정요소 (태그명)
		$("#hi").css("color", "green");	// 아이디 속성	
		$(".hc").css("color", "yellow"); // 클래스 속성
		
		// input태그의 글자색을 변경 
		$("input").css("color","black");
		

		// 아이디-red, 비밀번호-blue
		$("input[type=text]").css("color","red"); //속성탐색 선택자		
		$("input[type^=p]").css("color","blue"); //p로 시작하는 글자 속성 
		
		// tr 위치기반
		$("tr:first").css("background","pink"); //p로 시작하는 글자 속성 
		
		// tr 홀수/짝수
		$("tr:odd").css("background","green"); //p로 시작하는 글자 속성 
		$("tr:even").css("background","blue"); //p로 시작하는 글자 속성 
		
	});
	
	/* https://flukeout.github.io/ */
</script>

<!-- <style type="text/css"> -->
<!-- /* 	h2{ */ -->
<!-- /* 		color: red; */ -->
<!-- /* 	} */ -->
<!-- </style> -->
</head>
<body>
<!-- JQuery(JavaScript): HTML/CSS코드를 제어 -->
	<h1>Heading</h1>
	<h2 id="hi">제목 1</h2>
	<h2 class="hc">제목 2</h2>
	
	<hr>
	
	아이디: <input type="text" class="id"> <br>
	비밀번호: <input type="password" class="pw"> <br>
	
<!-- 	fluckeout.github.io -->
	
	<table border="1">
		<tr>
			<td>index:0</td>
			<td>0</td>
			<td>0</td>
		</tr>
		<tr>
			<td>index:1</td>
			<td>1</td>
			<td>1</td>
		</tr>
		<tr>
			<td>index:2</td>
			<td>2</td>
			<td>2</td>
		</tr>
		<tr>
			<td>index:3</td>
			<td>3</td>
			<td>3</td>
		</tr>
	</table>
</body>
</html>