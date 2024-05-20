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
body {
    background-color: #fff; /* 배경 색상 변경 */
}
.table th, .table td {
    padding: 20px 30px; /* 테이블 열의 높이 및 간격 늘리기 */
}
#page1 { margin-top: 100px; }
.page_title { text-align: center; margin: 30px auto; }
/* DataTables pagination button styles */
.dataTables_wrapper .dataTables_paginate .paginate_button {
    padding: 0.5em 1em;
    margin: 0.1em;
    border: 1px solid #ddd;
    border-radius: 3px;
    background-color: #f9f9f9;
    color: #333;
    text-decoration: none;
}
.dataTables_wrapper .dataTables_paginate .paginate_button:hover {
    background-color: #e9e9e9;
    border: 1px solid #ccc;
}
.dataTables_wrapper .dataTables_paginate .paginate_button.current {
    background-color: #ddd;
    color: #333;
    border: 1px solid #ccc;
}
.dataTables_wrapper .dataTables_paginate .paginate_button.disabled {
    background-color: #f9f9f9;
    color: #999;
    cursor: not-allowed;
}
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
    <li class="breadcrumb-item active" aria-current="page">${title }</li>
  </ol>
</nav>
<div id="contents">
    <section class="page" id="page1">
        <div style="width:1400px; margin:0 auto;">
            <h1 class="page_title">공지사항 목록</h1>
            <div>
                <table class="table" id="tb1">
                    <thead>
                        <tr>
                            <th class="item1">번호</th>
                            <th class="item2">제목</th>
                            <th class="item3">작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:if test="${not empty notiList }">
                            <c:forEach var="dto" items="${notiList }">
                            <tr>
                                <td>${dto.no }</td>
                                <td>
                                    <c:if test="${empty sid }">
                                    <strong>${dto.title }</strong>
                                    </c:if>
                                    <c:if test="${not empty sid }">
                                    <a href="${path0 }/GetNotice.do?no=${dto.no }">${dto.title }</a>
                                    </c:if>
                                </td>
                                <td>${dto.regdate }</td>
                            </tr>
                            </c:forEach>
                        </c:if>
                        <c:if test="${empty notiList }">
                            <tr>
                                <td colspan="3"><strong>공지사항이 존재하지 않습니다.</strong></td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
                <c:if test="${sid.equals('admin') }">
                <div class="btn-group">
                    <a href="${path0 }/notice/noti_ins.jsp" class="btn btn-secondary">글 등록</a>
                </div>
                </c:if>
                <script>
                $(document).ready(function(){
                    $("#tb1").DataTable({
                        order:[[0,"desc"]],
                        paging: true,
                        searching: false,
                        language: {
                            paginate: {
                                previous: "Prev",
                                next: "Next"
                            }
                        }
                    });
                });
                </script>
                <hr>
                <br>
                <br>
            </div>
        </div>
    </section>
</div>
<div id="footer">
    <%@ include file="/footer.jsp" %>
</div>
</body>
</html>
