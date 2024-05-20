package org.busan.ctrl.guidemap;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.GuidemapDAO;

@WebServlet("/DelGuide.do")
public class DelGuideCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelGuideCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		GuidemapDAO dao = new GuidemapDAO();
		int cnt = dao.delGuidemap(no);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/GuideList.do");
		} else {
			response.sendRedirect("/teamproject/GetGuide.do?no="+no);
		}
	}

}