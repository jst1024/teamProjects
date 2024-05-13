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
<script src="${path0 }/js/jquery.dataTables.js"></script>
<link rel="stylesheet" href="${path0 }/css/jquery.dataTables.css" >
<style>
	.card_midium_horizontal { width: 100%; height: auto; overflow-x: scroll; overflow-y: hidden; white-space: nowrap; }
	.card_midium_horizontal > div {width: max-content;}
	.card_midium_horizontal::-webkit-scrollbar {height:10px; width: 20%;}
	.card_midium_horizontal::-webkit-scrollbar-thumb {background: rgba(0,0,0,0.25); border-radius: 5px;}
	.card_midium_horizontal_div {display: block; float: left; }
	.card_midium_horizontal_div h3 {padding-top:1rem; font-weight:900;}
	.card_midium_horizontal_div span {font-weight:900;}
	.card_midium_horizontal_div p {width:100%; height:96px; overflow:hidden; white-space:normal; text-overflow:ellipsis; display: -webkit-box; -webkit-line-clamp: 4; -webkit-box-orient: vertical; text-align:left;}
	.card_midium_horizontal_div > div {width: 297px;  margin:10px; padding:0; border:1px solid rgba(0,0,0,0.3); border-radius:10px; overflow:hidden; box-shadow:0px 4px 4px 4px rgba(0,0,0,0.1);}
	.card_midium_horizontal_div_txt {padding: 0 15px;}
	.card_midium_horizontal_div_img {display:flex; justify-contents:center; align-items:center; width:295px; height:254px;}
	.card_midium_horizontal_div_img > img { display:block; clear:both; width:100%;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
			<div style="width:1400px; margin:0 auto;">
				<nav aria-label="breadcrumb" style="text-align:right">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="#">Home</a></li>
				    <li class="breadcrumb-item"><a href="${path0 }/stList.do">여행공유</a></li>
				    <li class="breadcrumb-item active" aria-current="page">여행공유 목록</li>
				  </ol>
				</nav>
				<hr>
			</div>
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">여행공유 목록</h3>
					<div>
		<h2>카드템플릿제목</h2>
		<hr>
		<div class="card_midium_horizontal grid1">
		<div class="col1" >
			<div style="width: max-content">
				<c:forEach var="dto" items="${tmp}">
					<div class="card_midium_horizontal_div">
						<div style="">
							<div class="card_midium_horizontal_div_img">
								<!-- <img src="${path0 }/이미지소스주소" alt=""/> -->
								<img src="${path0 }/images/.jpg" alt="" />
							</div>
							<div class="card_midium_horizontal_div_txt">
								<!-- <h3>${dto.title}</h3> -->
								<h3 style="">제목</h3>
								<hr>
								<!-- <span>${dto.subtitle}</span> -->
								<span>부제목</span>

								<!-- <p>${dto.content} </p> -->
								${dto.content }
								<div>
									<p>콘텐츠(글자글자수제한)콘텐츠(글글자수제한)콘제한)콘텐츠(글자수제한)</p>
								</div>
							</div>
						</div>
					</div>

				</c:forEach>
				<a href="${path0 }/sharetrip/st_ins.jsp" >글 등록</a>
			</div>
		</div>
		
	</div>

			</div>
		</div>
	</section>
	<section class="page" id="page2">
		<div style="width:1400px; margin:0 auto;">	
			<h3 class="page_title"></h3>

		</div>	
	</section>	
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>