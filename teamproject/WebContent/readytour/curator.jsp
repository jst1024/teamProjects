<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <%@ include file="/head.jsp" %>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>문화관광</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
</head>
<body>

<%
List<Curator> tmp = new ArrayList<>();
Curator t1 = new Curator("부산근현대역사관(별관)", "화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051-607-8045", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20240220175222430_thumbL");
Curator t2 = new Curator("40계단문화관(기념관)", "화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051)600-4046", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20200120155814215_thumbL");
Curator t3 = new Curator("감천문화마을", "월요일,화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051-204-1444", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20200120161215660_thumbL");
Curator t4 = new Curator("부산광복기념관", "화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051-860-7800", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20201011132901510_thumbL");
Curator t5 = new Curator("금강공원", "화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051-860-7800", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20201011133841750_thumbL");
Curator t6 = new Curator("낙동강생태탐방선", "수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051)294-2135", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20230529143748627_thumbL");
Curator t7 = new Curator("누리마루 APEC하우스", "월요일,화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051)743-1974", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20210425160505260_thumbL");
Curator t8 = new Curator("동삼동패총전시관", "화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051)403-1193", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20200120163046556_thumbL");
Curator t9 = new Curator("몰운대", "화요일,수요일,목요일,금요일,토요일,일요일/10:00~16:00", "051)220-4524", "https://www.visitbusan.net/uploadImgs/files/ctcommentator/20200120163500101_thumbL");
tmp.add(t1);tmp.add(t2);tmp.add(t3); tmp.add(t4); tmp.add(t5); tmp.add(t6); tmp.add(t7); tmp.add(t8); tmp.add(t9);
request.setAttribute("tmp", tmp);
%>
	<div id="header">
		<%@ include file="/header.jsp" %>
	</div>

    <article style="">
        <div style="width: 100vw; height: 100px; background-color:#333;"></div>
        <div class="bread_crumb">
            <div class="bread_crumb_icon"><i class="fas fa-home"></i></div>
            <span>여행준비 > 문화관광</span>
        </div>
        <div class="board_gallary_list" style="">
            <h1>문화관광</h1>
        </div>



        <!-- hash_box -->
        <div id="hash_box">
            <div class="hash" >
                <a href="">
                    #전체
                </a>
            </div>
            <div class="hash" >
                <a href="">
                    #가나다라
                </a>
            </div>
            <div class="hash" >
                <a href="">
                    #테마여행
                </a>
            </div>
            <div class="hash" >
                <a href="">
                    #교갸교갸샤샤샤
                </a>
            </div>
            <div class="hash" >
                <a href="">
                    #쑊쑊쑊쑊쑊쑊쑊쑊쑊쑊
                </a>
            </div>
        </div>
        <!-- hash_box 끝-->



        <div style="width: 100vw; display: flex; justify-content: center; align-items: flex-start;">
            <div style="min-width: 1200px; max-width: 1400px;">
                <span>총 ${fn:length(tmp)}</span>
                <hr>
                <div class="card_small_board" >
                    <div>
                    	
                    	<c:forEach var="dto" items="${tmp}">
                    	
                        <!-- 복붙할영역 -->
                        <div class="card_small_board_div"> <!-- ìì¸ì£¼ìë§ ë°ê¾¸ë©´ë¨ -->
                            <div style="height:360px;">
                                <div class="card_small_board_div_img">
                                    <!-- <img src="${path0 }경로기입" alt=""/> -->
                                    <img src="${dto.photo }" alt="" />
                                </div>
                                <div class="card_small_board_div_txt">
                                    <h3>${dto.title}</h3>
                                    <p>${dto.ontime }</p>
                                    <p>${dto.tel }</p>
                                </div>
                            </div>
                        </div>
                        <!-- 복붙할영역 끝 -->
                        
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        
    </article>
</body>
</html>