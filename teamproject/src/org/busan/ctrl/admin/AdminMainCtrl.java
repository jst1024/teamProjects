package org.busan.ctrl.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.busan.dao.MemberDAO;
import org.busan.dao.SharetripDAO;
import org.busan.dto.Member;
import org.busan.dto.Sharetrip;

@WebServlet("/AdminMain.do")
public class AdminMainCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminMainCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		SharetripDAO dao = new SharetripDAO();
		MemberDAO dao1 = new MemberDAO();
		
		List<Sharetrip> stList = dao.getSharetripList();
		List<Member> memList = dao1.getMemberList();
		request.setAttribute("stList", stList);
		request.setAttribute("memList", memList);
		
		String loginId = (String) session.getAttribute("sid");
		if(!loginId.equals("admin")){
			response.sendRedirect("/teamproject");
		} else {
			request.setAttribute("msg", "관리자 페이지입니다.");
			RequestDispatcher view = request.getRequestDispatcher("/admin/admin.jsp");
			view.forward(request, response);
		}
	
		
	
	}
}