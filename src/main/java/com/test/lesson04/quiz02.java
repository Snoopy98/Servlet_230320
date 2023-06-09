package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02")
public class quiz02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest requset , HttpServletResponse response) throws IOException {
		// 파라미터 가져오기
	String name = requset.getParameter("name");
	String address = requset.getParameter("address");
	// 디비 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	// 인서트
	String insertQuery = "insert into `site`"
			+ "(`name`,`url`)"
			+ "values"
			+ "('"+ name + "', '"+ address + "')";
	try {
		ms.update(insertQuery);
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	// 연결해제
	ms.disconnect();
	// 리다이렉트
	response.sendRedirect("/lesson04/quiz02/site.jsp");
	}
}
