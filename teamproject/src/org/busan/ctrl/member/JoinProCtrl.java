package org.busan.ctrl.member;



import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.MemberDAO;
import org.busan.dto.Member;
import org.busan.util.AES256;

@WebServlet("/JoinPro.do")
public class JoinProCtrl extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    public JoinProCtrl() {
        super();
    }

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      response.setCharacterEncoding("UTF-8");
      response.setContentType("text/html; charset=UTF-8");
      
      String pw = request.getParameter("pw");
      String key = "%02x";
      String enPw = "";
      
      try {
    	  enPw = AES256.encryptAES256(pw, key);
      } catch(Exception e) {
    	  e.printStackTrace();
      }
      
      String regdate = LocalDate.now().toString();
      
      Member mem = new Member(
            
            request.getParameter("id"),
            enPw,
            request.getParameter("name"),
            request.getParameter("email"),
            request.getParameter("tel"),
            request.getParameter("address1")+"$"+request.getParameter("address2"),
            request.getParameter("postcode"),
            regdate);
      
      MemberDAO dao = new MemberDAO();
      int cnt = dao.join(mem);
      
      if(cnt>0) {
    	 System.out.println("회원 가입 성공");
         response.sendRedirect(request.getContextPath());
      } else {
    	 System.out.println("회원 가입 실패");
         response.sendRedirect("/member/join.jsp");
      }
   }

}