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
        background-color: #f9f9f9;
    }
    .reply form {
        display: flex;
        flex-direction: column;
    }
    .reply textarea {
        resize: none;
        margin-bottom: 10px;
    }
    .reply button {
        align-self: flex-end;
        padding: 5px 10px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .reply button:hover {
        background-color: #0056b3;
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
		display:hidden;
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
</style>
<!-- 사진 css -->
<style>
.wholeBox {
	border-radius:30px;
	box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.5);
	margin: 50px auto 150px;
	width:1500px; min-width:1200px;
	height:750px; min-height:750px;
	display:flex;
	overflow: hidden; }
.leftPanel { width: 65%; }
.rightPanel { width: 35%; padding-left: 20px; }

.card_midium_horizontal_div_img {
	border: 2px solid #000; background-color: aliceblue;		/* 사진 위치 찾기용 임시 css */
	display: block;
	width: 100%; max-width: 100%;
	height: 600px; margin: 0 auto;
	overflow: hidden; text-align: center; }
.card_midium_horizontal_div_img img {
    height: 100%; /* 이미지가 부모 요소의 높이를 채우도록 함 */
    width: auto; /* 이미지의 비율을 유지하면서 너비를 조정 */
    display: block; /* 이미지를 블록 요소로 만듦 */
    vertical-align:middle;
}
</style>
<script>
function editTrans(replyNo) { 	//여기서 설정까지 =${reply.no}
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
   <div class="bread_crumb">
       <div class="bread_crumb_icon"><i class="fas fa-home"></i></div>
       <span>유용한 정보 > 여행공유</span>
   </div>
    
<div class="wholeBox">
	<!-- 사진,제목,등록일,좋아요수 -->
	<div class="photoBox leftPanel">
		<div class="card_midium_horizontal_div_img">
			<!-- <img src="${path0 }/이미지소스주소" alt=""/> -->
			<img src="${path0}/stUpload/${st.photo}" alt="사진여기있잖아왜안뜨는데" />
		</div>
		<div class="card_midium_horizontal_div_txt">
			<!-- <h3>${st.title}</h3> -->
			<h3 style="">${st.title}</h3>
			<p>번호 : ${st.no}&nbsp;&nbsp;&nbsp;등록일 : ${st.regdate}&nbsp;&nbsp;&nbsp;작성자 : ${st.id}&nbsp;&nbsp;&nbsp;좋아요 : ${st.liked}&nbsp;&nbsp;&nbsp;</p>
			<hr>
		</div>
		<div class="btn-group">
		  <c:if test="${!empty sid && sid == st.id}">
			  <a href="${path0 }/sharetrip/st_ins.jsp" class="btn btn-secondary">자료 등록</a>
			  <a href="${path0 }/EditSt.do?no=${st.no }" class="btn btn-secondary">자료 수정</a>
		  </c:if>
		  <c:if test="${sid == st.id || sid == 'admin'}">
		  		<a href="${path0 }/DelSt.do?no=${st.no }" class="btn btn-secondary">자료 삭제</a>
		  </c:if>
		  <a href="${path0 }/StList.do" class="btn btn-secondary">자료 목록</a>
		</div>
	</div>
	
	
	<div class="reply rightPanel">
    <!-- 댓글 입력 폼 -->
    <form action="ReplyIns.do" method="post">
        <input type="hidden" name="boardNo" value="${st.no}">
        <textarea class= "inputtext" id="content" name="content" rows="1" cols="50" placeholder="댓글 달기..."></textarea><br>
        <button type="button" onclick="cancelReply()">취소</button>
        <button type="submit">등록</button>
    </form>
    <hr>
    <!-- 댓글 리스트 -->
    <ul>
        <c:forEach items="${replyList}" var="reply">
            <li class="reply-item">
                <div class="reply-info">
                    <span>${reply.id}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${reply.regdate}</span><br><br>
                    
                    <!-- 텍스트 -->
					<div class="reply-no" style="display:none">${reply.no}</div>
					<div class="reply-content">${reply.content}</div> <!-- 1:hide -->
					
					<!-- 댓글 수정&삭제 버튼 -->
					<c:if test="${sid == reply.id}">
						<button class="reply-editbtn" onclick="javascript:editTrans('${reply.no}')">수정</button>
					</c:if>
					<span class="reply-delbtn">
						<c:if test="${sid == reply.id || sid == 'admin'}">
							<a href="${path0 }/DelReply.do?no=${reply.no }&boardNo=${reply.boardNo}" class="btn btn-secondary">삭제</a>
						</c:if>
					</span>
					
					<!-- 수정 박스 -->
					<c:if test="${sid == reply.id}">
						<div class="editbox" style="display:none"> <!-- reply(no) 불러오기. 누르면 editbox:show -->
							<form action="EditProReply.do" method="post">
								<input type="hidden" name="no" value="${reply.no}">
								<input type="hidden" name="boardNo" value="${reply.boardNo}">
								<textarea class= "inputtext" id="content" name="content" rows="1" cols="50">${reply.content}</textarea><br>
								<button type="submit">저장</button>
							</form>
						</div>
					</c:if>
                </div>
            <div class="replyList">
        
	        </div>
            </li>
        </c:forEach>
        
    </ul>
	</div>
	<script>
	function cancelReply() {
	    document.getElementById('content').value = '';
	}
	</script>
</div>

<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>
