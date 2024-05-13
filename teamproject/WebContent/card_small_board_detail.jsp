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
	<div id="header">
		<%@ include file="/header.jsp" %>
	</div>
    <article style="">
        <div style="width: 100vw; height: 100px;"></div>
        <div class="bread_crumb">
            <div class="bread_crumb_icon"><i class="fas fa-home"></i></div>
            <span>추천여행 > 테마여행</span>
        </div>
        <div class="board_gallary_detail">
            <div style="text-align: center;">
                <h1>
                  	제목제목제목제목제목제목제목제목
                </h1>
                <h2>
                	부제목부제목부제목부제목부제목부제목
                </h2>
            </div>
        </div>

        <div style="width: 100vw; height: 1200px; display: flex; justify-content: center;">
            <div style="min-width: 1200px; max-width: 1400px; width: 100vw; height: max-content;">
                <!-- 배너(대표사진)영역 -->
                <div style="width: 100%; height: 400px; overflow: hidden;">
                    <div style="background-image: url('1.jpg'); width: 100%; height: 100%; background-position: center center; background-size: cover;"></div>
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
                    fdsafdjsahfdsafjlkdsajflkdasjflkdasfjsdafklflsdka
                    afdkldsjaf
                    dsafjdasf
                    ajsdf
                    <img src="1.jpg" alt="" style="width: 100%;">
                    dsadsf
                    </span>
                </div>
            </div>
        </div>

    </article>
</body>
</html>