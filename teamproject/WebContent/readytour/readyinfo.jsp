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
        h2 {font-weight:500;}
        ul li {padding:5px; font-weight:100;}
        li > div {margin:10px;}
        li > div > div {height:240px; background-size:cover;}
        .board_tab > a {width:33%; display:inline-block; text-align:center; padding:10px; cursor:pointer; background-color:#f1f1f1;}
        .board_tab > a.active {background-color:#ddd;}
        .tab-content {display:none;}
        .tab-content.active {display:block;}
    </style>
</head>
<body>
    <div id="header">
        <%@ include file="/header.jsp" %>
    </div>

    <article>
        <div style="width: 100vw; height: 100px; background-color:#333;"></div>
        <div class="bread_crumb">
            <div class="bread_crumb_icon"><i class="fas fa-home"></i></div>
            <span>여행준비 > 여행준비정보</span>
        </div>
        <div class="board_gallary_list">
            <h1>여행준비정보</h1>
        </div>

        <div style="width: 100vw; display: flex; justify-content: center; align-items: flex-start;">
            <div style="min-width: 1200px; max-width: 1400px;">
                <!-- 탭 영역 -->
                <div class="board_tab">
                    <a class="tablink active" data-tab="tab1">환전/로밍/짐캐리</a>
                    <a class="tablink" data-tab="tab2">교통정보</a>
                    <a class="tablink" data-tab="tab3">응급의료서비스</a>
                </div>

                <!-- 탭 콘텐츠 -->
                <div id="tab1" class="tab-content active">
                    <h1>환전/로밍/짐캐리</h1>
                    <h2>부산항 국제여객터미널 환전 영업소</h2>
                    <ul>
                        <li>&nbsp; - 부산광역시 동구 중창대로 206 2층</li>
                        <li>&nbsp; - 051-462-7706</li>
                        <li>&nbsp; - 매일 07:40~19:40 (배 편에 따라 변경 가능)</li>
                        <li style="width:100%; display:flex; justify-content:center; align-items:center;">
                            <div style="width:320px; height:400px;">
                                <div style="background-image:url('https://www.visitbusan.net/upload_data/board_data/BBS_0000014/170200889347274.jpg');"></div>
                                <p style="font-weight:500; font-size:1.4rem;">환전</p>
                                <p>이용 시 신분증(주민등록증 또는 운전면허증)과 현금을 지참해 주시기 바랍니다.</p>
                            </div>
                            <div style="width:320px; height:400px;">
                                <div style="background-image:url('https://www.visitbusan.net/upload_data/board_data/BBS_0000014/170200889352886.jpg');"></div>
                                <p style="font-weight:500; font-size:1.4rem;">로밍</p>
                                <p>2층 KT(02-2190-0901) SKT(02-6343-9000) LGU+(02-3416-7010)</p>
                            </div>
                            <div style="width:320px; height:400px;">
                                <div style="background-image:url('https://www.visitbusan.net/upload_data/board_data/BBS_0000014/170200889353218.jpg');"></div>
                                <p style="font-weight:500; font-size:1.4rem;">짐캐리</p>
                                <p>2층 게이트 4번 출구 인근(010-5647-8217)</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div id="tab2" class="tab-content" >
                    <h1>교통정보</h1>
                    <!-- 교통정보 콘텐츠 -->
                    <div id="map" style="width:500px; height:400px;"></div>
                </div>
                <div id="tab3" class="tab-content">
                    <h1>응급의료서비스</h1>
                    <!-- 응급의료서비스 콘텐츠 -->
                </div>
            </div>
        </div>
    </article>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5873434db82731615cf5ce9e55cc6a1a"></script>
    <script>
        const container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
        let options = { //지도를 생성할 때 필요한 기본 옵션
            center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
            level: 3 //지도의 레벨(확대, 축소 정도)
        };

        let map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

        document.querySelectorAll('.tablink').forEach(function(tablink) {
            tablink.addEventListener('click', function() {
                // 모든 탭 버튼에서 active 클래스 제거
                document.querySelectorAll('.tablink').forEach(function(tab) {
                    tab.classList.remove('active');
                });
                // 클릭된 탭 버튼에 active 클래스 추가
                this.classList.add('active');

                // 모든 탭 콘텐츠 숨기기
                document.querySelectorAll('.tab-content').forEach(function(tabContent) {
                    tabContent.classList.remove('active');
                });
                // 클릭된 탭 버튼과 연결된 탭 콘텐츠 표시
                document.getElementById(this.getAttribute('data-tab')).classList.add('active');

                // map.relayout() 호출
                if (this.getAttribute('data-tab') === 'tab2') {
                    map.relayout();
                    map.setCenter(new kakao.maps.LatLng(33.450701, 126.570667)); // 지도의 중심을 재설정합니다.
                }
            });
        });
    </script>
</body>
</html>
