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

@WebServlet("/Tourinfo.do")
public class TourinfoCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TourinfoCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Curator> tourinfo = new ArrayList<>();
		tourinfo.add(new Curator("광안리관광안내소", "부산광역시 수영구 광안해변로 219(광안동)", "051-610-4848", "https://www.visitbusan.net/uploadImgs/files/infofc/20201113102621490_thumbL", "https://www.busan.go.kr/mmch/index"));
		tourinfo.add(new Curator("동구스마트관광안내소(동구 케어패스)", "부산광역시 동구 중앙대로 206", "051–711-6566", "https://www.visitbusan.net/uploadImgs/files/infofc/20200721182526951_thumbL", "https://www.bsjunggu.go.kr/tour/index.junggu?menuCd=DOM_000000208001001000&link=success&cpath=%2Ftour"));
		tourinfo.add(new Curator("청사포다릿돌전망대 관광안내소", "부산광역시 해운대구 청사포로 167", "051-749-5720", "https://www.visitbusan.net/uploadImgs/files/infofc/20200302111758163_thumbL", "https://www.gamcheon.or.kr/"));
		tourinfo.add(new Curator("보수동책방골목 관광안내소", "부산광역시 중구 대청로 61-2", "051-245-0305", "https://www.visitbusan.net/uploadImgs/files/infofc/20200302110909505_thumbL", "https://bisco.or.kr/gwangbok/"));
		tourinfo.add(new Curator("태종대관광안내소", "부산광역시 영도구 태종대유원지 입구", "051-403-4685", "https://www.visitbusan.net/uploadImgs/files/infofc/20200103104706984_thumbL", "https://www.bisco.or.kr/geumgangpark/"));
		tourinfo.add(new Curator("부산종합관광안내소(남포동)", "부산광역시 중구 구덕로 31", "051-253-8253", "https://www.visitbusan.net/uploadImgs/files/infofc/20210405130356158_thumbL", "https://www.bto.or.kr/eco/Main.do"));
		tourinfo.add(new Curator("창선관광안내소", "부산광역시 중구 광복 중앙로 3", "051-242-8253", "https://www.visitbusan.net/uploadImgs/files/infofc/20200103094805508_thumbL", "https://www.busan.go.kr/nurimaru/"));
		tourinfo.add(new Curator("부산역관광안내소", "부산광역시 동구 중앙대로 206", "051-441-6565", "https://visitbusan.net/uploadImgs/files/infofc/20210405130245227_thumbL", "https://www.bsjunggu.go.kr/tour/index.junggu?menuCd=DOM_000000208002001000&link=success&cpath=%2Ftour"));
		
		request.setAttribute("tourinfo", tourinfo);
		request.setAttribute("title", "관광안내소");
		
		RequestDispatcher view = request.getRequestDispatcher("/readytour/tourinfo.jsp");
		view.forward(request, response);
	}

}
