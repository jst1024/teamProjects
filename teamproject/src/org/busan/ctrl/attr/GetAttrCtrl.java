package org.busan.ctrl.attr;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.AttrDAO;
import org.busan.dto.Attr;

@WebServlet("/GetAttr.do")
public class GetAttrCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetAttrCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		int no = Integer.parseInt(request.getParameter("no"));
		getServletContext().setAttribute("title", "명소");
		
		AttrDAO dao = new AttrDAO();
		Attr attr = dao.getAttr(no);
		
		request.setAttribute("attr", attr);
		RequestDispatcher view = request.getRequestDispatcher("/attr/getAttr.jsp");
		view.forward(request, response);
		
	}

}