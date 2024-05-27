package org.busan.ctrl.sharetrip;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.SharetripDAO;

@WebServlet("/DelSt.do")
public class DelStCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelStCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		ServletContext application = request.getServletContext(); 
		String home = application.getContextPath();
		
		SharetripDAO dao = new SharetripDAO();
		int cnt = dao.delSharetrip(no);
		
		if(cnt>0) {
			response.sendRedirect(home+"/StList.do");
		} else {
			response.sendRedirect(home+"/GetSt.do?no="+no);
		}
	}

}