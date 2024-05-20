<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/head.jsp"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>

<body>
	<div>
		<h2>카드템플릿(card_midium_board)</h2>
		<hr>
		<div class="card_midium_board">
			<div class="">
				<div style="">
					<!-- 한 개체 부분 -->
					<div class="card_midium_board_div">
						<div style="">
							<div class="card_midium_board_div_img">
								<!-- <img src="${path0 }/ì´ë¯¸ì§ìì¤ì£¼ì" alt=""/> -->
								<img src="1.jpg" alt="" />
							</div>
							<div class="card_midium_board_div_txt">
								<!-- <h3>${dto.title}</h3> -->
								<h3 style="">제목</h3>
								<hr>
								<!-- <span>${dto.subtitle}</span> -->
								<span>부제목</span>

								<!-- <p>${dto.content} </p> -->
								<div>
									<p>내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p>
								</div>
							</div>
						</div>
					</div>
					<!-- 한 개체 부분 -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>