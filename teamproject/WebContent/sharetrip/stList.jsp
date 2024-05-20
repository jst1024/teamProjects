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
<script src="${path0 }/js/jquery.dataTables.js"></script>
<link rel="stylesheet" href="${path0 }/css/jquery.dataTables.css" >
<style>
	.card_midium_horizontal { width: 100%; height: auto; overflow-x: scroll; overflow-y: hidden; white-space: nowrap; }
	.card_midium_horizontal > div {width: max-content;}
	.card_midium_horizontal::-webkit-scrollbar {height:10px; width: 20%;}
	.card_midium_horizontal::-webkit-scrollbar-thumb {background: rgba(0,0,0,0.25); border-radius: 5px;}
	.card_midium_horizontal_div {display: block; float: left; }
	.card_midium_horizontal_div h3 {padding-top:1rem; font-weight:900;}
	.card_midium_horizontal_div span {font-weight:900;}
	.card_midium_horizontal_div p {width:100%; height:96px; overflow:hidden; white-space:normal; text-overflow:ellipsis; display: -webkit-box; -webkit-line-clamp: 4; -webkit-box-orient: vertical; text-align:left;}
	.card_midium_horizontal_div > div {width: 297px;  margin:10px; padding:0; border:1px solid rgba(0,0,0,0.3); border-radius:10px; overflow:hidden; box-shadow:0px 4px 4px 4px rgba(0,0,0,0.1);}
	.card_midium_horizontal_div_txt {padding: 0 15px;}
	.card_midium_horizontal_div_img {display:flex; justify-contents:center; align-items:center; width:295px; height:254px;}
	.card_midium_horizontal_div_img > img { display:block; clear:both; width:100%;}
	.ins_btn { display: flex; justify-content: center; background-color: skyblue; border-radius: 10px; margin-right: 5vw; padding: 10px; width:120px; float:right; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
	<article style="">
        <div style="width: 100vw; height: 100px; background-color:#333;"></div>
        <nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item" style="margin-left:12vw;"><a href="${path0 }"><i class="fas fa-home"></i></a></li>
		    <li class="breadcrumb-item active" aria-current="page">${title }</li>
		  </ol>
		</nav>
        <div class="board_gallary_list" style="">
            <h1>${title }</h1>
        </div>


        <div style="width: 100vw; display: flex; justify-content: center; align-items: flex-start;">
            <div style="min-width: 1200px; max-width: 1400px;">
                <span>총 ${fn:length(stList)}</span>
                <hr>
                <div class="card_small_board" >
                    <div>
                    	
                    	<c:forEach var="dto" items="${stList }">
                    	
                        <!-- 복붙할영역 -->
                        <div class="card_small_board_div" onclick="location.href='${path0}/GetSt.do?no=${dto.no}'"> 
                            <div style="height:360px;">
                            
                                <div class="card_small_board_div_img">
                                    <img src="${path0 }/stUpload/${dto.photo}" alt="" />
                                </div>
                                <div class="card_small_board_div_txt">
                                    <h3>${dto.title}</h3>
                                    
                                </div>
                            </div>
                        </div>
                        <!-- 복붙할영역 끝 -->
                        
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <br>
      <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
                <c:choose>
                    <c:when test="${currentPage > 1}">
                        <li class="page-item">
                            <a class="page-link" href="${path0}/StList.do?page=${currentPage - 1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item disabled">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:otherwise>
                </c:choose>

                <c:forEach begin="1" end="${totalPages}" var="i">
                    <li class="page-item ${i == currentPage ? 'active' : ''}">
                        <a class="page-link" href="${path0}/StList.do?page=${i}">${i}</a>
                    </li>
                </c:forEach>

                <c:choose>
                    <c:when test="${currentPage < totalPages}">
                        <li class="page-item">
                            <a class="page-link" href="${path0}/StList.do?page=${currentPage + 1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item disabled">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </nav>
    </article>
    <br>
    <c:if test="${sid.equals('admin') }">
                <div class="btn-group">
                    <a href="${path0 }/sharetrip/st_ins.jsp" class="btn btn-secondary">글 등록</a>
                </div>
                </c:if>
    <div id="footer">
        <%@ include file="/footer.jsp" %>
    </div>
</body>
</html>