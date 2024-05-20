package org.busan.ctrl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dto.Link;

@WebServlet("/teamproject")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Main() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		String home = application.getContextPath();
		String realPath = request.getSession().getServletContext().getRealPath("/");
		
		List<Link> tmp = new ArrayList<>();
        tmp.add(new Link(1, "명소", "subTitle", home + "/AttrList.do", "/img/main/1.jpg"));
        tmp.add(new Link(2, "음식", "subTitle", home + "/FoodList.do", "/img/main/2.jpg"));
        tmp.add(new Link(3, "숙박", "subTitle", home + "/AccomList.do","/img/main/3.jpg"));
        tmp.add(new Link(4, "쇼핑", "subTitle", home,  "/img/main/4.jpg"));
        tmp.add(new Link(5, "축제", "subTitle", home,  "/img/main/5.jpg"));
        
        request.setAttribute("tmp", tmp);
		
		application.setAttribute("realPath", realPath);
		application.setAttribute("title", "부산시");
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp");
		view.forward(request, response);
	}

}
