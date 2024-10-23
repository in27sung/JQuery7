<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq1/jqueryTest1.jsp</title>
<script type="text/javascript">
	alert("자바스크립트 코드!");
</script>

<!-- jquery 라이브러리 추가(필수) -->
<!-- <script src="../jquery-3.7.1.js"></script> -->
<script src="https://code.jquery.com/jquery-3.7.1.js" 
integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> -->
<!-- jquery 라이브러리 사용 -->
<script type="text/javascript">
	// 해당문서가 준비되고 나면 실행할 동작(코드)을 작성
	$(document).ready(function(){
		alert("제이쿼리 실행");
	});
	
	$(function(){
		alert("제이쿼리 실행2");
	});

	jQuery(document).ready(function(){
		alert("제이쿼리 실행3");
	});
	
	JQeury(function(){
		alert("제이쿼리 실행4");
	});
	
</script>

</head>
<body>
	<h2> 제이쿼리(JQeury): 자바스크립트 기능을 모아놓은 것</h2>
	
	<script type-"text/javascript">
		alert("자바스크립트 코드2!");
	</script>
</body>
</html>