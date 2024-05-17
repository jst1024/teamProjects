package org.busan.ctrl.sharetrip;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.busan.dao.SharetripDAO;
import org.busan.dto.Sharetrip;

@WebServlet("/EditProSt.do")
public class EditProStCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProStCtrl() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Sharetrip st = new Sharetrip();
		st.setNo(Integer.parseInt(request.getParameter("no")));
		st.setTitle(request.getParameter("title"));
		
		SharetripDAO dao = new SharetripDAO();
		int cnt = dao.editProSharetrip(st);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/StList.do");
		} else {
			response.sendRedirect("/teamproject/EditSt.do?no="+st.getNo());
		}
	}
}