package org.busan.ctrl.food;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.FoodDAO;
import org.busan.dto.Food;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/EditProFood.do")
public class EditProFoodCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProFoodCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Food food = new Food();
		getServletContext().setAttribute("title", "음식");

		ServletContext application = request.getServletContext(); //teamproject
		
		try {
			String saveDirectory = application.getRealPath("/foodUpload"); //teamproject/WebContent/stUpload
			int maxSize = 1024*1024*10;
			String encoding = "UTF-8";
			//MultipartRequest(요청객체명, 저장디렉토리, 최대크기, 인코딩방식, 폴리시);
			MultipartRequest mr = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
			
			food.setTitle(mr.getParameter("title"));
			food.setSubtitle(mr.getParameter("subtitle"));
			food.setContent(mr.getParameter("content"));
			food.setAddr(mr.getParameter("addr"));
			food.setTel(mr.getParameter("tel"));
			food.setReltag(mr.getParameter("reltag"));
			food.setMainmenu(mr.getParameter("mainmenu"));
			food.setOntime(mr.getParameter("ontime"));
			food.setDayoff(mr.getParameter("dayoff"));
			
			Enumeration files = mr.getFileNames();
			String item = (String) files.nextElement(); 			
			
			String oriFile = mr.getOriginalFileName(item); //d:\teamproject/WebContent/stUpload\data001.zip
			String fileName = mr.getFilesystemName(item); //data001.zip

			File upfile = mr.getFile(item);	//실제 파일 업로드 
			food.setPhoto(fileName);
			food.setNo(Integer.parseInt(mr.getParameter("no")));
			
			FoodDAO dao = new FoodDAO();
			int cnt = dao.editProFood(food);
			String home = application.getContextPath();
			
			if(cnt>0) {
				System.out.println("자료 수정 성공");
				response.sendRedirect(home+"/FoodList.do");
			} else {
				System.out.println("자료 수정 실패");
				response.sendRedirect(home+"/EditFood.do?no="+food.getNo());
			}

			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}