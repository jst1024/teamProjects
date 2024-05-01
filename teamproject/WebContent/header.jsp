<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="hpath" value="<%=request.getContextPath() %>" />
<header>
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
	<nav id="gnb">
		<ul>
			<div class="gnb_item">
			<li class="item">
				<a href="" class="dp1">지역소개</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/intro/origin.jsp">지명유래</a></li>
					<li><a href="${hpath }/intro/facility.jsp">연혁 및 상징물</a></li>
					<li><a href="${hpath }/intro/history.jsp">행정시설 안내</a></li>
					<li><a href="${hpath }/intro/map.jsp">오시는 길</a></li>
				</ul>
			</li>
			<li class="item">
				<a href="" class="dp1">인프라</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/tour/association.jsp">문화시설 및 상권</a></li>
					<li><a href="${hpath }/GetTrafficList.do">교통편</a></li>
					<li><a href="${hpath }/tour/building.jsp">생활지도 서비스</a></li>
					<li><a href="${hpath }/tour/rest.jsp">맛집 안내</a></li>
					<li><a href="${hpath }/tour/lodg.jsp">숙박 시설 안내</a></li>
				</ul>
			</li>
			<li class="item">
				<a href="" class="dp1">커뮤니티</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/NotiList.do">공지사항</a></li>
					<li><a href="${hpath }/GetQnaList.do">묻고답하기</a></li>
					<li><a href="">자료실</a></li>
				</ul>
			</li>
			<li class="item">
				<a href="" class="dp1">마이페이지</a>
				<ul class="sub_menu">
					<c:if test="${empty sid }">
					<li><a href="${hpath }/member/login.jsp">로그인</a></li>
					<li><a href="${hpath }/member/term.jsp">회원가입</a></li>
					</c:if>
					<c:if test="${not empty sid }">
					<li><a href="${hpath }/LogOut.do">로그아웃</a></li>
					<li><a href="${hpath }/EditMember.do?id=${sid }">회원정보</a></li>
					</c:if>
					<c:if test="${sid.equals('admin') }">
					<li><a href="${hpath }/AdminMain.do">관리자로</a></li>
					</c:if>
					<li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
					<li><a href="${hpath }/member/policy.jsp">개인정보처리방침</a></li>
					<li><a href="${hpath }/member/myList.jsp">내가 쓴 글</a></li>
				</ul>
			</li>
			</div>
		</ul>
	</nav>
</header> 
