package org.busan.ctrl.food;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.FoodDAO;
import org.busan.dto.Food;

@WebServlet("/EditProFood.do")
public class EditProFoodCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProFoodCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Food food = new Food();
		food.setNo(Integer.parseInt(request.getParameter("no")));
		food.setContent(request.getParameter("content"));
		food.setAddr(request.getParameter("addr"));
		food.setTel(request.getParameter("tel"));
		food.setReltag(request.getParameter("reltag"));
		food.setMainmenu(request.getParameter("mainmenu"));
		food.setOntime(request.getParameter("ontime"));
		food.setDayoff(request.getParameter("dayoff"));
		
		FoodDAO dao = new FoodDAO();
		int cnt = dao.editProFood(food);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/FoodList.do");
		} else {
			response.sendRedirect("/teamproject/EditFood.do?no="+food.getNo());
		}
	}
}