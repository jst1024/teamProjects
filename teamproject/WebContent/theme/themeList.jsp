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
<title>${title }</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<style>
.ins_btn { display: flex; justify-content: center; background-color: skyblue; border-radius: 10px; margin-right: 5vw; padding: 10px; width:120px; float:right; }
</style>
</head>
<body>
	<div id="header">s
		<%@ include file="/header.jsp" %>
	</div>

    <article style="">
		 <div style="width: 100vw; height: 100px; background-color:#333;"></div>
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item" style="margin-left:12vw;"><a href="${path0 }"><i class="fas fa-home"></i></a></li>
			    <li class="breadcrumb-item active" aria-current="page">${title }</li>
			  </ol>
			</nav>
			<hr>
		
        <div class="board_gallary_list" style="">
            <h1>${title }</h1>
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



        <div style="width: 100vw; height: auto; display: flex; justify-content: center; align-items: flex-start;">
            <div style="min-width: 1200px; max-width: 1400px;">
                <span>총 ${fn:length(dto)}</span>
                <hr>
                <div class="card_small_board">
                    <div style="">
                    	
                    	<c:forEach var="dto" items="${themeList}">
                    	
                        <!-- 복붙할영역 -->
                        <div class="card_small_board_div" onclick="location.href='${path0}/GetTheme.do?no=${dto.no}'"> <!-- ìì¸ì£¼ìë§ ë°ê¾¸ë©´ë¨ -->
                            <div style="">
                                <div class="card_small_board_div_img">
                                    <!-- <img src="${path0 }경로기입" alt=""/> -->
                                    <img src="${path0 }/thUpload/${dto.photo}" alt="" />
                                </div>
                                <div class="card_small_board_div_txt">
                                    <h3>${dto.title}</h3>
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
    <br>
<div class="ins_btn">
 	<c:if test="${sid.equals('admin') }">
	<a href="${path0 }/theme/theme_ins.jsp" >글 등록</a>
	</c:if>
</div>
    <div id="footer">
        <%@ include file="/footer.jsp" %>
    </div>
</body>
</html>