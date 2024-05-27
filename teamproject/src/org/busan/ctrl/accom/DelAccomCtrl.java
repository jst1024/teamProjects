package org.busan.ctrl.accom;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.AccomDAO;

@WebServlet("/DelAccom.do")
public class DelAccomCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelAccomCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		ServletContext application = request.getServletContext(); 
		String home = application.getContextPath();
		AccomDAO dao = new AccomDAO();
		int cnt = dao.delAccom(no);
		
		if(cnt>0) {
			response.sendRedirect(home+"/AccomList.do");
		} else {
			response.sendRedirect(home+"/GetAccom.do?no="+no);
		}
	}

}