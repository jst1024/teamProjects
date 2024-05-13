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
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">글 수정</h3>
			<form action="${path0 }/EditProst.do" method="post">
				<table class="table">
					<tbody>
						<tr>
							<th><label for="no">글 번호</label></th>
							<td>
								<input type="text" name="no" id="no" class="form-control" maxlength="100" value="${st.no }" readonly>
							</td>
						</tr>
						<tr>
							<th><label for="title">제목</label></th>
							<td>
								<input type="text" name="title" id="title" class="form-control" maxlength="100" value="${st.title }" required>
							</td>
						</tr>
						<tr>
							<th><label for="regdate">작성일시</label></th>
							<td>
								<input type="text" name="regdate" id="regdate" class="form-control" value="${st.regdate }" disabled>
							</td>
						</tr>
						<tr>
							<th><label for="author">작성자</label></th>
							<td>
								<input type="text" name="author" id="author" class="form-control" value="${st.author }" disabled>
							</td>
						</tr>
						<tr>
							<th><label for="stfile">첨부파일</label></th>
							<td>
								<input type="text" class="form-control" name="stfile" id="stfile" value="${path0}/upload/${st.stfile }" readonly />
							</td>
						</tr>
						<tr>
							<th><label for="liked">좋아요수</label></th>
							<td>
								<input type="text" name="liked" id="liked" class="form-control" value="${st.liked }" disabled>
							</td>
						</tr>
						<tr>
							<th><label for="replycount">댓글수</label></th>
							<td>
								<input type="text" name="replycount" id="replycount" class="form-control" value="${st.replycount }" disabled>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  <button type="submit" class="btn btn-secondary">자료 수정</button>
				  <a href="${path0 }/StList.do" class="btn btn-secondary">목록</a>
				  <a href="${path0 }/GetSt.do?no=${st.no} " class="btn btn-secondary">상세보기</a>
				</div>
			</form>
		</div>
	</section>	
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>