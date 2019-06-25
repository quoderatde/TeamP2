package com.Service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.MemberDAO;

@WebServlet("/EmailService")
public class EmailService extends HttpServlet 
{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.setCharacterEncoding("EUC-KR");
		String[] List = request.getParameterValues("check");
		String check = request.getParameter("action");
		System.out.println(check);
		
		MailService mail = new MailService();
		MemberDAO dao = new MemberDAO();
		
		if(check.equals("傈价")) 
		{
			mail.EmailSend(List);
			
			int cnt = dao.Del_List(List);
			
			if(cnt>0)
			{
				System.out.println("昏力己傍");
			}
			
		}
		else
		{
			int cnt = dao.Del_List(List);
			
			if(cnt>0)
			{
				System.out.println("昏力己傍");
			}
		}
		response.sendRedirect("Request_List_Page.jsp");
		
	}

}
