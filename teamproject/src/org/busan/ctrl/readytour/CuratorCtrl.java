package org.busan.ctrl.readytour;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.busan.dto.Curator;

@WebServlet("/Curator.do")
public class CuratorCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CuratorCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Curator> curator = new ArrayList<>();
		curator.add(new Curator("부산근현대역사관(별관)", "화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051-607-8045", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20240220175222430_thumbL", "https://www.busan.go.kr/mmch/index"));
		curator.add(new Curator("40계단문화관(기념관)", "화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051)600-4046", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20200120155814215_thumbL", "https://www.bsjunggu.go.kr/tour/index.junggu?menuCd=DOM_000000208001001000&link=success&cpath=%2Ftour"));
		curator.add(new Curator("감천문화마을", "월요일,화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051-204-1444", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20200120161215660_thumbL", "https://www.gamcheon.or.kr/"));
		curator.add(new Curator("부산광복기념관", "화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051-860-7800", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20201011132901510_thumbL", "https://bisco.or.kr/gwangbok/"));
		curator.add(new Curator("금강공원", "화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051-860-7800", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20201011133841750_thumbL", "https://www.bisco.or.kr/geumgangpark/"));
		curator.add(new Curator("낙동강생태탐방선", "수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051)294-2135", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20230529143748627_thumbL", "https://www.bto.or.kr/eco/Main.do"));
		curator.add(new Curator("누리마루 APEC하우스", "월요일,화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051)743-1974", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20210425160505260_thumbL", "https://www.busan.go.kr/nurimaru/"));
		curator.add(new Curator("백산기념관", "화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051)600-4067", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20200120163754514_thumbL", "https://www.bsjunggu.go.kr/tour/index.junggu?menuCd=DOM_000000208002001000&link=success&cpath=%2Ftour"));
		curator.add(new Curator("범어사", "월요일,화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051)508-3122", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20200120164052533_thumbL", "https://www.beomeo.kr/"));
		
		request.setAttribute("curator", curator);
		request.setAttribute("title", "문화관광");
		
		RequestDispatcher view = request.getRequestDispatcher("/readytour/curator.jsp");
		view.forward(request, response);
	}

}
