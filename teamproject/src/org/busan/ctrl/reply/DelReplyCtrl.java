package org.busan.ctrl.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.ReplyDAO;

@WebServlet("/DelReply.do")
public class DelReplyCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelReplyCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		ReplyDAO dao = new ReplyDAO();
		int cnt = dao.delReply(boardNo, no);
		
		if(cnt>0) {
			response.sendRedirect("/teamproject/GetSt.do?no="+boardNo);
		} else {
			response.sendRedirect("/teamproject/ReplyList.do");
		}
	}

}