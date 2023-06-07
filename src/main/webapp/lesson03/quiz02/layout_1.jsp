<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곡 정보</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
#wrap{height:1000px;}
header{height:80px;}
.content{height:600px;]}
.font{font-size:12px; color:#999;}
</style>
</head>
<body>
<div id="wrap" class="container">
<!-- 헤더영역 -->
<header class="d-flex align-items-center">
	<jsp:include page="header.jsp"/>
</header>

<!-- 메뉴 영역 -->
<jsp:include page="menu.jsp"/>

<!-- 컨텐츠영역 -->
<section class="content">
	<div class="border border-success d-flex p-2">
	<jsp:include page="contents.jsp"></jsp:include>	
	</div>
	<!-- 곡 목록 영역 -->
<section>
<jsp:include page="song.jsp"></jsp:include>
</section>
</section>
<!-- 푸터 영역 -->
<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
</div>



</body>
</html>