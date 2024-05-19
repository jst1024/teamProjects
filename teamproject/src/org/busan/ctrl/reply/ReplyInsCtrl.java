package org.busan.ctrl.reply;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.busan.dao.ReplyDAO;
import org.busan.dto.Reply;

@WebServlet("/ReplyIns.do")
public class ReplyInsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReplyInsCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//댓글 등록 시 sid(세션아이디) 쓰기 위해 세션 연결
		HttpSession session = request.getSession();
        String sid = (String) session.getAttribute("sid");
        
		Reply reply = new Reply();
		reply.setBoardNo(Integer.parseInt(request.getParameter("boardNo")));
		reply.setId(sid);
		reply.setContent(request.getParameter("content"));

		ReplyDAO dao = new ReplyDAO();
		int cnt = dao.insReply(reply);
		
		if(cnt>0) {
			System.out.println("댓글 추가 성공");
		} else {
			System.out.println("댓글 추가 실패");
		}

		ServletContext application = request.getServletContext();
		String home = application.getContextPath();
		if(cnt>0) {
			response.sendRedirect(home+"/GetSt.do?no="+reply.getBoardNo());
		} else {
			response.sendRedirect(home+"/sharetrip/getSt.jsp");
		}
	}

}