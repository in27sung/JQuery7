<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq2/jqueryTest6.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- 내부 JS코드를 실행해서(JQuery 실행) -->
<script type="text/javascript">
	$(function(){
		
		//json1.jsp에 있는 JSON데이터 정보를 가져오기(ajax)
		//https://code.google.com/archive/p/json-simple/downloads
		$.ajax({
			url: "json1.jsp",
			dataType: "json",
			success: function(data){
				alert("json1.jsp 데이터 접근 성공");
				alert(data);
				console.log(data);
				$("div").append(data.name);
				$("div").append(data.age);
				$("div").append(data.addr);
			}
		});
	
		// $.getJSON('URL', function())
		$.getJSON("json1.jsp", function(data){
		 	console.log(data);
		 $.each(data,function(key, value){
			$("div").append("<br>" + key + ": " + value);
		 });
	 });
		
		// json2.json 정보를 가져와서 화면에 출력 
		$.getJSON("json2.json", function(data){
			
			$.each(data,function(key, value){//key:index, value:object
				$("#tbl").append("<tr><td>" + value.name + 
							  	  "</td><td>" + value.age + 
							  	  "</td><td>" + value.addr + 
							 	  "</td></tr>");
			});
		});
		
		$("#btnList").click(function(){
			// ajax사용 list.jsp 페이지에 실행되는 정보를 가져오기 
			$.ajax({
				url: "list.jsp",
				success: function(data){
						console.log(data);
						$.each(data,function(idx,item){
							var tag = "<tr>";
								tag += "<td>" + item.id + "</td>";
								tag += "<td>" + item.name + "</td>";
								tag += "<td>" + item.email + "</td>";
								tag += "</tr>";
						$("#tbl_member").append(tag);
						});
					}
			});//ajax
		});//click
			
	});//JQuery
</script>
</head>
<body>
	<h1>JSON(JavaScript Object Notation)</h1>
	<h3>반드시 JS에서만 사용x,but JS문법을 따름</h3>
	<h4>XML/CSV 형태 처럼 표준데이터 포멧</h4>
	
	<h1>장점:</h1>
	<ul>
		<li>단순 텍스트 형태로 저장</li>
		<li>속성:값 데이터 쌍으로 구성</li>
		<li>불필요한 정보가 없음(태그)</li>
		<li>필요한 데이터 리소스가 적음(전송속도가 빠름)</li>
		<li>특정언어 / 플랫폼에 독립적(어디든 사용가능)</li>
		<li>다른 도메인주소에서도 요청 처리가 가능</li>		
	</ul>
	
	<h1>단점: </h1>
	<ul>
		<li>문법에 예민함(JS:quote, comma, colon, dot)</li>
		<li>문법 실수로 데이터 전체를 사용x</li>
		<li>데이터안에 악의적인 JS코드가 포함 가능</li>
	</ul>
	
	<h1>Json 문법 </h1>
	<ul>
		<li>"속성(key)": 값(value) 데이터 쌍으로 구성</li>
		<li>{ } JSON 객체</li>
		<li>[ ] JSON 배열</li> 
	</ul>
	<h3>JSON 데이터타입</h3>
	<ul>
		<li>정수(2진수:0bxx, 8진수:0xx, 16진수: 0x00 지원x)</li>
		<li>실수(고정 소수점(1.1, -653.541), 부동 소수섬 (1e4,2.5e-6)</li>
		<li>Boolean (true/false)</li>
		<li>NULL</li>
		<li>문자열("", 0개이상의 이니코드문자로 표현)</li>
		<li>객체({}안에 속성: 값 형태로 저장)</li>
		<li>배열([]안에 값: 값,배열 형태로 저장)</li>
	</ul>
	
	<div>
	<h1>JSON</h1>
	</div>
	
	<hr>
	
	<table border="1" id="tbl">
		<tr>
			<td>이름</td>		
			<td>나이</td>		
			<td>지역</td>		
		</tr>
	</table>
	
	<hr>
	
	<table border="1" id="tbl_member">
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>Email</td>
		</tr>
	</table>
	
	<br><br>
	<input type="button" value="리스트정보 불러오기" id="btnList"> 
	<br><br>
	
</body>
</html>