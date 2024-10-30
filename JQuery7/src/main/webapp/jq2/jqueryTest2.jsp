<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq2/jquertyTest2.jsp</title>
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
	<h2> 키보드 이벤트 </h2>
	<h3> 글자수 </h3>
	<h3 id="txtLength"> 200 </h3>
	<textarea rows="10" cols"="300"></textarea>
	
</body>
</html>