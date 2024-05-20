<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<!-- 기존 css -->
<style>
.container { width:1400px; }
.page { clear:both; height:100vh; }
#page1 { background-color:#ececec; }
#page2 { background-color:#42bcf5; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:8%; }
th.item2 { width:60%; }
th.item3 { width:20%; }
</style>
<style>
.wholeBox {
	margin:0 auto;
	margin-bottom:50px;
	width:1200px; min-width:1000px;
	height:auto;
	background-color: #FFF;
    padding: 10px;
}
	.title-area{
		margin-top:50px;
		margin-left:20px;
	}
	.flex-item h1, h5 {
		margin-top:30px;
	}
	.photo-area {
		display: block;
		width: 100%; max-width: 100%;
		height: 600px; margin: 0 auto;
		overflow: hidden; text-align: center;
		border: 2px solid black;
	}
	
	.board-contents {
		width:1140px; min-width:1000px;
		margin-top:50px;
		margin:0 auto;
	}
		.reltag-area {
			margin:30px auto;
		}
		.content-area {
			margin:30px auto;
		}
		.board-contents span {
		    margin-top:10px;
		    margin-left:50px;
		    display: block;
		    font-size: 18px;
		}
		.board-contents h3 {
			margin-top:50px;
			margin-bottom:30px;
		    margin-left:30px;
		    display: block;
		}
		#map {
			margin-left:30px;
			margin-bottom:50px;
			border: 2px solid black;
			border-radius:30px;
		}
		.map-area span {
		    margin-top:10px;
		    margin-bottom:10px;
		    margin-left:50px;
		    display: block;
		    font-size: 18px;
		}
		.map-area h3 {
			margin-top:50px;
			margin-bottom:30px;
		    margin-left:30px;
		    display: block;
		}
		.map-area {
			width:1140px; min-width:1000px;
			margin-top:50px;
			margin:0 auto;
		}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>

<!-- 브레드크럼 -->
<div style="width: 100vw; height: 100px; background-color:#333;"></div>
        <nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item" style="margin-left:12vw;"><a href="${path0 }"><i class="fas fa-home"></i></a></li>
		    <li class="breadcrumb-item"><a href="${path0 }/EventList.do">축제/행사</a></li>
		    <li class="breadcrumb-item active" aria-current="page">${event.title }</li>
		  </ol>
		</nav>


<div class="wholeBox">
	<!-- 제목 & 부제목 & 방문 수 -->
	<div class="title-area">
		<div class="">
	        <h1>${event.title}</h1>
	    </div>
	</div>
	
	<!-- 이미지 1200*auto tac -->
	<div class="photo-area">
	    <div class="image-wrapper">
	        <img src="${path0}/eventUpload/${event.photo}" alt="사진여기있잖아왜안뜨는데" />
	    </div>
	</div>
	
	<!-- 관리자용 글 등록/수정/삭제 버튼 & 목록 버튼 -->
	<div class="btn-group" style="float: right;">
	  <c:if test="${sid == 'admin'}">
		  <a href="${path0 }/event/event_ins.jsp" class="btn btn-secondary">글 등록</a>
		  <a href="${path0 }/EditEvent.do?no=${event.no }" class="btn btn-secondary">글 수정</a>
	  	  <a href="${path0 }/DelEvent.do?no=${event.no }" class="btn btn-secondary">글 삭제</a>
	  </c:if>
	  <a href="${path0 }/EventList.do" class="btn btn-secondary">축제/행사 목록</a>
	</div>
	
	<!-- 사진 아래 콘텐츠 영역 -->
	<div class="board-contents">
		<!-- 설명(content) -->
		<div class="content-area">
			<h3>장소 설명</h3>
	        <div class="content-item" style="margin-bottom:10px;">
	            <span>${event.content}</span>
	        </div>
		</div>
		<hr>
		<!-- 상세정보(주소,연락처,교통편 등) -->
		<div class="info-area">
			<h3>상세정보</h3>
			<span>▶&nbsp;&nbsp;<strong>운영기간 : </strong>&nbsp;&nbsp;${event.ondate }</span><br>
			<span>▶&nbsp;&nbsp;<strong>연락처 : </strong>&nbsp;&nbsp;${event.tel }</span><br>
			<span style="font-size: 18px;">
			    ▶&nbsp;&nbsp;<strong>URL :</strong>&nbsp;&nbsp;
			    <a href="${event.homepage }" style="font-size: 18px; color: #007bff; text-decoration: underline;">${event.homepage }</a>
			</span>
			<br>
		</div>
	</div>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>
