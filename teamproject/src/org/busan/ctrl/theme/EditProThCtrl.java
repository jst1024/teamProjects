package org.busan.ctrl.theme;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.ThemeDAO;
import org.busan.dto.Theme;

@WebServlet("/EditProTh.do")
public class EditProThCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProThCtrl() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Theme th = new Theme();
		th.setNo(Integer.parseInt(request.getParameter("no")));
		th.setTitle(request.getParameter("title"));
		th.setContent(request.getParameter("content"));
		th.setReltag(request.getParameter("reltag"));
		
		ThemeDAO dao = new ThemeDAO();
		int cnt = dao.editProTheme(th);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/ThList.do");
		} else {
			response.sendRedirect("/teamproject/EditTh.do?no="+th.getNo());
		}
	}
}