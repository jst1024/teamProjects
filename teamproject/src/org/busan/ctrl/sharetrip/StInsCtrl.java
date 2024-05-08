package org.busan.ctrl.sharetrip;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

@WebServlet("/StIns.do")
public class StInsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StInsCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		if (ServletFileUpload.isMultipartContent(request)) {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);

            try {
                List<FileItem> items = upload.parseRequest(request);
                for (FileItem item : items) {
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        String filePath = "/path/to/upload/directory/" + fileName;
                        File uploadedFile = new File(filePath);
                        item.write(uploadedFile);
                        response.getWriter().println("File uploaded successfully!");
                    }
                }
            } catch (Exception e) {
                response.getWriter().println("File upload failed: " + e.getMessage());
            }
        } else {
            response.getWriter().println("Invalid form submission. Please use a multipart/form-data form.");
        }
    }
	

}
