package org.busan.ctrl.guidemap;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.busan.dao.GuidemapDAO;
import org.busan.dto.Guidemap;

@WebServlet("/EditGuide.do")
public class EditGuideCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditGuideCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("sid");
		
		if(!loginId.equals("admin")) {
			response.sendRedirect("/GuideList.do");
		}
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		GuidemapDAO dao = new GuidemapDAO();
		Guidemap gm = dao.getGuidemap(no);
		
		request.setAttribute("gm", gm);
		RequestDispatcher view = request.getRequestDispatcher("/guidemap/editGuide.jsp");
		view.forward(request, response);
	}

}