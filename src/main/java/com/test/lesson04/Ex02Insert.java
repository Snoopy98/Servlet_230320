package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/Ex02_insert")
public class Ex02Insert extends HttpServlet{
	@Override 
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 응답 정의 생략 - redirect 할것이기 때문
		
		//request parameter 받기 
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
	
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		// DB insert
		String insertQuery = "insert into `new_user`"
				+ "(`name`,`yyyymmdd`,`email`,`introduce`)"
				+ "values ('" + name + "', '" + yyyymmdd + "', '" + email + "', '" + introduce + "')";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB disconnect
		ms.disconnect();
		// 유저 목록 화면으로 이동(Redirect)
		response.sendRedirect("/lesson04/ex02/userList.jsp");
	}

}
