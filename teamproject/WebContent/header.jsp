<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="hpath" value="<%=request.getContextPath() %>" />
<header id="hd" class="clr-fix">
	<!-- 
	<div id="tnb" style="height:2rem; padding-top:1rem">
		<c:if test="${not empty sid }">
		<p style="text-align:right;">${sname } 님 환영합니다.</p>
		</c:if>
		<c:if test="${empty sid }">
		<p style="text-align:right; margin-right:60px; margin-bottom:0px"><a href="${hpath }/member/login.jsp" style="text-decoration:none; color:#000;">로그인</a></p>
		</c:if>
	</div>
	 -->
	 <div class="hd_wrap">
            <a href=""><img src="./images/logow2.png" alt="로고" id="logo"></a>
            <nav id="gnb" class="container">
                <ul class="menu row justify-content-center">
                    <li class="category clr-fix col-2">
                        <a href="" class="dp1">부산에가면</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">명소</a></li>
                            <li><a href="" class="dp2">음식</a></li>
                            <li><a href="" class="dp2">숙박</a></li>
                            <li><a href="" class="dp2">쇼핑</a></li>
                            <li><a href="" class="dp2">축제</a></li>
                        </ul>
                    </li>
                    <li class="category clr-fix col-2">
                        <a href="" class="dp1">추천여행</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">테마여행</a></li>
                        </ul>
                    </li>
                    <li class="category clr-fix col-2">
                        <a href="" class="dp1">여행준비</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">가이드북&지도</a></li>
                            <li><a href="" class="dp2">문화관광해설사</a></li>
                            <li><a href="" class="dp2">여행준비정보</a></li>
                            <li><a href="" class="dp2">관광안내소</a></li>
                        </ul>
                    </li>
                    <li class="category clr-fix col-2">
                        <a href="" class="dp1">유용한정보</a>
                        <ul class="sub">
                            <li><a href="" class="dp2">공지사항</a></li>
                            <li><a href="" class="dp2">축제/행사</a></li>
                            <li><a href="" class="dp2">여행공유</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="login">
                <ul>
                    <li><a href="login.html">로그인</a></li>
                    <li><a href="signup.html">회원가입</a></li>
                </ul>
            </div>
        </div>
</header> 
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