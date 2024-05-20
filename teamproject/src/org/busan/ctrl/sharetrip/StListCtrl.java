package org.busan.ctrl.sharetrip;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.SharetripDAO;
import org.busan.dto.Sharetrip;

@WebServlet("/StList.do")
public class StListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		getServletContext().setAttribute("title", "여행공유");
		
		SharetripDAO dao = new SharetripDAO();
		List<Sharetrip> stList = new ArrayList<>();
		stList = dao.getSharetripList();
		request.setAttribute("stList", stList);		
		RequestDispatcher view = request.getRequestDispatcher("/sharetrip/stList.jsp");
		view.forward(request, response);
	}

}