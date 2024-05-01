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
	<div style="width:100vw; height:300px;"></div>
	
	<div style="width:1280px; display:inline-block;">
		<div class=".col-sm" style="background-color:#000; height:800px;"></div>
		<div class=".col-md" style="background-color:#000; height:800px;"></div>
	</div>
	
	<div style="width:100vw; height:300px;"></div>
	
	<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>