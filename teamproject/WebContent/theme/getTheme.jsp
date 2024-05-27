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
        <style>
        	.ins_btn { display: flex; justify-content: center; background-color: skyblue; border-radius: 10px; margin-right: 5vw; padding: 10px; width:120px; float:right; }
        	.board_gallary_detail {
        		margin-top:150px;
        	}
        	.subtitle-txt {
        		margin-top:30px;
        	}
        	.photo1 { text-align:center; }

        </style>
	</head>
<body>
	<div id="header">
		<%@ include file="/header.jsp" %>
	</div>
    <article style="">
        <div style="width:1400px; margin:0 auto;"></div>
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item" style="margin-left:12vw;"><a href="${path0 }"><i class="fas fa-home"></i></a></li>
			    <li class="breadcrumb-item active" aria-current="page">${title }</li>
			  </ol>
			</nav>
			<hr>
		
        <div class="board_gallary_detail">
            <div style="text-align: center;">
                <h1 class="title-txt">${theme.title }</h1>
                <h2 class="subtitle-txt">${theme.subtitle }</h2>
            </div>
        </div>

        <div style="width: 100vw; height: 1200px; display: flex; justify-content: center;">
            <div style="min-width: 1200px; max-width: 1400px; width: 100vw; height: auto;">
                <!-- 평가영역-->
                <div class="review_area" style="display:flex; float:right; margin-right:30px;">
                    <span>조회수 ${theme.visited }</span>
                </div>
                <!-- 본문영역 -->
                <div style="width: 100%; height: 100%; float: left;">
                    <hr>
                    <div class="photo1"> <img src="${path0}/thUpload/${theme.photo}" alt="본문삽입사진" style="width: 100%;"> </div>
	                    <br><br>
                    <span style="white-space: pre-wrap;">
	                    ${theme.content }
                    </span>
                </div>
            </div>
        </div>
    </article>
    	<!-- 관리자용 글 등록/수정/삭제 버튼 & 목록 버튼 -->
   	<div style="width:100%; height:80px; display:block;">
	<div class="btn-group" style="float: right;">
	  <c:if test="${sid == 'admin'}">
		  <a href="${path0 }/EditTheme.do?no=${theme.no }" class="btn btn-secondary">글 수정</a>
	  	  <a href="${path0 }/DelTheme.do?no=${theme.no }" class="btn btn-secondary">글 삭제</a>
	  </c:if>
	  <a href="${path0 }/ThemeList.do" class="btn btn-secondary">숙박 목록</a>
	</div>
</div>
</body>
</html>