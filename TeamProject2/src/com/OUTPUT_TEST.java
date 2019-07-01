package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Chigether/OUTPUT_TEST")
public class OUTPUT_TEST extends HttpServlet 
{
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
	
	request.setCharacterEncoding("EUC-KR"); 
	String title = request.getParameter("title"); 
	String content = request.getParameter("CONTENT");
	String title_tag = request.getParameter("category_id");
	
	HttpSession session =  request.getSession();
	// String name = session.getAttribute("email");
	String name = (String)session.getAttribute("email");
	comu_DTO dto = new comu_DTO(title_tag, title, content, name);
	
	comu_DAO dao = new comu_DAO();
	dao.insert(dto);
	String type = "";
	if(title_tag.equals("공지사항"))
	{
		type="notice";
	}
	else if(title_tag.equals("자유게시판"))
	{
		type="free";
	}
	else if(title_tag.equals("채널 팁"))
	{
		type="tip";
	}
	else if(title_tag.equals("채널홍보"))
	{
		type="ad";
	}
	response.sendRedirect("TESTPAGE.jsp?type="+type);
	
	
	
	

	

}

}

