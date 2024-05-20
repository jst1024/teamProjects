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
            logo.src = "./images/logog.png";
        });
    } else {
        headerTexts.forEach(function(text) {
            text.style.color = '#fff';
            header.style.backgroundColor = 'rgba(255, 255, 255, 0)';
            logo.src = "./images/logow2.png";
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
            logo.src = "./images/logow2.png";
        });

    });
    </script>
    
	
	
	<!-- 메인 -->
	<div id="index_1">
	    <div style="width: 100vw; height: 100vh; background-image:url('./img/main/bg_image1.jpg'); background-size:cover;">
			<div style="width:100%; height:100%; background-color:rgba(0,0,0,0.3); display:flex; align-items:center; justify-content:center; color:#FFF;">
				<span style="text-align:center; line-height:1.1">
					<span style="font-size:40px; font-weight:100;">부산의여행어쩌고저쩌고</span><br>
					<span style="font-size:105px; font-weight:900;">부산관광부산관광</span><br>
					<span style="font-size:64px; font-weight:400;">32123132321</span>
				</span>
			</div>		
	    </div>
    </div>
    
    <!-- 카드형식 소개 - 명소, 음식, 숙박, 쇼핑, 축제 -->
	<div id="index_2" style="width:100vw; height: 100vh; background-image:url('./img/main/bg_image1.jpg'); background-size:cover;">
	   	<div style="width:100%; height:100%; display:flex; align-items:center; justify-content:end;">
	   		<div style="width:80%; background-color:#FFF; height:100%; display:flex; align-items:center; justify-content:end;">
				<div style="width:100%; float:right; padding-left:150px;">
					<h2 style="color:#333;">카드템플릿제목</h2>
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
										<div class="card_midium_horizontal_div_txt">
											<h3>${dto.title}</h3>
											<hr>
											<span>${dto.subTitle}</span>
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
					<div style="width:33.3%; height:50%; background-color:#FFF; float:left;">
						<div style="padding:30px 0 0 20px;">
							<span style="color:#AAA">Place</span>
							<h1 style="color:#333">문화관광</h1>
							<br>
							<span style="color:#888">1234</span>
						</div>
					</div>
					<div style="width:66.6%; height:50%; background-color:#CCC; float:right;">
						<img src="https://www.visitbusan.net/uploadImgs/files/ctcommentator/20240220175222430_thumbL" alt="" style="width:100%; height:100%; object-fit:cover;"></img>
					</div>
					<div style="width:33.3%; height:50%; background-color:#FFF; float:left;">
						<div style="padding:30px 0 0 20px;">
							<span style="color:#AAA">Ready</span>
							<h1 style="font-size:22pt; color:#333;">여행준비정보</h1>
							<br>
							<span style="color:#888">1234</span>
						</div>
					</div>
					<div style="width:66.6%; height:50%; background-color:#CCC; float:right;">
						<img src="https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/1jPF/image/zxtPfO-cmpvhf9sptrRMDSriqxI.jpg" alt="" style="width:100%; height:100%; object-fit:cover;"></img>
					</div>
				</div>
				<div style="background-color:rgba(255,255,255,0.7); width:300px; height:600px; margin-left:10px; position:relative;">
					<div style="width:100%; height:25%; background-color:#FFF; float:left; text-align:right; ">
						<h3 style="margin:40px 30px 0 0; font-size:28pt; font-weight:500;">관광안내소</h3>
						<span style="margin:0 30px 0 0; font-size:20pt; font-weight:100;">환전/로밍/짐캐리</span>
					</div>
					<div style="position:absolute; width:280px; height:200px; background-color:#FFF; top:180px; left:70px; background-size:150% 150%; z-index:3; background-position:center center; background-image:url('https://visitbusan.net/uploadImgs/files/infofc/20210405130245227_thumbL')"></div>
					<div style="position:absolute; width:300px; height:200px; background-color:#FFF; top:390px; left:-20px; background-size:150% 150%; z-index:2; background-position:center center; background-image:url('https://www.visitbusan.net/uploadImgs/files/infofc/20201113102621490_thumbL')"></div>
				</div>
			</div>
		</div>	
    </div>
	
	<div id="footer">
	<%@ include file="/footer.jsp" %>
	</div>
	

</body>
</html>