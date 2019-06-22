package com.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {

	protected String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = null;
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String youtube = request.getParameter("youtube");
		
		
		  MemberDTO dto = new MemberDTO(email, name, tel, address, youtube); MemberDAO
		  dao = new MemberDAO(); dao.Join(dto);
		  
		  url="main.jsp";
		  
		  return url;
		 
		

	 
	}

}
