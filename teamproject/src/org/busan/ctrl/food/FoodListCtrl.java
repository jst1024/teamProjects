package org.busan.ctrl.food;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.FoodDAO;
import org.busan.dto.Food;

@WebServlet("/FoodList.do")
public class FoodListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FoodListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		getServletContext().setAttribute("title", "음식");
		
		FoodDAO dao = new FoodDAO();
		List<Food> foodList = new ArrayList<>();
		foodList = dao.getFoodList();
		request.setAttribute("foodList", foodList);		
		RequestDispatcher view = request.getRequestDispatcher("/food/foodList.jsp");
		view.forward(request, response);
	}

}