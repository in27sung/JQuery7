<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq2/jquertyTest1</title>
<script src="../jquery-3.7.1.js"></script>
<!-- 외부 JS 파일을 실행 -->
<script src="test1.js"></script>

<!-- 내부 JS코드를 실행해서(JQuery 실행) -->
<script type="text/javascript">
	$(document).ready(function(){
		
	}); // JQuery
</script>
</head>
<body>
	
	<input type="button" value="button1" 
		onclick=" alert('button1 click');">
	
	<h2>head-0</h2>
	<h2>head-1</h2>
	<h2>head-2</h2>
	
	<hr>
	
	<img alt="building" src="../jq1/building-7014904_640.jpg">
	
</body>
</html>