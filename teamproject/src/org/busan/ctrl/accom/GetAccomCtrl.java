package org.busan.ctrl.accom;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.AccomDAO;
import org.busan.dto.Accom;

@WebServlet("/GetAccom.do")
public class GetAccomCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetAccomCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		int no = Integer.parseInt(request.getParameter("no"));
		
		AccomDAO dao = new AccomDAO();
		Accom accom = dao.getAccom(no);
		
		request.setAttribute("accom", accom);
		RequestDispatcher view = request.getRequestDispatcher("/accom/getAccom.jsp");
		view.forward(request, response);
		
	}

}