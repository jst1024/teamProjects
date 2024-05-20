package org.busan.ctrl.attr;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.AttrDAO;
import org.busan.dto.Attr;

@WebServlet("/AttrList.do")
public class AttrListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AttrListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		getServletContext().setAttribute("title", "명소");
		
		AttrDAO dao = new AttrDAO();
		List<Attr> attrList = new ArrayList<>();
		attrList = dao.getAttrList();
		request.setAttribute("attrList", attrList);		
		RequestDispatcher view = request.getRequestDispatcher("/attr/attrList.jsp");
		view.forward(request, response);
	}

}