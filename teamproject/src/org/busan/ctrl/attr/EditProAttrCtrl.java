package org.busan.ctrl.attr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.AttrDAO;
import org.busan.dto.Attr;

@WebServlet("/EditProAttr.do")
public class EditProAttrCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProAttrCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Attr attr = new Attr();
		attr.setNo(Integer.parseInt(request.getParameter("no")));
		attr.setTitle(request.getParameter("title"));
		attr.setContent(request.getParameter("content"));
		attr.setAddr(request.getParameter("addr"));
		attr.setTel(request.getParameter("tel"));
		attr.setReltag(request.getParameter("reltag"));
		attr.setDayoff(request.getParameter("dayoff"));
		attr.setTraffic(request.getParameter("traffic"));
		attr.setFee(request.getParameter("fee"));
		attr.setTips(request.getParameter("tips"));
		
		AttrDAO dao = new AttrDAO();
		int cnt = dao.editProAttr(attr);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/AttrList.do");
		} else {
			response.sendRedirect("/teamproject/EditAttr.do?no="+attr.getNo());
		}
	}
}