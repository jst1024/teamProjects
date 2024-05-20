<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
.container { width:1400px; }
.page { clear:both; height:100vh; }
#page1 { background-color:#FFF; }
#page2 { background-color:#FFF; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div style="width: 100vw; height: 100px; background-color:#333;"></div>
        <nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item" style="margin-left:12vw;"><a href="${path0 }"><i class="fas fa-home"></i></a></li>
		    <li class="breadcrumb-item"><a href="${path0 }/EventList.do">축제/행사</a></li>
		    <li class="breadcrumb-item active" aria-current="page">${event.title }</li>
		  </ol>
		</nav>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">축제 글 등록</h3>
			<form method="post" encType = "multipart/form-data" action="${path0 }/EventIns.do">
				<table class="table">
					<tbody>
						<tr>
							<th><label for="title">제목</label></th>
							<td><input type="text" name="title" id="title" class="form-control" maxlength="100" required></td>
						</tr>
						<tr>
							<th><label for="ondate">축제기간</label></th>
							<td><input type="text" name="ondate" id="ondate" class="form-control" maxlength="30" required></td>
						</tr>
						<tr>
							<th><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control" maxlength="1000"></textarea>
							</td>
						</tr>
						<tr>
							<th><label for="tel">전화번호</label></th>
							<td><input type="text" name="tel" id="tel" class="form-control" maxlength="50" ></td>
						</tr>
						<tr>
							<th><label for="homepage">홈페이지</label></th>
							<td><input type="text" name="homepage" id="homepage" class="form-control" maxlength="500" ></td>
						</tr>
						<tr>
							<th><label for="photo">첨부파일</label></th>
							<td>
								<input type="file" class="form-control" name="photo" id="photo" accept=".gif, .jpg, .png" />
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  <button type="submit" class="btn btn-secondary">글 등록</button>
				  <a href="${path0 }/EventList.do" class="btn btn-secondary">글 목록</a>
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