<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

%>
<img src="<%=artistInfo.get("photo") %>" alt="이미지" height="150" width="150">
	
	<div class="ml-3">
		<h3 class="font-weight-bold"><%=artistInfo.get("name")  %></h3>
		<div><%= artistInfo.get("agency")%></div>
		<div><%= artistInfo.get("debute") %> 데뷔</div>
	</div>