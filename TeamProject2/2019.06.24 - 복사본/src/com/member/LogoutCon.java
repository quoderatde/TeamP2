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
		session.removeAttribute("info"); // ���� �� Ư�������� ������ ���� ���� �ϰڴ�
		 // �����Ǹ�� ������ �����ϰڴ�.
		return "index.jsp";

}
}
