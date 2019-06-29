package com.front;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.application.ApplicationCon;
import com.member.JoinCon;
import com.member.LoginCon;
import com.member.LogoutCon;
import com.member.MemberDAO;
import com.member.MemberDTO;
import com.application.ApplicationDTO;
import com.application.ApplicationDAO;

@WebServlet("*.do")
public class FrontController extends HttpServlet {

	
	HashMap<String, ICommand> map = new HashMap<String, ICommand>();
	
	@Override
	public void init() throws ServletException {
	map.put("mountain/login.do", new LoginCon());
	map.put("mountain/join.do", new JoinCon());
	map.put("mountain/logout.do", new LogoutCon());
	map.put("mountain/application.do", new ApplicationCon());
	
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();

		// 문자열 자르기
		String command = requestURI.substring(contextPath.length() + 1);
		System.out.println(command);
		
		ICommand input = map.get(command);
		
		System.out.println(input);
		String url = input.execute(request, response);
		response.sendRedirect(url);
		
		
	}
}
