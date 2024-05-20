package org.busan.ctrl.accom;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.AccomDAO;
import org.busan.dto.Accom;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/EditProAccom.do")
public class EditProAccomCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProAccomCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Accom accom = new Accom();
		
		ServletContext application = request.getServletContext(); //teamproject
		
		try {
			String saveDirectory = application.getRealPath("/accomUpload"); //teamproject/WebContent/accomUpload
			int maxSize = 1024*1024*10;
			String encoding = "UTF-8";
			//MultipartRequest(요청객체명, 저장디렉토리, 최대크기, 인코딩방식, 폴리시);
			MultipartRequest mr = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
			
			accom.setTitle(request.getParameter("title"));
			accom.setContent(request.getParameter("content"));
			accom.setAddr(request.getParameter("addr"));
			accom.setTel(request.getParameter("tel"));
			accom.setReltag(request.getParameter("reltag"));
			accom.setBusitype(request.getParameter("busitype"));
			accom.setHomepage(request.getParameter("homepage"));
			
			Enumeration files = mr.getFileNames();
			String item = (String) files.nextElement(); 			
			
			String oriFile = mr.getOriginalFileName(item); //d:\teamproject/WebContent/accomUpload\data001.zip
			String fileName = mr.getFilesystemName(item); //data001.zip

			File upfile = mr.getFile(item);	//실제 파일 업로드 
			//data.setDatafile(upfile.getName());	//파일이름만 가져와서 datafile 필드에 값 대입
			accom.setPhoto(fileName);
			accom.setNo(Integer.parseInt(mr.getParameter("no")));
			
			AccomDAO dao = new AccomDAO();
			int cnt = dao.insAccom(accom);
			String home = application.getContextPath();
			
			if(cnt>0) {
				System.out.println("자료 수정 성공");
				response.sendRedirect(home+"/AccomList.do");
			} else {
				System.out.println("자료 수정 실패");
				response.sendRedirect(home+"/EditAccom.do?no="+accom.getNo());
			}

			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}