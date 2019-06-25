package com.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.ICommand;


public class JoinCon extends HttpServlet implements ICommand {

	public String execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
	
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String youtube = request.getParameter("youtube");
		String sex = request.getParameter("sex");
		
		
		  MemberDTO dto = new MemberDTO(email, pw,name, tel, address, youtube,sex); 
		  MemberDAO dao = new MemberDAO(); 
		  dao.Join(dto);
		  
		  String url="join.jsp";
		  
		  return url;
		 
		

	 
	}

}
