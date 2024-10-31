<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq2/jqueryTest5</title>
<script src="../jquery-3.7.1.js"></script>
<!-- 외부 JS 파일을 실행 -->
<script src="test1.js"></script>

<!-- 내부 JS코드를 실행해서(JQuery 실행) -->
<script type="text/javascript">
	$(document).ready(function(){
		// 비동기방식으로 string2.jsp 페이지에 다녀오기 
		// + 정보를 전달 string2.jsp
		$.ajax({
			url: "string2.jsp",
			//type: "GET(기본값)",
// 			data: name="itwill" //이름(name) 정보 전달 
			data: {name: "itwill", age: 22},
			success: function(data){// ajax처리 성공 시 가져온 정보(html)
				alert(data);
				$("body").append(data);
			}// sucess끝
		});// ajax()
		
		$.ajax({
// 			url: "xmlData.jsp",
			url: "xmlData2.xml",
			success: function(data){
				alert("xmlData2 페이지 다녀옴");
// 				alert(data);
				console.log(data);
// 				$('body').append(data);
				$(data).find("person").each(function(){
					var name = $(this).find("name").text();
					var gender = $(this).find("gender").text();
					var hobby = $(this).find("hobby").text();
					
					$('body').append("<hr>");
					$('body').append("name: " + name);
					$('body').append(", gender: " + gender);
					$('body').append(", hobby: " + hobby);
					$('body').append("<hr>");
					
				});
			}// sucess끝
		});// ajax()
		
		$.ajax({
			url: "https://fs.jtbc.co.kr/RSS/economy.xml",
// 			url: "https://news-ex.jtbc.co.kr/v1/get/rss/issue",
			success: function(data){
				alert("JTBC RSS데이터")
				$(data).find("item").each(function(){
					var title = $(this).find("title").text();
					var link = $(this).find("link").text();
					var description = $(this).find("description").text();
					var pubDate = $(this).find("pubDate").text();
					
					$('#jtbcDiv').append("<hr>");
// 					$('body').append("title: " + title);
					$('#jtbcDiv').append("<a href='" + link + "'target='_blank'>"+ title +"</a");
					$('#jtbcDiv').append("<br> description: " + description + "...");
					$('#jtbcDiv').append("<br> pubDate: " + pubDate);
					$('#jtbcDiv').append("<hr>");
				});
			}
		});// ajax()
	
	}); //JQuery() 
</script>
</head>
<body>
	<h1>Hello5</h1>
	<h2> string2.jsp 페이지로 전달한 데이터</h2>
	
	
	<hr>
	<h2> XML (eXtensible Markup Language)</h2>
	
	<p>
	html 코드 처럼 태그 형태로 데이터를 저장하는 형태의 언어
	-> 태그의 이름이 다름(데이터의 이름/종류)
	XML은 모든 플랫폼에서 동작 가능(2000년대 가장 많이 사용된 데이터 포멧)-대체언어:JSON
	표준 데이터 포멧 (데이터를 저장하기 위해) 
	</p>
	<div id=jtbcDiv>
	<h1> JTBC 스포츠 뉴스</h1>
	</div>
</body>
</html>