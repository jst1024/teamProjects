package org.busan.ctrl.notice;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.NoticeDAO;
import org.busan.dto.Notice;

@WebServlet("/EditProNotice.do")
public class EditProNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProNoticeCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Notice noti = new Notice();
		noti.setNo(Integer.parseInt(request.getParameter("no")));
		noti.setTitle(request.getParameter("title"));
		noti.setContent(request.getParameter("content"));
		getServletContext().setAttribute("title", "공지사항");
		ServletContext application = request.getServletContext(); 
		String home = application.getContextPath();
		
		NoticeDAO dao = new NoticeDAO();
		int cnt = dao.editProNotice(noti);
		
		System.out.println(noti);

		if(cnt>0) {
			System.out.println("자료 수정 성공");
			response.sendRedirect(home+"/NotiList.do");
		} else {
			System.out.println("자료 수정 실패");
			response.sendRedirect(home+"/EditNotice.do?no="+noti.getNo());
		}
	}
}