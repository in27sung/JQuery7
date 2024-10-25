<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq1/jqueryTest5.jsp</title>
<script src="../jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		//html(): 요소의 내용을 가져오기(해당요소중 첫번째 요소만)
		//text(): 요소의 내용을 가져오기 (해당요소 전부)
		
		var h = $("h2").html();
		alert(h);
		
		var t = $("h2").text();
		alert(t);
		
		// h2태그에 작성된 내용을 "itwill"으로 변경 
		// html(값)/text(값): 태그 요소의 내용을 변경 
//		$("h2").html("itwill");
		$("h2").html("<h3>itwill</h3>"); //태그 적용
		
		$("h2").text("<h3>itwill</h3>"); //태그 적용x
		
		$("div").html(function(idx,oldHtml){
			alert(idx+"/"+oldHtml);
			return idx +" - itwill - " + oldHtml;
		});
		
		$("div").click(function(){
			$("div").html("ITWILL!");
		});
		
	});
</script>
</head>
<body>
	<h2>heading0</h2>
	<h2>heading1</h2>
	<h2>heading2</h2>
	
	<hr>
	
	<div>00</div><!-- 0 - itwill - 00 -->
	<div>11</div><!-- 1 - itwill - 11 -->
	<div>22</div><!-- 2 - itwill - 22 -->
</body>
</html>