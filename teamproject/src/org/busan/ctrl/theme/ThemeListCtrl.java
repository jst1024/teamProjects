package org.busan.ctrl.theme;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.ThemeDAO;
import org.busan.dto.Theme;

@WebServlet("/ThemeList.do")
public class ThemeListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThemeListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		getServletContext().setAttribute("title", "테마여행");
		
		ThemeDAO dao = new ThemeDAO();
		List<Theme> themeList = new ArrayList<>();
		themeList = dao.getThemeList();
		request.setAttribute("themeList", themeList);		
		RequestDispatcher view = request.getRequestDispatcher("/theme/themeList.jsp");
		view.forward(request, response);
	}

}