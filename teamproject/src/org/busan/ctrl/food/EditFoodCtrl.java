package org.busan.ctrl.food;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.busan.dao.FoodDAO;
import org.busan.dto.Food;

@WebServlet("/EditFood.do")
public class EditFoodCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditFoodCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("sid");
		
		if(!loginId.equals("admin")) {
			response.sendRedirect("/FoodList.do");
		}
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		FoodDAO dao = new FoodDAO();
		Food food = dao.getFood(no);
		
		request.setAttribute("food", food);
		RequestDispatcher view = request.getRequestDispatcher("/food/editFood.jsp");
		view.forward(request, response);
	}

}