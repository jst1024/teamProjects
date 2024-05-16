package org.busan.ctrl.theme;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.ThemeDAO;
import org.busan.dto.Theme;

@WebServlet("/GetTh.do")
public class GetThCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetThCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		int no = Integer.parseInt(request.getParameter("no"));
		
		ThemeDAO dao = new ThemeDAO();
		Theme th = dao.getTheme(no);
		
		request.setAttribute("th", th);
		RequestDispatcher view = request.getRequestDispatcher("/theme/getTh.jsp");
		view.forward(request, response);
		
	}

}