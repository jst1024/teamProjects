package org.busan.ctrl.theme;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.ThemeDAO;

@WebServlet("/DelTheme.do")
public class DelThemeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelThemeCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		ThemeDAO dao = new ThemeDAO();
		int cnt = dao.delTheme(no);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/ThList.do");
		} else {
			response.sendRedirect("/teamproject/GetTheme.do?no="+no);
		}
	}

}