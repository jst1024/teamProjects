package org.busan.ctrl.guidemap;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.GuidemapDAO;
import org.busan.dto.Guidemap;

@WebServlet("/GuideList.do")
public class GuideListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GuideListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		getServletContext().setAttribute("title", "가이드북&지도");
		
		GuidemapDAO dao = new GuidemapDAO();
		List<Guidemap> gmList = new ArrayList<>();
		gmList = dao.getGuidemapList();
		request.setAttribute("gmList", gmList);		
		RequestDispatcher view = request.getRequestDispatcher("/guidemap/gmList.jsp");
		view.forward(request, response);
	}

}