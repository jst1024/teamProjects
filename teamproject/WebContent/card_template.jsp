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

<%
//테스트용 더미 Food객체 List
List<Food> tmp = new ArrayList<>();
Food food = new Food(1, "1", "1", "1", "1", "1", "1", "1", 1, 1, "1", "1", "1");
// Food(int no, String title, String subtitle, String photo, String content, String addr, String tel, String reltag, int visited, int liked, String mainmenu, String ontime, String dayoff)
tmp.add(food);
tmp.add(food);
tmp.add(food);
tmp.add(food);
tmp.add(food);
tmp.add(food);
tmp.add(food);
tmp.add(food);

request.setAttribute("tmp",tmp);
%>

<div id="header">
	<%@ include file="/header.jsp" %>
</div>

	<div>
		<h2>카드템플릿제목</h2>
		<hr>
		<div class="card_midium_horizontal grid1">
			<div class="col1" >
				<div style="width: max-content">
					<c:forEach var="dto" items="${tmp}">
						<div class="card_midium_horizontal_div">
							<div style="">
								<div class="card_midium_horizontal_div_img">
									<!-- <img src="${path0}/${dto.photo}" style="height:100%; object-fit:cover" alt="" /> -->
									<img src="1.jpg" style="height:100%; object-fit:cover" alt="" />
								</div>
								<div class="card_midium_horizontal_div_txt">
									<!-- <h3>${dto.title}</h3> -->
									<h3 style="">제목</h3>
									<hr>
									<!-- <span>${dto.subtitle}</span> -->
									<span>부제목</span>
	
									<!-- <p>${dto.content} </p> -->
									<div>
										<p>콘텐츠(글자글자수제한)콘텐츠(글글자수제한)콘제한)콘텐츠(글자수제한)</p>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>



	<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>