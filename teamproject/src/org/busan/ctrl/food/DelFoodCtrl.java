package org.busan.ctrl.food;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.FoodDAO;

@WebServlet("/DelFood.do")
public class DelFoodCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelFoodCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		FoodDAO dao = new FoodDAO();
		int cnt = dao.delFood(no);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/FoodList.do");
		} else {
			response.sendRedirect("/teamproject/GetFood.do?no="+no);
		}
	}

}