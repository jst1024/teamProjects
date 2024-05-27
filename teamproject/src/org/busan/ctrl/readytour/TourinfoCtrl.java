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
		tourinfo.add(new Curator("광안리관광안내소", "부산광역시 수영구 광안해변로 219(광안동)", "051-610-4848", "https://www.visitbusan.net/uploadImgs/files/infofc/20201113102621490_thumbL", "https://map.naver.com/p/search/%EA%B4%91%EC%95%88%EB%A6%AC%EC%95%88%EB%82%B4%EC%86%8C/place/32779776?c=13.00,0,0,0,dh&placePath=%3Fentry%253Dbmp"));
		tourinfo.add(new Curator("동구스마트관광안내소(동구 케어패스)", "부산광역시 동구 중앙대로 206", "051–711-6566", "https://www.visitbusan.net/uploadImgs/files/infofc/20200721182526951_thumbL", "https://map.naver.com/p/search/%EB%8F%99%EA%B5%AC%EC%95%88%EB%82%B4%EC%86%8C/place/1612086307?c=15.06,0,0,0,dh&placePath=%3Fentry%253Dbmp"));
		tourinfo.add(new Curator("청사포다릿돌전망대 관광안내소", "부산광역시 해운대구 청사포로 167", "051-749-5720", "https://www.visitbusan.net/uploadImgs/files/infofc/20200302111758163_thumbL", "https://map.naver.com/p/search/%EC%B2%AD%EC%82%AC%ED%8F%AC%EB%8B%A4%EB%A6%BF%EB%8F%8C%EC%A0%84%EB%A7%9D%EB%8C%80/place/1486292872?c=15.00,0,0,0,dh&placePath=%3Fentry%253Dbmp"));
		tourinfo.add(new Curator("보수동책방골목 관광안내소", "부산광역시 중구 대청로 61-2", "051-245-0305", "https://www.visitbusan.net/uploadImgs/files/infofc/20200302110909505_thumbL", "https://map.naver.com/p/search/%EB%B3%B4%EC%88%98%EB%8F%99%EC%B1%85%EB%B0%A9%EA%B3%A8%EB%AA%A9%EB%AC%B8%ED%99%94%EA%B4%80/place/16421127?c=15.00,0,0,0,dh&isCorrectAnswer=true"));
		tourinfo.add(new Curator("태종대관광안내소", "부산광역시 영도구 태종대유원지 입구", "051-403-4685", "https://www.visitbusan.net/uploadImgs/files/infofc/20200103104706984_thumbL", "https://map.naver.com/p/search/%ED%83%9C%EC%A2%85%EB%8C%80%EC%95%88%EB%82%B4%EC%86%8C/place/16751181?c=18.35,0,0,0,dh"));
		tourinfo.add(new Curator("부산종합관광안내소(남포동)", "부산광역시 중구 구덕로 31", "051-253-8253", "https://www.visitbusan.net/uploadImgs/files/infofc/20210405130356158_thumbL", "https://map.naver.com/p/search/%EB%B6%80%EC%82%B0%EC%A2%85%ED%95%A9%EA%B4%80%EA%B4%91%EC%95%88%EB%82%B4%EC%86%8C/place/32538145?c=17.82,0,0,0,dh&isCorrectAnswer=true"));
		tourinfo.add(new Curator("창선관광안내소", "부산광역시 중구 광복 중앙로 3", "051-242-8253", "https://www.visitbusan.net/uploadImgs/files/infofc/20200103094805508_thumbL", "https://map.naver.com/p/search/%EC%B0%BD%EC%84%A0%EA%B4%80%EA%B4%91%EC%95%88%EB%82%B4%EC%86%8C?c=17.86,0,0,0,dh"));
		tourinfo.add(new Curator("부산역관광안내소", "부산광역시 동구 중앙대로 206", "051-441-6565", "https://visitbusan.net/uploadImgs/files/infofc/20210405130245227_thumbL", "https://map.naver.com/p/entry/place/11620754?c=17.86,0,0,0,dh"));
		
		request.setAttribute("tourinfo", tourinfo);
		request.setAttribute("title", "관광안내소");
		
		RequestDispatcher view = request.getRequestDispatcher("/readytour/tourinfo.jsp");
		view.forward(request, response);
	}

}
