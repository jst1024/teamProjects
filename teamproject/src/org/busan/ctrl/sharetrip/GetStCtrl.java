package org.busan.ctrl.sharetrip;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.ReplyDAO;
import org.busan.dao.SharetripDAO;
import org.busan.dto.Reply;
import org.busan.dto.Sharetrip;

@WebServlet("/GetSt.do")
public class GetStCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetStCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		int no = Integer.parseInt(request.getParameter("no"));
		
		SharetripDAO sharetripdao = new SharetripDAO();
		ReplyDAO replyDao = new ReplyDAO();
		
		Sharetrip st = sharetripdao.getSharetrip(no);
		int replyCount = sharetripdao.getReplyCount(no);
		
		if (st == null) {
	        response.sendError(HttpServletResponse.SC_NOT_FOUND, "입력된 여행 정보가 없습니다.");
	        return;
	    }
		
        //리스트 가져오기
		List<Reply> replyList = replyDao.getReplies(no);
		
		request.setAttribute("st", st);
		request.setAttribute("replyList", replyList);
		request.setAttribute("replyCount", replyCount);
		
		RequestDispatcher view = request.getRequestDispatcher("/sharetrip/getSt.jsp");
		view.forward(request, response);
	}
	

}