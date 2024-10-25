<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq1/jqueryTest6.jsp</title>
<script src="../jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function(){
		// append(): 특정 요소의 바로 뒤에 내용을 추가 
		// prepend(): 특정 요소의 바로 앞에 내용을 추가
		
		$("body").append("append() 실행");
		$("body").prepend("prepend() 실행");
		// 내용의 정보가 태그 형태라면 태그를 적용해서 실행
		$("body").append("<h1>append() 실행</h1>");
		$("body").prepend("<h1>prepend() 실행</h1>");
	
		// div 태그내용 뒤에 0,1,2 값을 입력 
		$("div").append(function(index){
			return index;
		
		});
		// 테이블에 저장할 데이터
		var data = [ 
			{name:"학생1", region:"부산"},
			{name:"학생2", region:"서울"},
			{name:"학생3", region:"성남"},
			{name:"학생4", region:"분당"},
			{name:"학생5", region:"판교"},
			{name:"학생6", region:"대구"}
		];
		
		//alert(data[0]);
		console.log(data[0]);
		console.log(data[0].region);
		
		// table 태그에 data 배열의 값을 동적으로 추가
// 		$("table").append("<tr><td>" + data[0].name +"</td><td>"+data[0].region+"</td></tr>");
		
		// for문 사용해서 출력 
		for (var i = 0; i < data.length; i++) {
			$("table").append("<tr><td>" + data[i].name +"</td><td>"+data[i].region+"</td></tr>");
		}
		
		// jQuery.each(array, callback); <-> $.each(객체/배열, 콜백함수);
		$.each(data, function(index, data) {// data 배열에 순차적으로 접근 
		        $("table").append("<tr><td>" 
		        		+ data.name + "</td><td>" 
		        		+ data.region + "</td></tr>");
		});

	});// 제이쿼리 끝
</script>
</head>
<body>
	<h2>head-0</h2>

	<hr>
	<div>내용</div>
	<div>내용</div>
	<div>내용</div>
	<div>내용</div>

	<hr>

	<h1>테이블 태그에 내용 추가</h1>
	<table border="1">
		<tr>
			<td>이름</td>
			<td>지역</td>
		</tr>
	</table>
</body>
</html>