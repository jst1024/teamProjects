<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="fpath" value="<%=request.getContextPath() %>" />
<hr>    
<footer>
	<div class="ft_wrap">
		<nav id="fnb">
			<ul>
				<li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
				<li><a href="${hpath }/member/policy.jsp">개인정보처리방침</a></li>
			</ul>
		</nav>
		<div id="loc">
			<select name="sel" id="sel" onchange="locate()">
				<option value="">해당 관광서</option>
				<option value="https://www.gangseo.seoul.kr/gs100901">발산1동 주민센터</option>
				<option value="https://www.koreapost.go.kr/">강서우체국</option>
			</select>
		</div>
		<script>
		function locate(){
			var sel = document.getElementById("sel");
			if(sel.value!=""){
				window.open(sel.value);
			}
		}
		</script>
		<br><br>
		<div id="copyright">
			<p class="addr">우) 07658 서울특별시 강서구 화곡로 302(화곡동) 강서구 발산동 소개,<br> TEL : 02-2600-6114(120다산콜센터로 연결) 02-2600-6330(평일 주간/야간 당직실, 공휴일)</p>
			<p class="copy">COPYRIGHT(C) SEOUL BALSAN INTRO. ALL RIGHTS RESERVED.</p>
		</div>
	</div> 
</footer>