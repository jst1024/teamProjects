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
        <title>Document</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
</head>
<body>

<%
//테스트용 더미 Food객체 List
List<Food> tmp = new ArrayList<>();
Food food = new Food(1, "faskldfjdsalkfjlkdsajflkasdjflkajflkds", "1", "1", "1", "1", "1", "1", 1, 1, "1", "1", "1");
// Food(int no, String title, String subtitle, String photo, String content, String addr, String tel, String reltag, int visited, int liked, String mainmenu, String ontime, String dayoff)
tmp.add(food);
tmp.add(food);
tmp.add(food);
tmp.add(food);
tmp.add(food);
tmp.add(food);
tmp.add(food);
tmp.add(food);

request.setAttribute("tmp",tmp);
%>


	<div id="header">
		<%@ include file="/header.jsp" %>
	</div>

    <article style="">
        <div style="width: 100vw; height: 100px; background-color:#333;"></div>
        <div class="bread_crumb">
            <div class="bread_crumb_icon"><i class="fas fa-home"></i></div>
            <span>추천여행 > 테마여행</span>
        </div>
        <div class="board_gallary_list" style="">
            <h1>테마여행</h1>
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



        <div style="width: 100vw; height: 5000px; display: flex; justify-content: center; align-items: flex-start;">
            <div style="min-width: 1200px; max-width: 1400px;">
                <span>총 ${fn:length(dto)}</span>
                <hr>
                <div class="card_small_board">
                    <div style="">
                    	
                    	<c:forEach var="dto" items="${tmp}">
                    	
                        <!-- 복붙할영역 -->
                        <a class="card_small_board_div" href="card_small_board_detail.jsp"> <!-- ìì¸ì£¼ìë§ ë°ê¾¸ë©´ë¨ -->
                            <div style="">
                                <div class="card_small_board_div_img">
                                    <!-- <img src="${path0 }경로기입" alt=""/> -->
                                    <img src="${path0}/1.jpg" alt="" />
                                </div>
                                <div class="card_small_board_div_txt">
                                    <h3>${dto.title}</h3>
                                </div>
                            </div>
                        </a>
                        <!-- 복붙할영역 끝 -->
                        
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        
    </article>
</body>
</html>