<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
%>
<div id="wrap" class="container bg-dark ">
		<header class="bg-warning d-flex justify-content-center align-imems-center">
		<h2 class="text-danger">SK BroadBand IPTV</h2>
		</header>
		
		<nav class="bg-danger ">
			<ul class="nav nav-fill align-items-center">
			<li class="nav-item"><a class="nav-link">전체</a></li>
			<li class="nav-item"><a class="nav-link" href="jisangpa.jsp?category=지상파">지상파</a></li>
			<li class="nav-item"><a class="nav-link" href="jisangpa.jsp?category=드라마">드라마</a></li>
			<li class="nav-item"><a class="nav-link" href="jisangpa.jsp?category=예능">예능</a></li>
			<li class="nav-item"><a class="nav-link" href="jisangpa.jsp?category=영화">영화</a></li>
			<li class="nav-item"><a class="nav-link" href="jisangpa.jsp?category=스포츠">스포츠</a></li>
			</ul>
		</nav>
		
		<div class="content bg-info d-flex">
			<section class="col-4 bg-success">
				<table class="table">
					<thead>
						<tr>
							<th>채널</th>
						</tr>
					</thead>
					<%
				for(Map<String, String> broad : list){
				%>
					<tbody>
						<tr>
							<td><%= broad.get("ch") %></td>
						</tr>
					</tbody>
				<%
				}
				%>
				
				</table>
			</section>
			<section class="col-4 bg-success">
				<table class="table">
					<thead>
						<tr>
							<th>채널명</th>
						</tr>
					</thead>
					<%
				for(Map<String, String> broad : list){
				%>
					<tbody>
						<tr>
							<td><%= broad.get("name") %></td>
						</tr>
					</tbody>
				<%
				}
				%>
				
				</table>
			</section>
			<section class="col-4 bg-success">
				<table class="table">
					<thead>
						<tr>
							<th>카테고리</th>
						</tr>
					</thead>
					<%
				for(Map<String, String> broad : list){
				%>
					<tbody>
						<tr>
							<td><%= broad.get("category") %></td>
						</tr>
					</tbody>
				<%
				}
				%>
				
				</table>
			</section>
		</div>
		
		<footer class="bg-warning">
		<div class="text-center text-secondary"><small>Copyright © marondal 2021</small></div>
		</footer>
	
	</div>