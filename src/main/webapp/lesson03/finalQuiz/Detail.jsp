<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
#wrap{height:800px;}
header{height:80px;}
.logo{color:#00CC00;}
.content{height:300px;}
.nav-link{color:black; font-weight:bold;}
.box1{border-style:solid; border-color:#00CC00; height:170px; }
</style>
</head>
<body>
<div id="wrap" class="container">

	<!-- 헤더영역 -->
	<header class="d-flex align-items-center">
	<jsp:include page="header.jsp"></jsp:include>
	</header>
	
	<!-- nav 영역 -->
	<jsp:include page="nav.jsp"></jsp:include>
	
	<!-- 컨텐츠 정보 영역 -->
	<h3 class="font-weight-bold">곡 정보</h3>
	
	<section class="content ">
	<div class="box1 p-2 d-flex">
	<jsp:include page="content1.jsp"></jsp:include>
	</div>
	
	<!-- 테이블 영역 -->
	<section>
	<h3 class="font-weight-bold mt-4">가사</h3>
	<hr>
	<small>가사 정보 없음</small>
	
	
	</section>
	</section>
	
	<footer >
	<hr>
	<jsp:include page="footer.jsp"/>
	</footer>
</div>
</body>
</html>