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
<title>Insert title here</title>
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
							<!-- c:forEach var="dto" items="${tmp}" varStatus="status" -->
								<tr class="row">
		<!-- 						<th scope="row" class="col-1"><input type="checkbox" name="board_index" value="${dto.boardno }">&nbsp;&nbsp;${dto.boardno }</th>  -->
		<!--						<td class="col-11">${dto.title}</td>  -->
									<th scope="row" class="col-1"><input type="checkbox" name="board_index" value="1">&nbsp;&nbsp;1</th>
									<td class="col-11">공지사항게시판</td>
								</tr>
							<!-- /c:forEach -->
						</tbody>
					</table>
					<div style="position:absolute; bottom:70px; width:80%; height:40px; display:flex; justify-content:center; align-items:center;">
						<div style="display:flex; justify-content:center; align-items:center;width:100%; height:100%; background-color:rgba(89,204,222,1); border:1px solid rgba(0,0,0,0.3);margin:5px;"><a>등록</a></div>
						<div style="display:flex; justify-content:center; align-items:center;width:100%; height:100%; background-color:rgba(89,204,222,1); border:1px solid rgba(0,0,0,0.3);margin:5px;"><a>수정</a></div>
						<div style="display:flex; justify-content:center; align-items:center;width:100%; height:100%; background-color:rgba(89,204,222,1); border:1px solid rgba(0,0,0,0.3);margin:5px;"><a>조회</a></div>
						<div style="display:flex; justify-content:center; align-items:center;width:100%; height:100%; background-color:rgba(89,204,222,1); border:1px solid rgba(0,0,0,0.3);margin:5px;"><a>삭제</a></div>
					</div>
					<hr>
					<nav aria-label="Page navigation example" style="position:absolute; bottom:10px;">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#">Previous</a></li>
							<!-- c:forEach var="dto_list" items="${tmp_list}" varStatus="status" -->
					<!--    <li class="page-item"><a class="page-link" href="#">${status}</a></li>	-->
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<!-- /c:forEach -->
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
								<th scope="col" class="col-1">회원번호</th>
								<th scope="col" class="col-2">아이디</th>
								<th scope="col" class="col-2">이름</th>
								<th scope="col" class="col-2">등급</th>
								<th scope="col" class="col-3">이메일</th>
								<th scope="col" class="col-2">전화번호</th>
							</tr>
						</thead>
						<tbody class="container">
							<!-- c:forEach var="dto" items="${tmp}" varStatus="status" -->
								<tr class="row">
		<!-- 						<th scope="row" class="col-1"><input type="checkbox" name="board_index" value="${dto.no }">&nbsp;&nbsp;${dto.no }</th>  -->
		<!--						<td class="col-2">${dto.id}</td>  -->
		<!--						<td class="col-2">${dto.nickname}</td>  -->
		<!--						<td class="col-2">${dto.grade}</td>  -->
		<!--						<td class="col-3">${dto.email}</td>  -->
		<!--						<td class="col-2">${dto.tel}</td>  -->
									<th scope="row" class="col-1"><input type="checkbox" name="board_index" value="1">&nbsp;&nbsp;2103</th>
									<td class="col-2">fdskjfsdl</td>
									<td class="col-2">김수한무</td>
									<td class="col-2">일반회원</td>
									<td class="col-3">fsdkljafsdlk@gmail.com</td>
									<td class="col-2">010-0000-0000</td>
								</tr>
							<!-- /c:forEach -->
						</tbody>
					</table>
					<div style="position:absolute; bottom:70px; width:80%; height:40px; display:flex; justify-content:center; align-items:center;">
						<div style="display:flex; justify-content:center; align-items:center;width:100%; height:100%; background-color:rgba(89,204,222,1); border:1px solid rgba(0,0,0,0.3);margin:5px;"><a>등록</a></div>
						<div style="display:flex; justify-content:center; align-items:center;width:100%; height:100%; background-color:rgba(89,204,222,1); border:1px solid rgba(0,0,0,0.3);margin:5px;"><a>수정</a></div>
						<div style="display:flex; justify-content:center; align-items:center;width:100%; height:100%; background-color:rgba(89,204,222,1); border:1px solid rgba(0,0,0,0.3);margin:5px;"><a>조회</a></div>
						<div style="display:flex; justify-content:center; align-items:center;width:100%; height:100%; background-color:rgba(89,204,222,1); border:1px solid rgba(0,0,0,0.3);margin:5px;"><a>삭제</a></div>
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