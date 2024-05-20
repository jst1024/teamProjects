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
body {
    background-color: #fff; /* 배경 색상 변경 */
}
.container { width:1400px; }
.page { clear:both; height:100vh; }
.page_title { font-size:36px; padding-top:2em; text-align:center; margin:30px auto; }
th.item1 { width:8%; }
th.item2 { width:60%; }
th.item3 { width:20%; }
.table th, .table td {
    padding: 20px; /* 테이블 열의 높이 늘리기 */
}
.btn-group { margin-top: 20px; } /* 버튼 그룹에 여백 추가 */
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
		    <li class="breadcrumb-item"><a href="${path0 }/NotiList.do">공지사항</a></li>
		    <li class="breadcrumb-item active" aria-current="page">${noti.title }</li>
		  </ol>
		</nav>
<div id="contents">
    <section class="page" id="page1">
        <div style="width:1400px; margin:0 auto;">
            <h3 class="page_title">공지사항 상세보기</h3>
            <div>
                <table class="table">
                    <tbody>
                        <tr>
                            <th>글 번호</th>
                            <td>${noti.no }</td>
                        </tr>
                        <tr>
                            <th>글 제목</th>
                            <td>${noti.title }</td>
                        </tr>
                        <tr>
                            <th>글 내용</th>
                            <td>${noti.content }</td>
                        </tr>
                        <tr>
                            <th>작성일시</th>        
                            <td>${noti.regdate }</td>
                        </tr>
                    </tbody>
                </table>
                <hr>
                <div class="btn-group">
                  <c:if test="${sid.equals('admin') }">
                  <a href="${path0 }/notice/noti_ins.jsp" class="btn btn-secondary">글 등록</a>
                  <a href="${path0 }/EditNotice.do?no=${noti.no }" class="btn btn-secondary">글 수정</a>
                  <a href="${path0 }/DelNotice.do?no=${noti.no }" class="btn btn-secondary">글 삭제</a>
                  </c:if>
                  <a href="${path0 }/NotiList.do" class="btn btn-secondary">글 목록</a>
                </div>
            </div>
        </div>
    </section>
    <section class="page" id="page2">
        <div style="width:1400px; margin:0 auto;">    
            <h3 class="page_title"></h3>
        </div>    
    </section>    
</div>
<div id="footer">
    <%@ include file="/footer.jsp" %>
</div>
</body>
</html>
