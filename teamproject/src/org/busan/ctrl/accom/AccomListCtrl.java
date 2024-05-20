package org.busan.ctrl.accom;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.AccomDAO;
import org.busan.dto.Accom;

@WebServlet("/AccomList.do")
public class AccomListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AccomListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		getServletContext().setAttribute("title", "숙박");
		
		AccomDAO dao = new AccomDAO();
		List<Accom> accomList = new ArrayList<>();
		accomList = dao.getAccomList();
		request.setAttribute("accomList", accomList);
		
		RequestDispatcher view = request.getRequestDispatcher("/accom/accList.jsp");
		view.forward(request, response);
	}

}