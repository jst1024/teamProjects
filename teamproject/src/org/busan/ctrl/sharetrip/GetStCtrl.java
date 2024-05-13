package org.busan.ctrl.sharetrip;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.SharetripDAO;
import org.busan.dto.Sharetrip;

@WebServlet("/GetSt.do")
public class GetStCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetStCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		int no = Integer.parseInt(request.getParameter("no"));
		
		SharetripDAO dao = new SharetripDAO();
		Sharetrip st = dao.getSharetrip(no);
		
		request.setAttribute("st", st);
		RequestDispatcher view = request.getRequestDispatcher("/sharetrip/getSt.jsp");
		view.forward(request, response);
		
	}

}