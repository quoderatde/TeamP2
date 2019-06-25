package com.application;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.ICommand;

public class ApplicationCon extends HttpServlet implements ICommand {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	String email = request.getParameter("email");
	
	ApplicationDTO dto = new ApplicationDTO(email);
	ApplicationDAO dao = new ApplicationDAO();
	dao.application(dto);
	

	  String url= "project.html";
		
	  return url;
	}
}
