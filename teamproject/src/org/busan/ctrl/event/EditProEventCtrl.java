package org.busan.ctrl.event;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.EventDAO;
import org.busan.dto.Event;

@WebServlet("/EditProEvent.do")
public class EditProEventCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProEventCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Event event = new Event();
		event.setNo(Integer.parseInt(request.getParameter("no")));
		event.setTitle(request.getParameter("title"));
		event.setOndate(request.getParameter("ondate"));
		event.setContent(request.getParameter("content"));
		event.setTel(request.getParameter("tel"));
		event.setPhoto(request.getParameter("photo"));
		
		EventDAO dao = new EventDAO();
		int cnt = dao.editProEvent(event);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/EventList.do");
		} else {
			response.sendRedirect("/teamproject/EditEvent.do?no="+event.getNo());
		}
	}
}