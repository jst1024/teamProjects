package org.busan.ctrl.theme;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.busan.dao.ThemeDAO;
import org.busan.dto.Theme;

@WebServlet("/EditTheme.do")
public class EditThemeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditThemeCtrl() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("sid");
		
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		ThemeDAO dao = new ThemeDAO();
		Theme theme = dao.getTheme(no);
		
		request.setAttribute("theme", theme);
		RequestDispatcher view = request.getRequestDispatcher("/theme/editTheme.jsp");
		view.forward(request, response);
	}

}