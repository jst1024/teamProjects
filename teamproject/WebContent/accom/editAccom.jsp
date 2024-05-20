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
#page1 { background-color:#FFF; margin-bottom:200px; }
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
		    <li class="breadcrumb-item"><a href="${path0 }/AccomList.do">숙박</a></li>
		    <li class="breadcrumb-item active" aria-current="page">${accom.title }</li>
		  </ol>
		</nav>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">글 수정</h3>
			<form method="post" encType = "multipart/form-data" action="${path0 }/EditAccom.do">
				<table class="table">
					<tbody>
						<tr>
							<th><label for="no">번호</label></th>
							<td>
								<input type="text" name="no" id="no" class="form-control"  value="${accom.no }" readonly>
							</td>
						</tr>
						<tr>
							<th><label for="title">제목</label></th>
							<td><input type="text" name="title" id="title" class="form-control" maxlength="100" value="${accom.title }" required></td>
						</tr>
						<tr>
							<th><label for="subtitle">부제목</label></th>
							<td><input type="text" name="subtitle" id="subtitle" class="form-control" maxlength="100" value="${accom.subtitle }"></td>
						</tr>
						<tr>
							<th><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control" ><c:out value="${accom.content }" /></textarea>
							</td>
						</tr>
						<tr>
							<th><label for="addr">주소</label></th>
							<td><input type="text" name="addr" id="addr" class="form-control" maxlength="100" value="${accom.addr }" required></td>
						</tr>
						<tr>
							<th><label for="tel">전화번호</label></th>
							<td><input type="text" name="tel" id="tel" class="form-control" maxlength="30" value="${accom.tel }"></td>
						</tr>
						<tr>
							<th><label for="reltag">태그</label></th>
							<td><input type="text" name="reltag" id="reltag" class="form-control" maxlength="25" value="${accom.reltag }"></td>
						</tr>
						<tr>
							<th><label for="busitype">업종</label></th>
							<td><input type="text" name="busitype" id="busitype" class="form-control" maxlength="25" value="${accom.busitype }" required></td>
						</tr>
						<tr>
							<th><label for="homepage">홈페이지</label></th>
							<td><input type="text" name="homepage" id="homepage" class="form-control" maxlength="1000" value="${accom.homepage }"></td>
						</tr>
						<tr>
							<th><label for="photo">첨부파일</label></th>
							<td>
								<input type="file" class="form-control" name="photo" id="photo" accept=".gif, .jpg, .png" value="${path0}/accomUpload/${accom.photo }"/>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  <button type="submit" class="btn btn-secondary">자료 수정</button>
				  <a href="${path0 }/AccomList.do" class="btn btn-secondary">목록</a>
				  <a href="${path0 }/GetAccom.do?no=${accom.no} " class="btn btn-secondary">상세보기</a>
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