package com.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.ICommand;

public class LogoutCon implements ICommand{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("info"); // 세션 중 특정네임을 가진것 만을 삭제 하겠다
		 // 세션의모든 값들을 삭제하겠다.
		return "index.jsp";

}
}
