package org.busan.ctrl.wibusan;

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

@WebServlet("/Shop.do")
public class ShopCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ShopCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Curator> shop = new ArrayList<>();
		shop.add(new Curator("트렌디함 물씬, 밀락더마켓", "부산광역시 수영구 민락수변로17번길 56", "051-752-5671", "https://www.visitbusan.net/uploadImgs/files/cntnts/20230613163604135_thumbL", "https://www.instagram.com/millac_the_market_official/"));
		shop.add(new Curator("좌판의 힘 기장시장", "부산광역시 기장군 기장읍 읍내로104번길 1", "051–721-3963", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191226103342213_thumbL", "http://gijangmarket.modoo.at"));
		shop.add(new Curator("광안리 바다의 참맛 민락회타운", "부산광역시 수영구 민락수변로 1", "051-757-3000", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191226104226159_thumbL", ""));
		shop.add(new Curator("텔레비전에 나온 시장맛집 해운대시장", "부산광역시 해운대구 구남로41번길 22-1", "051-746-3001", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191226105015522_thumbL", ""));
		shop.add(new Curator("영도 토박이 남항시장 & 봉래시장", "남항시장 부산광역시 영도구 절영로49번길 73-5 \n봉래시장 부산광역시 영도구 태종로113번길 39", "051-414-9500 \n051-413-3111", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191226131132446_thumbL", ""));
		shop.add(new Curator("기억의 장터 부전마켓타운", 	"부산광역시 부산진구 중앙대로783번길 23", "051-818-7009", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191227113457795_thumbL", "https://bjmarket.modoo.at/"));
		shop.add(new Curator("빛나는 서면시장", "부산광역시 부산진구 서면로 56", "051-806-5025", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191227114043326_thumbL", ""));
		shop.add(new Curator("어머, 구포장날은 꼭 가봐야 해!", "부산광역시 북구 구포시장2길 7", "051-333-9033", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191227204933593_thumbL", ""));
		shop.add(new Curator("부산 먹방의 성지 부평깡통시장", "부산광역시 중구 부평1길 48", "051-243-1128", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191230184821145_thumbL", "http://www.bupyeong-market.com/"));
		shop.add(new Curator("오이소! 보이소! 사이소! 자갈치시장", "부산광역시 중구 자갈치해안로 52", "051-245-2594", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191230201107580_thumbL", "http://jagalchimarket.bisco.or.kr/"));
		shop.add(new Curator("동래여행의 깨알 즐거움, 동래시장", "부산광역시 동래구 동래시장길 14", "051-552-1651", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191230210800496_thumbL", ""));
		shop.add(new Curator("부산 최대 쇼핑거리 광복로패션거리", "부산 중구 광복로", "", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191230201722863_thumbL", ""));
		shop.add(new Curator("음악분수쇼와 전망대를 만나는 롯데백화점 광복점", "부산광역시 중구 중앙대로 2", "051-678-2341~2", "https://www.visitbusan.net/uploadImgs/files/cntnts/20230703144706665_thumbL", "https://www.lotteshopping.com/branchShopGuide/floorGuideSub?cstr=0333"));
		shop.add(new Curator("신세계백화점 센텀시티점", "부산광역시 해운대구 센텀남대로 35 / 센텀4로 15", "051-745-1615~6", "https://www.visitbusan.net/uploadImgs/files/myPhoto/20221226205724820_thumbL", "https://www.shinsegae.com/store/main.do?storeCd=SC00008"));
		shop.add(new Curator("이국적인 쇼핑 스트리트에 빠지다! 부산프리미엄아울렛", "부산광역시 기장군 장안읍 정관로 113", "1644-4001", "https://www.visitbusan.net/uploadImgs/files/cntnts/20200213181053895_thumbL", "https://www.premiumoutlets.co.kr/busan"));
		shop.add(new Curator("여가~거가! 광안리", "부산광역시 수영구 광안해변로 219, 수영구생활문화센터 1층", "051-757-1203", "https://www.visitbusan.net/uploadImgs/files/cntnts/20230704095406026_thumbL", "https://busansouvenir2.com/"));
		
		request.setAttribute("shop", shop);
		request.setAttribute("title", "쇼핑");
		
		RequestDispatcher view = request.getRequestDispatcher("/wibusan/shop.jsp");
		view.forward(request, response);
	}

}
