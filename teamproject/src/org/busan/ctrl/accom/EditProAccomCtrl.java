package org.busan.ctrl.accom;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.AccomDAO;
import org.busan.dto.Accom;

@WebServlet("/EditProAccom.do")
public class EditProAccomCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProAccomCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Accom accom = new Accom();
		accom.setNo(Integer.parseInt(request.getParameter("no")));
		accom.setTitle(request.getParameter("title"));
		accom.setContent(request.getParameter("content"));
		accom.setAddr(request.getParameter("addr"));
		accom.setTel(request.getParameter("tel"));
		accom.setReltag(request.getParameter("reltag"));
		accom.setBusitype(request.getParameter("busitype"));
		accom.setHomepage(request.getParameter("homepage"));
		
		AccomDAO dao = new AccomDAO();
		int cnt = dao.editProAccom(accom);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/AccomList.do");
		} else {
			response.sendRedirect("/teamproject/EditAccom.do?no="+accom.getNo());
		}
	}
}