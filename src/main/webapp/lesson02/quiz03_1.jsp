<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0)); -->

<% 
String heights = request.getParameter("height");
String weights = request.getParameter("weight");

int height =  Integer.parseInt(heights);
int weight =  Integer.parseInt(weights);

double bmi = weight / ((height/100.0) * (height/100.0));
out.print(bmi);
String result = null;
if(bmi <= 20 ){
 result = "저체중";
	return;
}else if(bmi >= 21 & bmi <= 25){
	result = ("정상");
	return;
}else if(bmi >= 26 & bmi <= 30){
	result = ("과체중");
	return;
}else if(bmi >= 31){
	result = ("비만");
}
%>
<!-- 화면  -->
	<div class="container">
	<b>BMI</b> 측정 결과<br>
	<h1>당신은 <span class="text-info"><%= result %></span> 입니다.</h1>
	<small>BMI 수치 : <%= bmi %></small>

	</div>

</body>
</html>