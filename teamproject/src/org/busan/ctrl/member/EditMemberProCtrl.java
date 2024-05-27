package org.busan.ctrl.member;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.MemberDAO;
import org.busan.dto.Member;
import org.busan.util.AES256;

@WebServlet("/EditMemberPro.do")
public class EditMemberProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditMemberProCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		ServletContext application = request.getServletContext(); 
		String home = application.getContextPath();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String key = "%02x";
		String enPw = "";
		LocalDateTime regdate = LocalDateTime.now();
        try {
            enPw = AES256.encryptAES256(pw, key);
            System.out.println("비밀번호 암호화 : "+enPw);
        } catch (Exception e) {
            e.printStackTrace();
        }
		Member mem = new Member(
				request.getParameter("id"),
				enPw,
				request.getParameter("kname"),
				request.getParameter("email"),
				request.getParameter("tel"),
				request.getParameter("address1")+"<br>"+request.getParameter("address2"),
				request.getParameter("postcode"),
				regdate
				);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.upMember(mem);
		if(cnt>0) {
			response.sendRedirect(home);
		} else {
			response.sendRedirect("/EditMember.do?id="+id);
		}
	}

}