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
.container { width:1400px; }
.page { clear:both; height:100vh; }
#page1 { background-color:#ececec; }
#page2 { background-color:#42bcf5; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:8%; }
th.item2 { width:60%; }
th.item3 { width:20%; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div>
		<h2>카드템플릿제목</h2>
		<hr>
		<div class="card_midium_horizontal grid1">
		<div class="col1" >
			<div style="width: max-content">
				<c:forEach var="st" items="${tmp}">
					<div class="card_midium_horizontal_div">
						<div style="">
							<div class="card_midium_horizontal_div_img">
								<!-- <img src="${path0 }/이미지소스주소" alt=""/> -->
								<img src="1.jpg" alt="" />
							</div>
							<div class="card_midium_horizontal_div_txt">
								<!-- <h3>${st.title}</h3> -->
								<h3 style="">${st.title}</h3>
								<hr>
								<!-- <span>${st.photo}</span> 
								<span>${st.photo}</span>-->

								<!-- <p>${dto.content} </p>
								<div>
									<p>콘텐츠(글자글자수제한)콘텐츠(글글자수제한)콘제한)콘텐츠(글자수제한)</p>
								</div> -->
							</div>
						</div>
					</div>
				</c:forEach>
				<hr>
				<div class="btn-group">
				  <c:if test="${sid.equals('admin') }">
				  <a href="${path0 }/sharetrip/st_ins.jsp" class="btn btn-secondary">자료 등록</a>
				  <a href="${path0 }/EditSt.do?no=${data.no }" class="btn btn-secondary">자료 수정</a>
				  <a href="${path0 }/DelSt.do?no=${data.no }" class="btn btn-secondary">자료 삭제</a>
				  </c:if>
				  <a href="${path0 }/StList.do" class="btn btn-secondary">자료 목록</a>
				</div>
			</div>
		</div>
		</div>
	</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>