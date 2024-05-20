<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<%@ include file="/head.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${title }</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
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
                <span>총 ${fn:length(tmp)}</span>
                <hr>
                <div class="card_small_board" >
                    <div>
                    	
                    	<c:forEach var="dto" items="${accomList }">
                    	
                        <!-- 복붙할영역 -->
                        <div class="card_small_board_div" onclick="location.href='${path0}/GetAccom.do?no=${dto.no}'"> 
                            <div style="height:360px;">
                            
                                <div class="card_small_board_div_img">
                                    <img src="${path0 }/accomUpload/${dto.photo}" alt="" />
                                </div>
                                <div class="card_small_board_div_txt">
                                    <h3>${dto.title}</h3>
                                    <p>${dto.visited }</p>&nbsp;<p>${dto.liked }</p>
                                    
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
        <div class="ins_btn">
	 	<c:if test="${sid.equals('admin') }">
		<a href="${path0 }/accom/accom_ins.jsp" >글 등록</a>
		</c:if>
	</div>
      <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
                <c:choose>
                    <c:when test="${currentPage > 1}">
                        <li class="page-item">
                            <a class="page-link" href="${path0}/AccomList.do?page=${currentPage - 1}" aria-label="Previous">
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
                        <a class="page-link" href="${path0}/AccomList.do?page=${i}">${i}</a>
                    </li>
                </c:forEach>

                <c:choose>
                    <c:when test="${currentPage < totalPages}">
                        <li class="page-item">
                            <a class="page-link" href="${path0}/AccomList.do?page=${currentPage + 1}" aria-label="Next">
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
    <br>
    <div id="footer">
        <%@ include file="/footer.jsp" %>
    </div>
</body>
</html>