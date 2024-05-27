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
<title>관리자페이지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script src="${path0 }/js/jquery.dataTables.js"></script>
<link rel="stylesheet" href="${path0 }/css/jquery.dataTables.css" >
<style>
    article h2 {font-weight:500;}
    article p {text-align:left;}
    article ul li {padding:5px; font-weight:100;}
    article li > div {margin:10px;}
    article li > div > div {height:240px; background-size:cover;}
    .board_tab > a {width:25%; text-align:center; display:inline-block; padding:10px; background-color:#f1f1f1; margin:5px; border-radius:5px; cursor:pointer;}
    .board_tab > a:hover, .board_tab > a.active {background-color:#ddd;}
    .headline {padding:30px 50px 30px 50px; text-shadow:0 0 8px rgba(0,0,0,0.4); background: linear-gradient(to left, #FFF 0%, #5DCEE5 65%, #2286E3 80%); color:#FFF; border-radius:10px 0 0 60px;}
    .tab-content {display:none; position:relative;}
    .tab-content.active {display:block;}
    .btns {margin: 0 10px;}
</style>
</head>
<body>
    <div id="header">
        <%@ include file="/header.jsp" %>
    </div>
    <article>
        <div style="width: 100vw; height: 100px; background-color:#333;"></div>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" style="margin-left:10vw;"><a href="${path0 }"><i class="fas fa-home"></i></a></li>
                <li class="breadcrumb-item active" aria-current="page">관리자페이지</li>
            </ol>
        </nav>
        <div class="board_gallary_list" style="padding:100px;">
            <h1>게시판관리</h1>
        </div>

        <div style="width: 100vw; display: flex; justify-content: center; align-items: flex-start;">
            <div style="min-width: 1200px; max-width: 1400px;">
                <!-- 탭 영역 -->
                <div class="board_tab">
                    <a id="btn1" href="javascript:void(0);" onclick="showTab('tab1')">공지사항</a>
                    <a id="btn2" href="javascript:void(0);" onclick="showTab('tab2')">명소</a>
                    <a id="btn3" href="javascript:void(0);" onclick="showTab('tab3')">음식</a>
                    <a id="btn4" href="javascript:void(0);" onclick="showTab('tab4')">숙박</a>
                </div>
                <br><br><br>
                
                <!-- 공지사항 -->
                <div id="tab1" class="tab-content">
                    <div style="min-width:1200px; min-height:800px; width:100vw; background-color:#FFF;">
                        <div style="font-size:32px; padding:20px;"><p>공지사항관리</p></div>
                        <div style="width:80vw; height:100vh; background-color:#FFF;display:flex; justify-content:center; align-items:center;">
                            <div style="width: 1600px; height: 800px; border: 1px solid #333; position:relative; display:flex; justify-content:center;">
                                <table class="table table-hover data-table" style="width:100%">
                                    <thead class="container" style="width:100%">
                                        <tr class="row" style="width:100%">
                                            <th scope="col" class="col-1">번호</th>
                                            <th scope="col" class="col-11">제목</th>
                                        </tr>
                                    </thead>
                                    <tbody class="container">
                                        <c:forEach var="dto" items="${notiList }" varStatus="status">
                                            <tr class="row">
                                                <th scope="row" class="col-1">${dto.no }</th>
                                                <td class="col-11"><a href="${path0 }/GetNotice.do?no=${dto.no }">${dto.title }</a></td>
                                            </tr>
                                        </c:forEach> 
                                    </tbody>
                                    
                                </table>

                            </div>
                        </div>
                    </div>
					<div style="position:absolute; bottom:0; width:100%; height:40px; display:flex; justify-content:center; align-items:center;">
                    	<div class="btns"><a href="${path0 }/notice/noti_ins.jsp">등록</a></div>
                    </div>
                </div>
                
                <!-- 명소 -->
                <div id="tab2" class="tab-content">
                    <div style="min-width:1200px; min-height:800px; width:100vw; background-color:#FFF;">
                        <div style="font-size:32px; padding:20px;"><p>명소 관리</p></div>
                        <div style="width:80vw; height:100vh; background-color:#FFF;display:flex; justify-content:center; align-items:center;">
                            <div style="width: 1600px; height: 800px; border: 1px solid #333; position:relative; display:flex; justify-content:center;">
                                <!-- 명소 관리 테이블 -->
                                <table class="table table-hover data-table" style="width:100%">
                                    <thead class="container" style="width:100%">
                                        <tr class="row" style="width:100%">
                                            <th scope="col" class="col-1">번호</th>
                                            <th scope="col" class="col-3">제목</th>
                                            <th scope="col" class="col-5">주소</th>
                                            <th scope="col" class="col-3">조회수</th>
                                        </tr>
                                    </thead>
                                    <tbody class="container">
                                        <c:forEach var="dto" items="${attrList }" varStatus="status">
                                            <tr class="row">
                                                <th scope="row" class="col-1">${dto.no }</th>
                                                <td class="col-3"><a href="${path0 }/GetAttr.do?no=${dto.no }">${dto.title }</a></td>
                                                <td class="col-5">${dto.addr }</td>
                                                <td class="col-3">${dto.visited }</td>
                                            </tr>
                                        </c:forEach> 
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                                               <div style="position:absolute; bottom:0; width:100%; height:40px; display:flex; justify-content:center; align-items:center;">
                               <div class="btns"><a href="${path0 }/attr/attr_ins.jsp">등록</a></div>
                           </div>
                </div>
                
                <!-- 음식 -->
                <div id="tab3" class="tab-content">
                    <div style="min-width:1200px; min-height:800px; width:100vw; background-color:#FFF;">
                        <div style="font-size:32px; padding:20px;"><p>음식 관리</p></div>
                        <div style="width:80vw; height:100vh; background-color:#FFF;display:flex; justify-content:center; align-items:center;">
                            <div style="width: 1600px; height: 800px; border: 1px solid #333; position:relative; display:flex; justify-content:center;">
                                <!-- 음식 관리 테이블 -->
                                <table class="table table-hover data-table" style="width:100%">
                                    <thead class="container" style="width:100%">
                                        <tr class="row" style="width:100%">
                                            <th scope="col" class="col-1">번호</th>
                                            <th scope="col" class="col-3">제목</th>
                                            <th scope="col" class="col-4">대표메뉴</th>
                                            <th scope="col" class="col-4">주소</th>
                                        </tr>
                                    </thead>
                                    <tbody class="container">
                                        <c:forEach var="dto" items="${foodList }" varStatus="status">
                                            <tr class="row">
                                                <th scope="row" class="col-1">${dto.no }</th>
                                                <td class="col-3"><a href="${path0 }/GetFood.do?no=${dto.no }">${dto.title }</a></td>
                                                <td class="col-4">${dto.mainmenu }</td>
                                                <td class="col-4">${dto.addr }</td>
                                            </tr>
                                        </c:forEach> 
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                                                    <div style="position:absolute; bottom:0; width:100%; height:40px; display:flex; justify-content:center; align-items:center;">
                                    <div class="btns"><a href="${path0 }/food/food_ins.jsp">등록</a></div>
                                </div>
                </div>
                
                <!-- 숙박 -->
                <div id="tab4" class="tab-content">
                    <div style="min-width:1200px; min-height:800px; width:100vw; background-color:#FFF;">
                        <div style="font-size:32px; padding:20px;"><p>숙박 관리</p></div>
                        <div style="width:80vw; height:100vh; background-color:#FFF;display:flex; justify-content:center; align-items:center;">
                            <div style="width: 1600px; height: 800px; border: 1px solid #333; position:relative; display:flex; justify-content:center;">
                                <!-- 숙박 관리 테이블 -->
                                <table class="table table-hover data-table" style="width:100%">
                                    <thead class="container" style="width:100%">
                                        <tr class="row" style="width:100%">
                                            <th scope="col" class="col-1">번호</th>
                                            <th scope="col" class="col-3">제목</th>
                                            <th scope="col" class="col-5">주소</th>
                                            <th scope="col" class="col-3">조회수</th>
                                        </tr>
                                    </thead>
                                    <tbody class="container">
                                        <c:forEach var="dto" items="${accomList }" varStatus="status">
                                            <tr class="row">
                                                <th scope="row" class="col-1">${dto.no }</th>
                                                <td class="col-3"><a href="${path0 }/GetAccom.do?no=${dto.no }">${dto.title }</a></td>
                                                <td class="col-5">${dto.addr }</td>
                                                <td class="col-3">${dto.visited }</td>
                                            </tr>
                                        </c:forEach> 
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                                                    <div style="position:absolute; bottom:0; width:100%; height:40px; display:flex; justify-content:center; align-items:center;">
                                    <div class="btns"><a href="${path0 }/accom/accom_ins.jsp">등록</a></div>
                                </div>
                </div>
                
            </div>
        </div>

        <div class="board_gallary_list" style="padding:100px;">
            <h1>회원관리</h1>
        </div>
        <div style="width: 100vw; display: flex; justify-content: center; align-items: flex-start;">
            <div style="min-width: 1200px; max-width: 1400px;">
                <div style="min-width:1200px; min-height:800px; width:100vw; background-color:#FFF;">
                    <div style="font-size:32px; padding:20px;"><p>회원관리</p></div>
                    <!-- 화면분할 -->
                    <div style="width:80vw; height:100vh; background-color:#FFF;display:flex; justify-content:center; align-items:center;">
                        <!-- 틀 -->
                        <div style="width: 1600px; height: 800px; border: 1px solid #333; position:relative; display:flex; justify-content:center;">
                            <table class="table table-hover data-table" style="width:100%">
                                <thead class="container" style="width:100%">
                                    <tr class="row" style="width:100%">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <br>
        <script>

        </script>
        <script>
            var showTab = (tabId) => {
                document.querySelectorAll('.tab-content').forEach(tab => {
                    tab.classList.remove('active');
                });
                document.getElementById(tabId).classList.add('active');
                
                document.querySelectorAll('.board_tab > a').forEach(tab => {
                    tab.classList.remove('active');
                });
                document.querySelector('#btn' + tabId.charAt(tabId.length - 1)).classList.add('active');
            };
            showTab('tab1');  // Default tab
        </script>
    </article>
</body>
</html>
