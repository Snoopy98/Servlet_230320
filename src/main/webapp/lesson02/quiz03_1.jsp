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

if(bmi <= 20 ){
	out.print("저체중");
}else if(bmi >= 21 & bmi <= 25){
	out.print("정상");
}
%>
</body>
</html>