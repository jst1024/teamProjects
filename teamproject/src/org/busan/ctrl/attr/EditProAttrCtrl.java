package org.busan.ctrl.attr;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dao.AttrDAO;
import org.busan.dto.Attr;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/EditProAttr.do")
public class EditProAttrCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProAttrCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Attr attr = new Attr();

		ServletContext application = request.getServletContext(); //teamproject
		
		try {
			String saveDirectory = application.getRealPath("/attrUpload"); //teamproject/WebContent/eventUpload
			int maxSize = 1024*1024*10;
			String encoding = "UTF-8";
			//MultipartRequest(요청객체명, 저장디렉토리, 최대크기, 인코딩방식, 폴리시);
			MultipartRequest mr = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
			
			attr.setTitle(mr.getParameter("title"));
			attr.setSubtitle(mr.getParameter("subtitle"));
			attr.setContent(mr.getParameter("content"));
			attr.setAddr(mr.getParameter("addr"));
			attr.setTel(mr.getParameter("tel"));
			attr.setReltag(mr.getParameter("reltag"));
			attr.setDayoff(mr.getParameter("dayoff"));
			attr.setTraffic(mr.getParameter("traffic"));
			attr.setFee(mr.getParameter("fee"));
			attr.setTips(mr.getParameter("tips"));
			
			Enumeration files = mr.getFileNames();
			String item = (String) files.nextElement(); 			
			
			String oriFile = mr.getOriginalFileName(item); //d:\teamproject/WebContent/eventUpload\data001.zip
			String fileName = mr.getFilesystemName(item); //data001.zip

			File upfile = mr.getFile(item);	//실제 파일 업로드 
			//data.setDatafile(upfile.getName());	//파일이름만 가져와서 datafile 필드에 값 대입
			attr.setPhoto(fileName);
			attr.setNo(Integer.parseInt(mr.getParameter("no")));
			
			AttrDAO dao = new AttrDAO();
			int cnt = dao.insAttr(attr);
			String home = application.getContextPath();
			
			if(cnt>0) {
				System.out.println("자료 수정 성공");
				response.sendRedirect(home+"/AttrList.do");
			} else {
				System.out.println("자료 수정 실패");
				response.sendRedirect(home+"/EditAttr.do?no="+attr.getNo());
			}

			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}