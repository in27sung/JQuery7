<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq2/jqueryTest4</title>
<script src="../jquery-3.7.1.js"></script>
<!-- 외부 JS 파일을 실행 -->
<script src="test1.js"></script>

<!-- 내부 JS코드를 실행해서(JQuery 실행) -->
<script type="text/javascript">
	$(document).ready(function(){
		
		// 동기 방식으로 페이지 이동 
// 		location.href="string1.jsp";
		
		// 비동기 방식으로 string1.jsp 페이지 이동 
		// ajax() method 사용 
			/*
			$.ajax({
				url: "전송할 페이지(이동할 페이지)",
				type: "전송방식(Get/Post)",
				data: "전송할 데이터",
				dataType: "응답결과 데이터타입(default:html/xml,text,json)"
				success: function(result){ //result: 성공 시 받아오는 정보들 
						비동기 방식 처리가 성공했을때 실행하는 코드 
			},
			error: function(){
				비동기 방식 처리가 실패했을때 실행하는 코드 
				}
			});
				
			*/

			$.ajax({
				url: "string1.jsp",
// 				dataType: "html(기본값)",	
				success: function(result){
					alert("string1.jsp 페이지를 다녀옴");
					alert(result);
					$("body").append(result);
				}// sucess끝
			})
		
	}); // JQuery
</script>
</head>
<body>

	<!-- 
		동기 방식: 사용자의 요청을 처리하고, 서버의 응답을 받아서 페이지 출력
			 	(페이지 이동(화면전환) 필요)  
		비동기 방식: 사용자의 요청을 처리, 서버의 응답결과와 상관없이 처리
				(페이지 이동(화면전환) 필요X) 
	 -->

	<h1>비동기방식: Ajax(Asynchronous JavaScript And Xml)</h1>
	-> 비동기방식의 JavaScript와 XML 형태



</body>
</html>