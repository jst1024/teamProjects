<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<%@ include file="/head.jsp" %>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>
.btns { display:flex; justify-content:center; align-items:center;width:100%; height:100%; background-color:rgba(89,204,222,1); border:1px solid rgba(0,0,0,0.3);margin:5px;}
</style>
</head>
<body>
	<div id="header">
		<%@ include file="/header.jsp" %>
	</div>
	
	<div style="width:100vw; height:300px; background-color:#CCC;">
		<p style="font-size:100px;">헤드이미지</p>
	</div>
	
	<div style="min-width:1200px; min-height:800px; width:100vw; background-color:#FFF;">
		<div>
			<div style="font-size:64px; padding:20px;"><p>게시판관리</p></div>
		    <!-- 화면분할 -->
		    <div style="width:100vw; height:100vh; background-color:#FFF;display:flex; justify-content:center; align-items:center;">
		    	<!-- 틀 -->
				<div style="width: 1600px; height: 800px; border: 1px solid #333; position:relative; display:flex; justify-content:center;">
					<table class="table table-hover" style="width:100%">
						<thead class="container"  style="width:100%">
							<tr class="row"  style="width:100%">
								<th scope="col" class="col-1">게시판번호</th>
								<th scope="col" class="col-11">게시판이름</th>
								
							</tr>
						</thead>
						<tbody class="container">
							 <c:forEach var="dto" items="${stList }" varStatus="status">
								<tr class="row">
									<th scope="row" class="col-1"><input type="checkbox" name="board_index" value="${dto.no }">&nbsp;&nbsp;${dto.no }</th>
									<td class="col-11">${dto.title }</td>
								</tr>
							</c:forEach> 
						</tbody>
					</table>
					<div style="position:absolute; bottom:70px; width:80%; height:40px; display:flex; justify-content:center; align-items:center;">
						<div class="btns"><a href="${path0 }/sharetrip/st_ins.jsp">등록</a></div>
						<div class="btns"><a href="${path0 }/EditSt.do">수정</a></div>
						<div class="btns"><a href="${path0 }/GetSt.do">조회</a></div>
						<div class="btns"><a href="${path0 }/DelSt.do">삭제</a></div>
					</div>
					<hr>
					<nav aria-label="Page navigation example" style="position:absolute; bottom:10px;">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	
	
	<div style="min-width:1200px; min-height:800px; width:100vw; background-color:#FFF;">
		<div>
			<div style="font-size:64px; padding:20px;"><p>회원관리</p></div>
		    <!-- 화면분할 -->
		    <div style="width:100vw; height:100vh; background-color:#FFF;display:flex; justify-content:center; align-items:center;">
		    	<!-- 틀 -->
				<div style="width: 1600px; height: 800px; border: 1px solid #333; position:relative; display:flex; justify-content:center;">
					<table class="table table-hover" style="width:100%">
						<thead class="container"  style="width:100%">
							<tr class="row"  style="width:100%">
								<th scope="col" class="col-2">아이디</th>
								<th scope="col" class="col-2">이름</th>
								<th scope="col" class="col-2">이메일</th>
								<th scope="col" class="col-2">전화번호</th>
								<th scope="col" class="col-2">주소</th>
								<th scope="col" class="col-2">회원가입일</th>
							</tr>
						</thead>
						<tbody class="container">
							<c:forEach var="dto" items="${memList}" varStatus="status">
								<tr class="row">
									<td class="col-2">${dto.id}</td>
									<td class="col-2">${dto.name}</td>
									<td class="col-2">${dto.email }</td>
									<td class="col-2">${dto.tel }</td>
									<td class="col-2">${dto.addr }</td>
									<td class="col-2">${dto.regdate }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div style="position:absolute; bottom:70px; width:80%; height:40px; display:flex; justify-content:center; align-items:center;">
						<div class="btns"><a>등록</a></div>
						<div class="btns"><a>수정</a></div>
						<div class="btns"><a>조회</a></div>
						<div class="btns"><a>삭제</a></div>
					</div>
					<hr>
					<nav aria-label="Page navigation example" style="position:absolute; bottom:10px;">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	
	
	<div id="footer">
	<%@ include file="/footer.jsp" %>
	</div>
</body>
</html>