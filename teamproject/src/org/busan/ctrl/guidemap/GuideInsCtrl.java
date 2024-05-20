package org.busan.ctrl.guidemap;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.GuidemapDAO;
import org.busan.dto.Guidemap;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/GuideIns.do")
public class GuideInsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GuideInsCtrl() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		

		Guidemap gm = new Guidemap();
		
		ServletContext application = request.getServletContext(); //teamproject
		
		try {
			String saveDirectory = application.getRealPath("/gmUpload"); //teamproject/WebContent/gmUpload
			int maxSize = 1024*1024*10;
			String encoding = "UTF-8";
			//MultipartRequest(요청객체명, 저장디렉토리, 최대크기, 인코딩방식, 폴리시);
			MultipartRequest mr = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
			
			gm.setName(request.getParameter("name"));
			gm.setLink(request.getParameter("link"));
			
			Enumeration files = mr.getFileNames();
			String item = (String) files.nextElement(); 			
			
			String oriFile = mr.getOriginalFileName(item); //d:\teamproject/WebContent/gmUpload\data001.zip
			String fileName = mr.getFilesystemName(item); //data001.zip

			File upfile = mr.getFile(item);	//실제 파일 업로드 
			gm.setPhoto(fileName);
			
			GuidemapDAO dao = new GuidemapDAO();
			int cnt = dao.insGuidemap(gm);
			String home = application.getContextPath();
			
			if(cnt>0) {
				System.out.println("자료 추가 성공");
				response.sendRedirect(home+"/GuideList.do");
			} else {
				System.out.println("자료 추가 실패");
				response.sendRedirect(home+"/guidemap/gm_ins.jsp");
			}

			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}