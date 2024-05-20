package org.busan.ctrl.event;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.EventDAO;

@WebServlet("/DelEvent.do")
public class DelEventCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelEventCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		EventDAO dao = new EventDAO();
		int cnt = dao.delEvent(no);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/EventList.do");
		} else {
			response.sendRedirect("/teamproject/GetEvent.do?no="+no);
		}
	}

}