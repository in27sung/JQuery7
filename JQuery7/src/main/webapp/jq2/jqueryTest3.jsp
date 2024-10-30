<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/jq2/jqueryTest3</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.css">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
<script src="../jquery-3.7.1.js"></script>
<script src="test1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.js"></script>




<style type="text/css">
	#aniDiv {
		width: 50px;
		height: 50px;
		background-color: orange;
	}
</style>
<!-- 내부 JS코드를 실행해서(JQuery 실행) -->
<script type="text/javascript">
	$(document).ready(function(){
		
	}); // JQuery
	$(document).ready(function(){
        $(".slider").bxSlider();
      });
</script>
</head>
<body>
<h1> 효과 & 애니메이션 </h1>
	<h2> 열기 / 닫기1</h2>
	<div>
		<h2>제목1</h2>
		<p>내용1</p>
	</div>
	
	<h2> 열기 / 닫기2</h2>
	<div>
		<h2>제목2</h2>
		<p>내용2</p>
	</div>
	
	<hr>
	<h1> 버튼 클릭시 div 태그의 크기를 조금씩(50)증가 </h1>
	<div id="aniDiv">
	
	</div>
	
	
	<div class="bxslider">
      <div>
      	<img src="../jq1/cat-8275147_640.jpg">
      </div>
      <div>
      	<img src="../jq1/car-7275386_640.jpg">
      </div>      
      <div>
      	<img src="../jq1/building-7014904_640.jpg">
      </div>
    </div>
	
</body>
</html>