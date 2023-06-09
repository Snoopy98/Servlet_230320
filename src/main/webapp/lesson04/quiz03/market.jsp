<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
#wrap{width:900px;}
header{background-color:#E98C0F;}
footer{height:100px;}
.box{ border-style: solid; border-color:#E98C0F; width:250px; height:250px;}
.orange{color:#E98C0F;}
</style>
</head>
<body>
<div id ="wrap" class="container text-center">
<!-- 헤더 영역 -->
<header>
<jsp:include page="header.jsp"></jsp:include>
</header>
<!-- 컨텐츠 영역 -->
<section>
<div class="d-flex justify-content-between p-3">
<div class="box">

</div>
<div class="box">

</div>
<div class="box">

</div>
</div>

<div class="d-flex justify-content-between p-3">
<div class="box">

</div>
<div class="box">

</div>
<div class="box">

</div>
</div>
</section>
<!-- 푸터영역  -->
<footer class="d-flex justify-content-center align-items-center">
<div><small>Copyright 2023. Hong All Rights Reserved</small></div>
</footer>
</div>
</body>
</html>