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
                            <li><a href="${hpath }/AttrList.do" class="dp2">명소</a></li>
                            <li><a href="${hpath }/FoodList.do" class="dp2">음식</a></li>
                            <li><a href="${hpath }/AccomList.do" class="dp2">숙박</a></li>
                            <li><a href="${hpath }/" class="dp2">쇼핑</a></li>
                            <li><a href="${hpath }/" class="dp2">축제</a></li>
                        </ul>
                    </li>
                    <li class="category clr-fix col-2">
                        <a href="" class="dp1">추천여행</a>
                        <ul class="sub">
                            <li><a href="${hpath }/ThemeList.do" class="dp2">테마여행</a></li>
                        </ul>
                    </li>
                    <li class="category clr-fix col-2">
                        <a href="" class="dp1">여행준비</a>
                        <ul class="sub">
                            <li><a href="${hpath }/Curator.do" class="dp2">문화관광</a></li>
                            <li><a href="${hpath }/readytour/readyinfo.jsp" class="dp2">여행준비정보</a></li>
                            <li><a href="${hpath }/Tourinfo.do" class="dp2">관광안내소</a></li>
                        </ul>
                    </li>
                    <li class="category clr-fix col-2">
                        <a href="" class="dp1">유용한정보</a>
                        <ul class="sub">
                            <li><a href="${hpath }/NotiList.do" class="dp2">공지사항</a></li>
                            <li><a href="${hpath }/EventList.do" class="dp2">축제/행사</a></li>
                            <li><a href="${hpath }/StList.do" class="dp2">여행공유</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="login">
                <ul>
                   <c:choose>
		               <c:when test="${sid.equals('admin') }">
			               <li><a href="${hpath }/LogOut.do">로그아웃</a></li>
			               <li><a href="${hpath }/AdminMain.do">관리자게시판</a></li>
		               </c:when>
	                   <c:when test="${empty sid }">
		                   <li><a href="${hpath }/member/login.jsp">로그인</a></li>
		                   <li><a href="${hpath }/Join.do">회원가입</a></li>
		               </c:when>
		               <c:when test="${not empty sid }">
			               <li><a href="${hpath }/LogOut.do">로그아웃</a></li>
		    	           <li><a href="${hpath }/EditMember.do?id=${sid }">회원정보</a></li>
		               </c:when>
                	</c:choose>
                </ul>
            </div>
        </div>
</header> 
