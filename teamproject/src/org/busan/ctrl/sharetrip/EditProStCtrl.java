package org.busan.ctrl.sharetrip;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.busan.dao.SharetripDAO;
import org.busan.dto.Sharetrip;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/EditProSt.do")
public class EditProStCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProStCtrl() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Sharetrip st = new Sharetrip();
		
		ServletContext application = request.getServletContext(); //teamproject
		
		try {
			String saveDirectory = application.getRealPath("/stUpload"); //teamproject/WebContent/stUpload
			int maxSize = 1024*1024*10;
			String encoding = "UTF-8";
			
			File dir = new File(saveDirectory);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            
			//MultipartRequest(요청객체명, 저장디렉토리, 최대크기, 인코딩방식, 폴리시);
			MultipartRequest mr = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
			
			
			st.setTitle(mr.getParameter("title"));
			
			Enumeration files = mr.getFileNames();
			String item = (String) files.nextElement(); 			
			
			String oriFile = mr.getOriginalFileName(item); //d:\teamproject/WebContent/stUpload\data001.사진
			String fileName = mr.getFilesystemName(item); //data001.사진

			File upfile = mr.getFile(item);	//실제 파일 업로드 
			st.setPhoto(fileName);
			st.setNo(Integer.parseInt(mr.getParameter("no")));
			
			SharetripDAO dao = new SharetripDAO();
			int cnt = dao.editProSharetrip(st);
			
			String home = request.getServletContext().getContextPath();
	
			if(cnt>0) {
				System.out.println("자료 수정 성공");
				response.sendRedirect(home+"/StList.do");
			} else {
				System.out.println("자료 수정 실패");
				response.sendRedirect(home+"/EditSt.do?no="+st.getNo());
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
    }
}