package org.busan.ctrl.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.busan.dao.AccomDAO;
import org.busan.dao.AttrDAO;
import org.busan.dao.FoodDAO;
import org.busan.dao.MemberDAO;
import org.busan.dao.NoticeDAO;
import org.busan.dto.Accom;
import org.busan.dto.Attr;
import org.busan.dto.Food;
import org.busan.dto.Member;
import org.busan.dto.Notice;

@WebServlet("/AdminMain.do")
public class AdminMainCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminMainCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		NoticeDAO dao = new NoticeDAO();
		AttrDAO dao1 = new AttrDAO();
		FoodDAO dao2 = new FoodDAO();
		AccomDAO dao3 = new AccomDAO();
		MemberDAO dao4 = new MemberDAO();
		
		ServletContext application = request.getServletContext(); 
		String home = application.getContextPath();
		
		List<Notice> notiList = dao.getNoticeList();
		List<Attr> attrList = dao1.getAttrList();
		List<Food> foodList = dao2.getFoodList();
		List<Accom> accomList = dao3.getAccomList();
		List<Member> memList = dao4.getMemberList();
		request.setAttribute("notiList", notiList);
		request.setAttribute("attrList", attrList);
		request.setAttribute("foodList", foodList);
		request.setAttribute("accomList", accomList);
		request.setAttribute("memList", memList);
		
		getServletContext().setAttribute("title", "관리자게시판");
		
		String loginId = (String) session.getAttribute("sid");
		if(!loginId.equals("admin")){
			response.sendRedirect(home);
		} else {
			request.setAttribute("msg", "관리자 페이지입니다.");
			RequestDispatcher view = request.getRequestDispatcher("/admin/admin.jsp");
			view.forward(request, response);
		}
	
		
	
	}
}