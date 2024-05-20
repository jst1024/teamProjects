package org.busan.ctrl.attr;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.busan.dao.AttrDAO;
import org.busan.dto.Attr;

@WebServlet("/EditAttr.do")
public class EditAttrCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditAttrCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("sid");
		
		if(!loginId.equals("admin")) {
			response.sendRedirect("/AttrList.do");
		}
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		AttrDAO dao = new AttrDAO();
		Attr attr = dao.getAttr(no);
		
		request.setAttribute("attr", attr);
		RequestDispatcher view = request.getRequestDispatcher("/attr/editAttr.jsp");
		view.forward(request, response);
	}

}