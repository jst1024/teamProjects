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
                <h1>${theme.title }</h1>
                <h2>${theme.subtitle }</h2>
            </div>
        </div>

        <div style="width: 100vw; height: 1200px; display: flex; justify-content: center;">
            <div style="min-width: 1200px; max-width: 1400px; width: 100vw; height: max-content;">
                <!-- 배너(대표사진)영역 -->
                <div style="width: 100%; height: 400px; overflow: hidden;">
                    <div style="background-image: url(${theme.photo}); width: 100%; height: 100%; background-position: center center; background-size: cover;"></div>
                </div>
                <!-- 평가영역 (좋아요)-->
                <div class="review_area">
                    <span> 좋아요 : 1</span>
                    <span> 조회수 : 300</span>
                </div>
                <!-- 탭 영역 -->
                <div class="board_tab">
                    <a href="#">탭1</a>
                    <a href="#">탭</a>
                    <a href="#">탭</a>
                    <a href="#">탭</a>
                </div>
                <!-- 본문영역 -->
                <div style="width: 100%; height: 100%; float: left;">
                    <hr>
                    <span style="white-space: pre-wrap;">
                    <img src="${theme.photo}" alt="" style="width: 100%;">
                    ${theme.content }
                    </span>
                </div>
            </div>
        </div>

    </article>
</body>
</html>