package com.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdateCon
 */
@WebServlet("/UpdateCon")
public class UpdateCon extends HttpServlet {
	
	protected String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");

		String email = info.getEmail();
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");

		MemberDTO dto = new MemberDTO(email, pw, tel,address);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(dto);

		if (cnt > 0) {
			info.setTel(tel);
			info.setAddress(address);
			session.setAttribute("info", info);
			return "main.jsp";
		} else {
			return "update.jsp";
		}

	}

}
