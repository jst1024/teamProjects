package org.busan.ctrl.event;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.EventDAO;
import org.busan.dto.Event;

@WebServlet("/EventList.do")
public class EventListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EventListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		getServletContext().setAttribute("title", "축제");
		
		EventDAO dao = new EventDAO();
		List<Event> eventList = new ArrayList<>();
		eventList = dao.getEventList();
		request.setAttribute("eventList", eventList);		
		RequestDispatcher view = request.getRequestDispatcher("/event/eventList.jsp");
		view.forward(request, response);
	}

}