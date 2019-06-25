package com.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.ICommand;

/**
 * Servlet implementation class LoginCon
 */
@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet implements ICommand {
	
	public String execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String url = null;
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		MemberDTO dto = new MemberDTO(email, pw);
		MemberDAO dao = new MemberDAO();
		MemberDTO loginInfo = dao.Login(dto);

		if (loginInfo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("info", loginInfo);
		}
		url = "index.jsp";
		return url;
	}

}
