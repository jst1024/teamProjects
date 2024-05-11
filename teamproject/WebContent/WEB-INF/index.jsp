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
	.grid1 {clear:both; width:100%; margin:0 auto;}
	[*^=col] {margin:2% 2%;}
	.col1 {width:6.5%;}
	.col2 {width:15%;}
	.col3 {width:23.5%;}
	.col4 {width:32%;}
	.col5 {width:40.5%;}
	.col6 {width:49%;}
	.col7 {width:57.5%;}
	.col8 {width:66%;}
	.col9 {width:74.5%;}
	.col10 {width:83%;}
	.col11 {width:91.5%;}
	.col12 {width:100%;}
</style>
</head>
<body>

	<div id="header">
		<%@ include file="/header.jsp" %>
	</div>
	<div id="snb">
		<%@ include file="/sidebar.jsp" %>
	</div>
	
	
		<!-- 테마여행페이지  -->
	<div>
	
	</div>
	
	
    <div style="width: 100vw; height: 100vh; background-image:url('./img/main/bg_image1.jpg'); background-size:cover;">
		<div style="width:100%; height:100%; background-color:rgba(0,0,0,0.3); display:flex; align-items:center; justify-content:center; color:#FFF;">
			<span style="text-align:center; line-height:1.1">
				<span style="font-size:40px; font-weight:100;">부산의여행어쩌고저쩌고</span><br>
				<span style="font-size:105px; font-weight:900;">부산관광부산관광</span><br>
				<span style="font-size:64px; font-weight:400;">32123132321</span>
			</span>
		</div>		
    </div>
        <div style="width: 100vw; height: 100vh; background-image:url('./img/main/bg_image1.jpg'); background-size:cover;">
		<div style="width:100%; height:100%; background-color:rgba(0,0,0,0.3); display:flex; align-items:center; justify-content:center; color:#FFF;">
			<span style="text-align:center; line-height:1.1">
				<span style="font-size:40px; font-weight:100;">부산의여행어쩌고저쩌고</span><br>
				<span style="font-size:105px; font-weight:900;">부산관광부산관광</span><br>
				<span style="font-size:64px; font-weight:400;">21321312</span>
			</span>
		</div>		

    
    <!-- 게시판 -->
    <!-- 화면분할 -->
    <div style="width:100vw; height:100vh; background-color:#FFF;display:flex; justify-content:center; align-items:center;">
    	<!-- 틀 -->
		<div style="width: 1600px; height: 800px; border: 1px solid #333; position:relative; display:flex; justify-content:center;">
			<table class="table table-hover" style="width:100%">
				<thead class="container"  style="width:100%">
					<tr class="row"  style="width:100%">
						<th scope="col" class="col-1">글번호</th>
						<th scope="col" class="col-6">제목</th>
						<th scope="col" class="col-3">작성자</th>
						<th scope="col" class="col-2">작성일</th>
					</tr>
				</thead>
				<tbody class="container">
					<!-- 반복실행문 c:foreach -->
					<tr class="row">
						<th scope="row" class="col-1">1</th>
						<td class="col-6">[CSS] justify-content 속성</td>
						<td class="col-3">김모도의 개발일지</td>
						<td class="col-2">2024. 05. 07</td>
					</tr>
				</tbody>
			</table>
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
	
	
	<div id="footer">
	<%@ include file="/footer.jsp" %>
	</div>
</body>
</html>