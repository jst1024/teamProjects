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
<!-- 기존 css -->
<style>
.container { width:1400px; }
.page { clear:both; height:100vh; }
#page1 { background-color:#ececec; }
#page2 { background-color:#42bcf5; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:8%; }
th.item2 { width:60%; }
th.item3 { width:20%; }
</style>
<!-- reply 임시 css -->
<style>
.reply {
    width: 50%;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #ffffff; /* 흰색 배경색 */
}
.reply form {
    display: flex;
    flex-direction: column;
}
.reply textarea {
    resize: none;
}
.reply button,
.btn-group a,
.delete-btn {
    align-self: flex-end;
    padding: 5px 10px;
    background-color: #b187b2;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
}
.reply button:hover,
.btn-group a:hover,
.delete-btn:hover {
    background-color: #996699; /* 보다 진한 보라색 */
}
.btn-group a {
    margin-right: 10px; /* 여백 추가 */
}
.reply h2 {
    text-align: center;
    margin-bottom: 20px;
}
.reply ul {
    list-style-type: none;
    padding: 0;
}
.reply ul li {
    border-bottom: 1px solid #ccc;
    padding: 10px 0;
}
.reply-item {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.reply-info {
    flex-grow: 1;
}
.reply-buttons {
    margin-right: 10px;
}
.editbox {
    display: hidden;
}
.reply-main {
    position: sticky;
    top: 0;
    z-index: 999;
    background-color: #ffffff;
    padding: 20px;
    border-bottom: 1px solid #ccc;
    z-index:0;
    top:-20px;
}
.reply-main h4 {
   padding-top:20px;
}
.inputtext {
    border: none; /* 기존 경계선 제거 */
    border-bottom: 2px solid rgba(169, 169, 169, 0.5); /* 흐린 회색 2px 실선 */
    outline: none; /* 포커스 효과 제거 */
    background-color: transparent; /* 입력란 배경색 투명하게 처리 */
}
.inputtext:focus {
    outline: none; /* 기본 포커스 효과 제거 */
    border-bottom: 2px solid black;
}
/* 추가된 CSS */
.reply-texts .reply-content {
    word-wrap: break-word; /* 긴 단어가 있을 경우 줄바꿈 */
    word-break: break-all; /* 단어 중간에 줄바꿈 */
}
body::before {
    content: "";
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.8);
    z-index: -1;
}

body {
    background-image: url('${path0}/img/getStbg.jpg');
    background-size: cover;
    background-repeat: no-repeat;
}
</style>
<!-- 사진 css -->
<style>
.wholeBox {
    border-radius: 30px;
    box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.5);
    margin: 150px auto 150px;
    width: 1500px; min-width: 1200px;
    height: 750px; min-height: 750px;
    display: flex;
    overflow: hidden;
    background-color:#fff;
}
.leftPanel { width: 65%; background-color:#fff; }
.rightPanel { width: 35%; padding-left: 20px; }
.reply.rightPanel {
    max-width: 100%;
    overflow-y: auto;
}
.card_midium_horizontal_div_img {
    display: flex; /* 이미지를 수직, 수평 중앙에 정렬하기 위해 */
    justify-content: center; /* 수평 중앙 정렬 */
    align-items: center; /* 수직 중앙 정렬 */
    width: 100%; 
    max-width: 65%; /* 부모 요소의 너비의 65%를 차지하도록 수정 */
    height: 600px; 
    margin: 0 auto;
    overflow: hidden; 
    text-align: center;
    background-color:#fff;
}
.card_midium_horizontal_div_img img {
    max-height: 100%;
    max-width: 100%;
    height: auto;
    width: auto;
    vertical-align: middle;
    display: inline-block;
}
.btn-group {
    margin-left: 30px;
    display: block;
}
.flex-item {
    display: flex;
    flex-direction: column; /* 수직 정렬 */
    align-items: flex-start; /* 왼쪽 정렬 */
    margin-top: 30px;
    margin-left: 30px;
}
.flex-item h4 {
    margin-bottom: 30px; /* h4와 p 사이의 간격 조정 */
}
.flex-item p {
    margin: 0;
    display: flex; /* p 태그 내부 요소들을 가로로 정렬하기 위해 flex 속성 추가 */
    justify-content: space-between; /* 내부 요소들을 좌우로 정렬 */
    align-items: center; /* 내부 요소들을 세로 중앙 정렬 */
}
.only-image {
   height:78%;
}
</style>
<script>
function editTrans(replyNo) {    //여기서 설정까지 =${reply.no}
    //replyNo를 포함하는 댓글 항목을 찾기
    var replyItem = $('.reply-no').filter(function() {
        return $(this).text() == replyNo;
    }).closest('.reply-item');
    
    //해당 댓글 항목의 editbox를 보이고 reply-content를 숨김
    replyItem.find('.editbox').show();
    replyItem.find('.reply-content').hide();
};
</script>
</head>
<body>
<div id="header">
    <%@ include file="/header.jsp" %>
</div>

<!-- 브레드크럼 -->
<div style="width: 100vw; height: 100px; background-color:#333;"></div>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item" style="margin-left:12vw;"><a href="${path0 }"><i class="fas fa-home"></i></a></li>
            <li class="breadcrumb-item"><a href="${path0 }/StList.do">여행공유</a></li>
            <li class="breadcrumb-item active" aria-current="page">${st.title }</li>
          </ol>
        </nav>
    
<div class="wholeBox">
    <!-- 사진,제목,등록일,좋아요수 -->
    <div class="photoBox leftPanel">
    <div class="only-image">
        <div class="card_midium_horizontal_div_img">
            <!-- <img src="${path0 }/이미지소스주소" alt=""/> -->
            <img src="${path0}/stUpload/${st.photo}" alt="사진여기있잖아왜안뜨는데" />
        </div>
    </div>
         <hr>
        <div class="card_midium_horizontal_div_txt">
            <div class="flex-item">
                <h3>${st.title}</h3>
            </div>
            <div class="flex-item">
                <p>작성자 : ${st.id}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;등록일 : ${st.regdate}</p>
            </div>
        </div>
        <div class="btn-group" style="float: right;">
          <c:if test="${!empty sid && sid == st.id}">
              <a href="${path0 }/sharetrip/st_ins.jsp" class="btn btn-secondary">여행 등록</a>
              <a href="${path0 }/EditSt.do?no=${st.no }" class="btn btn-secondary">글 수정</a>
          </c:if>
          <c:if test="${sid == st.id || sid == 'admin'}">
                <a href="${path0 }/DelSt.do?no=${st.no }" class="btn btn-secondary">글 삭제</a>
          </c:if>
          <a href="${path0 }/StList.do" class="btn btn-secondary">여행공유 목록</a>
        </div>
    </div>
    
    
    <div class="reply rightPanel">
    <!-- 댓글 입력 폼 -->
    <c:if test="${empty sid }">
    <div class="reply-main">
        <h4>댓글&nbsp;<c:set var="replyCount" value="${st.replycount}" />개</h4>
        <span style="padding-top:30px;">로그인 후에 댓글을 남길 수 있습니다.</span>
        <hr>
    </div>
    </c:if>
    <c:if test="${!empty sid }">
    <div class="reply-main">
        <h4>댓글&nbsp;${st.replycount }개</h4><br>
        <form action="ReplyIns.do" method="post">
            <input type="hidden" name="boardNo" value="${st.no}">
            <textarea class="inputtext textarea-auto-resize" id="content" name="content" rows="1" cols="50" placeholder="댓글 달기..." required></textarea><br>
            <button type="submit">등록</button>
        </form>
    </div>
    <hr>
    </c:if>
    <!-- 댓글 리스트 -->
    <ul>
        <c:forEach items="${replyList}" var="reply">
            <li class="reply-item">
                <div class="reply-info">
                    <div class="user-info">
                        <span>${reply.id}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${reply.regdate}</span>
                    </div>
                    <!-- 댓글 수정&삭제 버튼 -->
                    <div class="reply-buttons">
                        <c:if test="${sid == reply.id}">
                            <button class="reply-editbtn" onclick="javascript:editTrans('${reply.no}')">수정</button>
                        </c:if>
                        <c:if test="${sid == reply.id || sid == 'admin'}">
                            <a href="${path0 }/DelReply.do?no=${reply.no }&boardNo=${reply.boardNo}" class="btn btn-secondary delete-btn">삭제</a>
                        </c:if>
                    </div>
                    <!-- 텍스트 -->
                    <div class="reply-texts">
                        <div class="reply-no" style="display:none">${reply.no}</div>
                        <div class="reply-content">${reply.content}</div> <!-- 1:hide -->
                    </div>
                    <!-- 수정 박스 -->
                    <c:if test="${sid == reply.id}">
                        <div class="editbox" style="display:none; margin-top:10px;"> <!-- reply(no) 불러오기. 누르면 editbox:show -->
                            <form action="EditProReply.do" method="post">
                                <input type="hidden" name="no" value="${reply.no}">
                                <input type="hidden" name="boardNo" value="${reply.boardNo}">
                                <textarea class="inputtext textarea-auto-resize" id="content" name="content" rows="1" cols="35" required>${reply.content}</textarea><br>
                                <button type="submit">저장</button>
                            </form>
                        </div>
                        <script>
                  $(document).ready(function() {
                      $('.textarea-auto-resize').on('input', function () {
                          this.style.height = 'auto';
                          this.style.height = (this.scrollHeight) + 'px';
                      });
                  });
                  </script>
                    </c:if>
                </div>
            </li>
        </c:forEach>
    </ul>
</div>
</div>

<div id="footer">
    <%@ include file="/footer.jsp" %>
</div>
</body>
</html>