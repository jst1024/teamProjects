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
        <title>관광안내소</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
</head>
<body>

<%
List<Curator> tmp = new ArrayList<>();
Curator t1 = new Curator("광안리관광안내소", "부산광역시 수영구 광안해변로 219(광안동)", "051-610-4848", "https://www.visitbusan.net/uploadImgs/files/infofc/20201113102621490_thumbL");
Curator t2 = new Curator("동구스마트관광안내소(동구 케어패스)", "부산광역시 동구 중앙대로 206", "051–711-6566", "https://www.visitbusan.net/uploadImgs/files/infofc/20200721182526951_thumbL");
Curator t3 = new Curator("청사포다릿돌전망대 관광안내소", "부산광역시 해운대구 청사포로 167", "051-749-5720", "https://www.visitbusan.net/uploadImgs/files/infofc/20200302111758163_thumbL");
Curator t4 = new Curator("보수동책방골목 관광안내소", "부산광역시 중구 대청로 61-2", "051-245-0305", "https://www.visitbusan.net/uploadImgs/files/infofc/20200302110909505_thumbL");
Curator t5 = new Curator("태종대관광안내소", "부산광역시 영도구 태종대유원지 입구", "051-403-4685", "https://www.visitbusan.net/uploadImgs/files/infofc/20200103104706984_thumbL");
Curator t6 = new Curator("부산종합관광안내소(남포동)", "부산광역시 중구 구덕로 31", "051-253-8253", "https://www.visitbusan.net/uploadImgs/files/infofc/20210405130356158_thumbL");
Curator t7 = new Curator("창선관광안내소", "부산광역시 중구 광복 중앙로 3", "051-242-8253", "https://www.visitbusan.net/uploadImgs/files/infofc/20200103094805508_thumbL");
Curator t8 = new Curator("부산역관광안내소", "부산광역시 동구 중앙대로 206", "051-441-6565", "https://visitbusan.net/uploadImgs/files/infofc/20210405130245227_thumbL");
tmp.add(t1);tmp.add(t2);tmp.add(t3); tmp.add(t4); tmp.add(t5); tmp.add(t6); tmp.add(t7); tmp.add(t8);
request.setAttribute("tmp", tmp);
%>

	<div id="header">
		<%@ include file="/header.jsp" %>
	</div>

    <article style="">
        <div style="width: 100vw; height: 100px; background-color:#333;"></div>
        <div class="bread_crumb">
            <div class="bread_crumb_icon"><i class="fas fa-home"></i></div>
            <span>여행준비 > 관광안내소</span>
        </div>
        <div class="board_gallary_list" style="">
            <h1>관광안내소</h1>
        </div>


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