package org.busan.ctrl.attr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.AttrDAO;

@WebServlet("/DelAttr.do")
public class DelAttrCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelAttrCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		AttrDAO dao = new AttrDAO();
		int cnt = dao.delAttr(no);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/AttrList.do");
		} else {
			response.sendRedirect("/teamproject/GetAttr.do?no="+no);
		}
	}

}