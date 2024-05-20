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
        <title>여행준비정보</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
        <style>
        	article h2 {font-weight:500;}
        	article p {text-align:left;}
        	article ul li {padding:5px; font-weight:100;}
        	article li > div {margin:10px;}
        	article li > div > div {height:240px; background-size:cover;}
        	.board_tab > a {width:33%;}
        	.headline {padding:30px 50px 30px 50px; text-shadow:0 0 8px rgba(0,0,0,0.4); background: linear-gradient(to left, #FFF 0%, #5DCEE5 65%, #2286E3 80%); color:#FFF; border-radius:10px 0 0 60px;}
        </style>
</head>
<body>
	<div id="header">
		<%@ include file="/header.jsp" %>
	</div>
    <article style="">
        <div style="width: 100vw; height: 100px; background-color:#333;"></div>
        <nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item" style="margin-left:14vw;"><a href="${path0 }"><i class="fas fa-home"></i></a></li>
		    <li class="breadcrumb-item active" aria-current="page">여행준비정보</li>
		  </ol>
		</nav>
        <div class="board_gallary_list" style="padding:100px;">
            <h1>여행준비정보</h1>
        </div>

        <div style="width: 100vw; display: flex; justify-content: center; align-items: flex-start;">
            <div style="min-width: 1200px; max-width: 1400px;">
                <!-- 탭 영역 -->
		        <div class="board_tab">
		            <a id="btn1" href="#" onclick="tab('1')">환전/로밍/짐캐리</a>
		            <a id="btn2" href="#" onclick="tab('2')">교통정보</a>
		        </div>
		        <br><br><br>
		        
		        <div id="tab1">
			        <h1>환전/로밍/짐캐리</h1>
			        <br><br>
			        <h2>부산항 국제여객터미널 환전 영업소</h2>
			        <br>
			        <ul>
			        	<li>&nbsp; - 부산광역시 동구 중창대로 206 2층</li>
			        	<li>&nbsp; - 051-462-7706</li>
			        	<li>&nbsp; - 매일 07:40~19:40 (배 편에 따라 변경 가능)</li>
			        	<li><br></li>
			        	<li style="width:100%; display:flex; justify-content:center; align-items:center;">
			        		<div style="width:320px; height:400px; ">
			        			<div style="background-image:url('https://www.visitbusan.net/upload_data/board_data/BBS_0000014/170200889347274.jpg');">
			        			</div>
			        			<br>
			        			<p style="font-weight:500; font-size:1.4rem;">환전</p>
			        			<p>이용 시 신분증(주민등록증 또는 운전면허증)과 현금을 지참해 주시기 바랍니다.</p>
			        			<br>
			        		</div>
			        		<div style="width:320px; height:400px; ">
			        			<div style="background-image:url('https://www.visitbusan.net/upload_data/board_data/BBS_0000014/170200889352886.jpg');">
			        			</div>
			        			<br>
			        			<p style="font-weight:500; font-size:1.4rem;">로밍</p>
			        			<p>2층 KT(02-2190-0901) SKT(02-6343-9000) LGU+(02-3416-7010)</p>
			        			<br>
			        		</div>
			        		<div style="width:320px; height:400px; ">
			        			<div style="background-image:url('https://www.visitbusan.net/upload_data/board_data/BBS_0000014/170200889353218.jpg');">
			        			</div>
			        			<br>
			        			<p style="font-weight:500; font-size:1.4rem;">짐캐리</p>
			        			<p>2층 게이트 4번 출구 인근(010-5647-8217)</p>
			        			<br>
			        		</div>
			        	</li>
			        </ul>
			        
			        <br><br><br>
			        <h1>김해공항 부산은행 출국장 환전소</h1>
			        <br><br>
			        <h2>부산항 국제여객터미널 환전 영업소</h2>
			        <br>
			        <ul>
			        	<li>&nbsp; - 부산광역시 강서구 공항진입로 108 2층</li>
			        	<li>&nbsp; - 051-971-2643</li>
			        	<li>&nbsp; - 매일 06:00~21:00</li>
			        	<li><br></li>
			        	<li style="width:100%; display:flex; justify-content:center; align-items:center;">
			        		<div style="width:320px; height:400px; ">
			        			<div style="background-image:url('https://www.visitbusan.net/upload_data/board_data/BBS_0000014/170200889353619.jpg');">
			        			</div>
			        			<br>
			        			<p style="font-weight:500; font-size:1.4rem;">환전</p>
			        			<p>이용 시 신분증(주민등록증 또는 운전면허증)과 현금을 지참해 주시기 바랍니다.</p>
			        			<br>
			        		</div>
			        		<div style="width:320px; height:400px; ">
			        			<div style="background-image:url('https://www.visitbusan.net/upload_data/board_data/BBS_0000014/170200889354088.jpg');">
			        			</div>
			        			<br>
			        			<p style="font-weight:500; font-size:1.4rem;">로밍</p>
			        			<p>2층(SKT, KT, LG텔레콤)</p>
			        			<br>
			        		</div>
			        		<div style="width:320px; height:400px; ">
			        			<div style="background-image:url('https://www.visitbusan.net/upload_data/board_data/BBS_0000014/170200889354450.jpg');">
			        			</div>
			        			<br>
			        			<p style="font-weight:500; font-size:1.4rem;">짐캐리</p>
			        			<p>3층 게이트 3, 4번 사이(1544-8215)</p>
			        			<br>
			        		</div>
			        	</li>
			        </ul>
		        </div>
		        <div id="tab2" class="container" style="text-align:left; display:none;">
		        	<h1 class="headline">도시철도</h1>
		        	<br>
		        	<p>부산 도시철도는 1호선부터 4호선과 부산김해경전철, 동해선 등이 시내 주요 장소 및 부산광역시와 경상남도 김해시, 양산시와 연결되어 편리하게 원하는 장소로 이동할 수 있습니다.</p>
		        	<p>오전 5시부터 23시 59분까지 운행되며, 역별로 첫차와 막차시간이 다르며, 시간대별로 배차시간이 다릅니다. 자세한 사항은 홈페이지 또는 역내에 게시된 시간표를 참고하시기 바랍니다.</p>
		        	<br>
		        	<h3>승차권</h3>
		        	<p>승차권은 교통카드, 1회용 승차권, 정기승차권을 이용하실 수 있습니다. 정기승차권은 1일 권, 7일 권, 1개월 권이 있습니다. 1회용 승차권과 교통카드는 구간에 따라 차액이 발생하며, 정기승차권은 구간에 따른 차액은 발생하지 않습니다.</p>
					<p>승차권은 역내에 위치한 승차권 판매기에서 구입할 수 있습니다.</p>
					<ul>
						<li>- 부산도시철도 <a href="https://www.humetro.busan.kr/homepage/cyberstation/map.do">이용안내 <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a></li>
						<li>- 부산김해경전철 <a href="https://www.bglrt.com/00011/00168/00012.web">이용안내 <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a></li>
					</ul>
					<br><br><br>
					<h1 class="headline">버스</h1>
					<br>
		        	<p>부산의 버스는 산이 많은 부산의 지형적 특성상 산지를 오르락내리락하는 노선이 많습니다. 오래된 마을의 좁은 길도 유유히 운전할 수 있는 베테랑 버스 기사님들이 안전하고 빠르게 목적지 까지 갈 수 있게 해줍니다. 버스는 일반버스, 좌석버스 급행일반좌석버스, 급행좌석버스, 마을버스가 있습니다. 일반버스와(1~500번대)와 좌석버스(58-1,203,221 및 300번대),급행버스(일반좌석)1000번대, 급행버스(직행좌석)2000번대로 구분할 수 있습니다. 심야버스는 따로 없고 각 노선의 버스가 밤11시40분이 지나면 할증 요금이 붙습니다.</p>
					<ul>
						<li>- 버스 <a href="https://bus.busan.go.kr/">이용안내 <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a></li>
					</ul>
					<br><br><br>
					<h1 class="headline">공항리무진</h1>
					<br>
		        	<p>김해국제공항에서 해운대 신시가지를 연결하는 노선으로 동서고가로와 황령산 터널을 거쳐, 공항과 해운대를 빠르게 잇습니다. 김해공항에서 해운대해수욕장 까지 307번 노선과 같지만 리무진버스는 남천동, 광안동, 수영교차로를 경유해서 갑니다.</p>
		        	<p>소요시간은 1시간 정도로 도시철도와 비슷하지만, 짐이 많아 환승이 번거로우면 공항리무진을 이용하는 것이 편리합니다.</p>
					<ul>
						<li>- 리무진 <a href="https://www.airport.co.kr/gimhae/cms/frBoardCon/boardView.do?MENU_ID=660&CONTENTS_NO=1&SITE_NO=8&BOARD_SEQ=152&BBS_SEQ=3538411#;">이용안내 <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a></li>
					</ul>
					<br><br><br>
		        </div>
		        
		        <br>
                <hr>
                
				<script>
					var btn1 = document.getElementById("btn1");
					var btn2 = document.getElementById("btn2");    
					var tbox1 = document.getElementById("tab1");
					var tbox2 = document.getElementById("tab2");
					var tab = (num) => {
						if (num=="1") {
							tbox2.style.display="none";
							tbox1.style.display="block";
						}
						else if (num=="2") {
							tbox1.style.display="none";
							tbox2.style.display="block";
						}
						else {
							tbox2.style.display="none";
							tbox1.style.display="block";
						}
					}
				</script>
            </div>
        </div>
        
    </article>
</body>
</html>