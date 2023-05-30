package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet{
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head></head></html>");
//		out.print(userMap.get("id"));
		if(userMap.get("id").equals(userId) == false) {
			// id  불일치 
			out.print("id 가 일치하지 않습니다.");
		}else if(userMap.get("password").equals(password) == false) {
			//password 불일치
			out.print("password 가 일치하지 않습니다.");
		}else {
			//일치
			out.print(userMap.get("name") + "님 환영합니다!");
			
		}
		
		
	}
}
