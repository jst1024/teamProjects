package org.busan.ctrl.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.ReplyDAO;
import org.busan.dto.Reply;

//수정된 댓글 저장, 성공여부를 JSON 방식으로 반환
@WebServlet("/EditProReply.do")
public class EditProReplyCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProReplyCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		Reply reply = new Reply();
		reply.setNo(Integer.parseInt(request.getParameter("no")));
		reply.setBoardNo(boardNo);
		reply.setContent(request.getParameter("content"));

		ReplyDAO dao = new ReplyDAO();
		int cnt = dao.editProReply(reply);
		
		if(cnt>0) {
			System.out.println("댓글 수정 성공");
			response.sendRedirect("/teamproject/GetSt.do?no=" + boardNo);
		} else {
			System.out.println("댓글 수정 실패");
			response.sendRedirect("/teamproject/ReplyList.do");
		}
	}
}