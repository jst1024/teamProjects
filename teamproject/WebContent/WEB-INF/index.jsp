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

<style>
	.txtContainer {width:33.3%; height:100%; background-color:#FFF; float:left;transition: 0.5s;}
	.imgContainer {width:66.6%; height:100%; background-color:#CCC; float:right;transition: 0.5s;}
	.spanwrap {width:auto; height:auto; overflow:hidden; transition: 0.5s;}
    #tocurator:hover .imgContainer { width: 0%; transition: 0.5s; overflow:hidden;}
    #tocurator:hover .txtContainer { width: 100%; background:linear-gradient(135deg,#39E6DF,#3AB6E6); transition: 0.5s; }
    #tocurator:hover .txtContainer .spanwrap { width:0px; transition: 2s; }
    #tocurator .txtContainer h1 { color:#333; font-size:30pt; transition: 0.5s; }
    #tocurator:hover .txtContainer h1 { color:#FFF; font-size:80pt; transition: 0.5s; }
    #tocurator .txtContainer span {color:#888;}
    
    #toready:hover .imgContainer { width: 0%; transition: 0.5s; overflow:hidden;}
    #toready:hover .txtContainer { width: 100%; background:linear-gradient(135deg,#3AB6E6,#397EE6); transition: 0.5s; }
    #toready:hover .txtContainer .spanwrap { width:0px; transition: 2s; }
    #toready .txtContainer h1 { font-size:22pt; color:#333; transition: 0.5s; }
    #toready:hover .txtContainer h1 { color:#FFF; font-size:60pt; transition: 0.5s; }
    #toready .txtContainer span {color:#888;}
    
    
    #totourinfo { background-color:rgba(255,255,255,0.7); width:300px; height:600px; margin-left:10px; position:relative; cursor:pointer; transition:0.5s;}
    .totourback { width:0; background:linear-gradient(90deg,rgba(0,0,0,0) 10%,#415DFA 70%); height:100%; position:absolute; left:0; top:0; transition:0.5s; overflow:hidden;}
    #totourinfo:hover .totourback { width:100%; transition:0.5s;}
    #totourinfo .totourback > div { float:right; height:100%; width:max-content; font-weight:900; font-size:60pt; color:#FFF; writing-mode:vertical-rl; margin:20px 10px 0 0;}
    #totourinfo .imgwrap1 {position:absolute; width:280px; height:200px; background-color:#FFF; top:160px; left:70px; background-size:150% 150%; background-position:center center; transition:0.5s; background-image:url('https://visitbusan.net/uploadImgs/files/infofc/20210405130245227_thumbL')}
    #totourinfo:hover .imgwrap1 {left:0px; transition:0.5s;}
    #totourinfo .imgwrap2 {position:absolute; width:300px; height:200px; background-color:#FFF; top:380px; left:-20px; background-size:150% 150%; background-position:center center; transition:0.5s; background-image:url('https://www.visitbusan.net/uploadImgs/files/infofc/20201113102621490_thumbL')}
    #totourinfo:hover .imgwrap2 {left:0px; transition:0.5s;}
    #totourinfo .txtwrap > h3 {margin:40px 30px 0 0; font-size:28pt; font-weight:500; transition:0.5s;}
    #totourinfo:hover .txtwrap > h3 {transition:0.5s; width:auto;}
    #totourinfo .txtwrap > span {margin:0 30px 0 0; font-size:20pt; font-weight:100; transition:0.5s;}
    #totourinfo:hover .txtwrap > span {transition:0.5s; width:auto;}

</style>
</head>
<body>
	<div id="header">
		<%@ include file="/header.jsp" %>
	</div>
	<div id="snb">
		<%@ include file="/sidebar.jsp" %>
	</div>
	<script>
    //헤더 텍스트 색상전환
    window.addEventListener('scroll', function() {
    var headerTexts = document.querySelectorAll('#hd a, #hd li');
    var scrollPosition = window.scrollY;
    var header = document.getElementById("hd");
    var logo = document.getElementById("logo");

    if (scrollPosition >= window.innerHeight * 1) {
        headerTexts.forEach(function(text) {
            text.style.color = '#000';
            header.style.backgroundColor = '#fff';
        });
    } else {
        headerTexts.forEach(function(text) {
            text.style.color = '#fff';
            header.style.backgroundColor = 'rgba(255, 255, 255, 0)';
        });
    }
    });
    </script>
    <script>
    //헤더 텍스트 색상전환
    $(document).ready(function() {
    var headerTexts = document.querySelectorAll('#hd a, #hd li');
    var scrollPosition = window.scrollY;
    var header = document.getElementById("hd");
    var logo = document.getElementById("logo");
        headerTexts.forEach(function(text) {
            text.style.color = '#fff';
            header.style.backgroundColor = 'rgba(255, 255, 255, 0)';
        });

    });
    </script>
    
	
	
	<!-- 메인 -->
	<div id="index_1">
	    <div style="width: 100vw; height: 100vh; background-image:url('./img/main/bg_image1.jpg'); background-size:cover;">
			<div style="width:100%; height:100%; background-color:rgba(0,0,0,0.3); display:flex; align-items:center; justify-content:center; color:#FFF;">
				<span style="text-align:center; line-height:1.1">
					<span style="font-size:40px; font-weight:100;">TRIP ADVICE ㆍ AESTHETIC</span><br>
					<span style="font-size:105px; font-weight:900;">TRIP BUSAN</span><br>
					<span style="font-size:64px; font-weight:400;">모던과 전통을 간직한</span>
				</span>
			</div>		
	    </div>
    </div>
    
    <!-- 카드형식 소개 - 명소, 음식, 숙박, 쇼핑, 축제 -->
	<div id="index_2" style="width:100vw; height: 100vh; background-image:url('./img/main/bg_image1.jpg'); background-size:cover;">
	   	<div style="width:100%; height:100%; display:flex; align-items:center; justify-content:end;">
	   		<div style="width:80%; background-color:#FFF; height:100%; display:flex; align-items:center; justify-content:end;">
				<div style="width:100%; float:right; padding-left:150px;">
					<h2 style="color:#333;">부산에 가면</h2>
					<hr>
					<div class="card_midium_horizontal">
					<div class="" >
						<div style="width: max-content">
							<c:forEach var="dto" items="${tmp}">
								<div class="card_midium_horizontal_div" onclick="location.href='${dto.url}'" >
									<div style="background-color:#FFF; height:420px;">
										<div class="card_midium_horizontal_div_img">
											<!-- <img src="${path0 }/이미지소스주소" alt=""/> -->
											<img src="${path0}/${dto.photo}" alt="" />
										</div>
										<div class="card_midium_horizontal_div_txt" style="display:flex; align-items:center; justify-content:center; margin-top:40px; ">
											
											<h3>${dto.title}</h3>
											
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 추천여행 -->
    <div id="index_3" style="width: 100vw; height: 100vh; min-width:1400px; background-image:url('./img/main/bg_image1.jpg'); background-size:cover; position:relative;">
	   	<div style="width:100%; height:100%; display:flex; align-items:center; justify-content:end;">
	   		<div style="width:80%; height:100%; display:flex; align-items:center; justify-content:start;">
				<div style="background-color:rgba(255,255,255,0.7); width:650px; height:600px; margin-left:350px; ">
					<div id="tocurator" style="width:100%; height:50%; float:left; background-color:#CCC; cursor:pointer;"> 
						<div class="txtContainer">
							<div style="padding:30px 0 0 20px;">
								<div class="spanwrap">
									<span style="color:#AAA">Place</span>
								</div>
								<h1>문화관광</h1>
								<br>
								<span>다양한 볼거리와<br>문화를 만나보세요</span>
							</div>
						</div>
						<div class="imgContainer">
							<img src="https://www.visitbusan.net/uploadImgs/files/ctcommentator/20240220175222430_thumbL" alt="" style="width:100%; height:100%; object-fit:cover;"></img>
						</div>
					</div>
					<div id="toready" style="width:100%; height:50%; float:left; background-color:#CCC; cursor:pointer;">
						<div class="txtContainer">
							<div style="padding:30px 0 0 20px;">
								<div class="spanwrap">
									<span style="color:#AAA">Ready</span>
								</div>
								<h1>여행준비정보</h1>
								<br>
								<span>도와드리려고<br>준비했어요.</span>
							</div>
						</div>
						<div class="imgContainer">
							<img src="https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/1jPF/image/zxtPfO-cmpvhf9sptrRMDSriqxI.jpg" alt="" style="width:100%; height:100%; object-fit:cover;"></img>
						</div>
					</div>
				</div>
				<div id="totourinfo" style="">
					<div class="imgwrap1" style=""></div>
					<div class="imgwrap2" style=""></div>
					<div class="totourback">
						<div>관광안내소</div>
					</div>
					<div class="txtwrap" style="width:100%; height:25%; background-color:#FFF; float:left; text-align:right; ">
						<h3>관광안내소</h3>
						<span>환전/로밍/짐캐리</span>
					</div>
				</div>
			</div>
		</div>	
    </div>
	
	<div id="footer">
	<%@ include file="/footer.jsp" %>
	</div>
	
	<script>
		document.getElementById("tocurator").addEventListener("click", function() {
            location.href='${hpath}/Curator.do';
        });
		document.getElementById("toready").addEventListener("click", function() {
            location.href='${hpath}/readytour/readyinfo.jsp';
        });
		document.getElementById("totourinfo").addEventListener("click", function() {
            location.href='${hpath}/Tourinfo.do';
        });
	</script>

</body>
</html>