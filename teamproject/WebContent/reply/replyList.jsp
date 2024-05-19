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

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation-prototype.min.css">
<link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>
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
<!-- reply 임시 style -->
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
</style>
<script>
	function editTrans(replyNo) { 	//여기서 설정까지 =${reply.no}
		// replyNo를 포함하는 댓글 항목을 찾습니다.
		var replyItem = $('.reply-no').filter(function() {
			return $(this).text() == replyNo;
		}).closest('.reply-item');
		
		// 해당 댓글 항목의 editbox를 보이고 reply-content를 숨깁니다.
		replyItem.find('.editbox').show();
		replyItem.find('.reply-content').hide();
	};
</script>
</head>
<body>

<div class="reply">
    <!-- 댓글 입력 폼 -->
    <form action="ReplyIns.do" method="post">
        <input type="hidden" name="boardNo" value="1">
        <textarea id="content" name="content" rows="4" cols="50"></textarea><br>
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
					
					<!-- reply(no) 불러오기? 누르면 reply-content:hide -->
					<c:if test="${sid == reply.id}">
						<button class="reply-editbtn" onclick="javascript:editTrans('${reply.no}')">수정</button>
						<!-- <a href="${path0 }/EditProReply.do?no=${reply.no }" class="btn btn-secondary">수정</a> -->
					</c:if>
					
					<span class="reply-delbtn">
						<c:if test="${sid == reply.id || sid == 'admin'}">
							<a href="${path0 }/DelReply.do?no=${reply.no }" class="btn btn-secondary">삭제</a>
						</c:if>
					</span>
					
					<!-- 수정 박스 -->
					<c:if test="${sid == reply.id}">
						<div class="editbox" style="display:none"> <!-- reply(no) 불러오기? 누르면 editbox:show -->
							<form action="EditProReply.do" method="post">
								<input type="hidden" name="no" value="${reply.no}">
								<textarea id="content" name="content" rows="4" cols="50" value="${reply.content}"></textarea><br>
								<button type="submit">등록</button>
							</form>
						</div>
					</c:if>
                </div>
            </li>
        </c:forEach>
    </ul>
</div>

    
</body>
</html>
	
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>