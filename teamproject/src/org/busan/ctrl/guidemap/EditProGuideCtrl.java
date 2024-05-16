package org.busan.ctrl.guidemap;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.GuidemapDAO;
import org.busan.dto.Guidemap;

@WebServlet("/EditProGuide.do")
public class EditProGuideCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProGuideCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Guidemap gm = new Guidemap();
		gm.setNo(Integer.parseInt(request.getParameter("no")));
		gm.setName(request.getParameter("name"));
		
		GuidemapDAO dao = new GuidemapDAO();
		int cnt = dao.editProGuidemap(gm);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/GuideList.do");
		} else {
			response.sendRedirect("/teamproject/EditGuide.do?no="+gm.getNo());
		}
	}
}