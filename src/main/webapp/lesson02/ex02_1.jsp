<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method</title>
</head>
<body>
<%-- request 객체는 JSP 에서 바로 사용할수 있다. --%>
<b>아이디</b>
<%= request.getParameter("user_id") %>
<br>
<b>이름</b>
<%= request.getParameter("name") %>
<br>
<b>나이</b>
<%= request.getParameter("age") %>
</body>
</html>