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
<div style="width: 100vw; height: 100px; background-color:#333;"></div>
	<nav aria-label="breadcrumb" style="text-align:right">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item" style="margin-left:12vw;"><a href="${path0 }"><i class="fas fa-home"></i></a></li>
	    <li class="breadcrumb-item active" aria-current="page">글 수정</li>
	  </ol>
	</nav>
	<hr>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">글 수정</h3>
			<form method="post" encType = "multipart/form-data" action="${path0 }/EditTheme.do">
				<table class="table">
					<tbody>
						<tr>
							<th><label for="no">번호</label></th>
							<td>
								<input type="text" name="no" id="no" class="form-control"  value="${theme.no }" readonly>
							</td>
						</tr>
						<tr>
							<th><label for="title">제목</label></th>
							<td><input type="text" name="title" id="title" class="form-control" maxlength="100" value="${theme.title }" required></td>
						</tr>
						<tr>
							<th><label for="title">제목</label></th>
							<td><input type="text" name="title" id="title" class="form-control" maxlength="100" value="${theme.title }" required></td>
						</tr>
						<tr>
							<th><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control" ><c:out value="${theme.content }" /></textarea>
							</td>
						</tr>
						<tr>
							<th><label for="reltag">태그</label></th>
							<td><input type="text" name="reltag" id="reltag" class="form-control" maxlength="25" value="${theme.reltag }"></td>
						</tr>
						<tr>
							<th><label for="photo">첨부파일</label></th>
							<td>
								<input type="file" class="form-control" name="photo" id="photo" accept=".gif, .jpg, .png" value="${path0}/thUpload/${theme.photo }"/>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  <button type="submit" class="btn btn-secondary">자료 수정</button>
				  <a href="${path0 }/ThemeList.do" class="btn btn-secondary">목록</a>
				  <a href="${path0 }/GetTheme.do?no=${theme.no} " class="btn btn-secondary">상세보기</a>
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