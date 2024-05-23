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

@WebServlet("/Festival.do")
public class FestivalCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FestivalCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Curator> festival = new ArrayList<>();
		festival.add(new Curator("부산국제코미디페스티벌", "2024. 8. 23.(금) ~ 9. 1.(일)", "051-916-8828", "https://www.visitbusan.net/uploadImgs/files/cntnts/20230828120440993_thumbL", "http://www.bicf.kr/"));
		festival.add(new Curator("부산수제맥주마스터스챌린지", "2024. 8. 18.(일) ~ 8. 20.(화)", "051-714-4758", "https://www.visitbusan.net/uploadImgs/files/cntnts/20230821115632607_thumbL", "https://litt.ly/busancraftbeermasterschallenge"));
		festival.add(new Curator("알록달록 은은한 부산연등회", "2024. 4. 26.(금) ~ 5. 12.(일)", "051-850-6081", "https://www.visitbusan.net/uploadImgs/files/cntnts/20230517141710433_thumbL", "http://www.bba48.or.kr"));
		festival.add(new Curator("세계 최고의 케이팝 콘서트, 부산원아시아페스티벌", "2024. 6. 8.(토)", "051-780-4158", "https://www.visitbusan.net/uploadImgs/files/cntnts/20231013131527561_thumbL", "http://bof.or.kr"));
		festival.add(new Curator("부산푸드필름페스타", "2024. 6. 30.(금) ~ 7. 2.(일)", "051-710-6948", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20201011133841750_thumbL", "https://bfff.kr/"));
		festival.add(new Curator("영화로 물드는 부산의 10월, 부산국제영화제", "매년 10월", "1688-3010", "https://www.visitbusan.net/uploadImgs/files/cntnts/20200110131702589_thumbL", "http://www.biff.kr"));
		festival.add(new Curator("아름다운 부산 밤하늘의 하모니, 부산불꽃축제", "매년 11월", "051-713-5000", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191230180157336_thumbL", "http://www.bfo.or.kr"));
		festival.add(new Curator("부산국제록페스티벌", "2024. 10. 4.(금) ~ 10. 6.(일)", "051-713-5000", "https://www.visitbusan.net/uploadImgs/files/cntnts/20230913151940386_thumbL", "https://busanrockfestival.com/"));
		festival.add(new Curator("부산하면 여름, 여름하면 부산바다축제", "2024. 8. 1.(금) ~ 8. 6.(일)", "051-713-5000", "https://www.visitbusan.net/uploadImgs/files/cntnts/20191213191711585_thumbL", "http://www.bfo.or.kr"));
		
		request.setAttribute("festival", festival);
		request.setAttribute("title", "축제");
		
		RequestDispatcher view = request.getRequestDispatcher("/wibusan/festival.jsp");
		view.forward(request, response);
	}

}
