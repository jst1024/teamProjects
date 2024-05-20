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
		    <li class="breadcrumb-item"><a href="${path0 }/AttrList.do">명소</a></li>
		    <li class="breadcrumb-item active" aria-current="page">${attr.title }</li>
		  </ol>
		</nav>


<div class="wholeBox">
	<!-- 제목 & 부제목 & 방문 수 -->
	<div class="title-area">
		<div class="">
	        <h1>${attr.title}</h1>
	        <h5>${attr.subtitle}</h5>
	    </div>
		<div class="">
	        <span style="float: right; display: block; font-size: 18px; margin-bottom:10px; margin-right:20px;">방문 수 : ${attr.visited}</span>
	    </div>
	</div>
	
	<!-- 이미지 1200*auto tac -->
	<div class="photo-area">
	    <div class="image-wrapper">
	        <img src="${path0}/attrUpload/${attr.photo}" alt="사진여기있잖아왜안뜨는데" />
	    </div>
	</div>
	
	<!-- 관리자용 글 등록/수정/삭제 버튼 & 목록 버튼 -->
	<div class="btn-group" style="float: right;">
	  <c:if test="${sid == 'admin'}">
		  <a href="${path0 }/attr/attr_ins.jsp" class="btn btn-secondary">글 등록</a>
		  <a href="${path0 }/EditAttr.do?no=${attr.no }" class="btn btn-secondary">글 수정</a>
	  	  <a href="${path0 }/DelAttr.do?no=${attr.no }" class="btn btn-secondary">글 삭제</a>
	  </c:if>
	  <a href="${path0 }/AttrList.do" class="btn btn-secondary">명소 목록</a>
	</div>
	
	<!-- 사진 아래 콘텐츠 영역 -->
	<div class="board-contents">
		<!-- reltag -->
		<div class="reltag-area">
			<span style="">${attr.reltag}</span>
		</div>
		<hr>
		<!-- 설명(content) -->
		<div class="content-area">
			<h3>장소 설명</h3>
	        <div class="content-item" style="margin-bottom:10px;">
	            <span>${attr.content}</span>
	        </div>
		</div>
		<hr>
		<!-- 상세정보(주소,연락처,교통편 등) -->
		<div class="info-area">
			<h3>상세정보</h3>
			<span>▶&nbsp;&nbsp;<strong>주소 : </strong>&nbsp;&nbsp;${attr.addr }</span><br>
			<span>▶&nbsp;&nbsp;<strong>연락처 : </strong>&nbsp;&nbsp;${attr.tel }</span><br>
			<span>▶&nbsp;&nbsp;<strong>교통편 :</strong> &nbsp;&nbsp;${attr.traffic }</span><br>
			<span>▶&nbsp;&nbsp;<strong>휴무일 : </strong>&nbsp;&nbsp;${attr.dayoff }</span><br>
			<span>▶&nbsp;&nbsp;<strong>요금 : </strong>&nbsp;&nbsp;${attr.fee }</span><br>
			<div class="info-area-tips">
			<hr>
				<h3>이용 꿀팁 & 여행 에티켓</h3>
				<span>▶&nbsp;&nbsp;${attr.tips }</span>
			</div>
		</div>
	</div>
	<hr>
	<!-- 지도(api) -->
	<div class="map-area">
		<div>
	        <h3>오시는 길</h3>
	        <span style="font:18px">오는 길 입력(jsp단)</span>
	        <!-- 교통정보 콘텐츠 -->
	        <div id="map" style="width:500px; height:400px;"></div>
	    </div>
	    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5873434db82731615cf5ce9e55cc6a1a"></script>
	    <script>
		 const container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	        let options = { //지도를 생성할 때 필요한 기본 옵션
	            center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	            level: 3 //지도의 레벨(확대, 축소 정도)
	        };
	
	        let map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	    </script>
    </div>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>
