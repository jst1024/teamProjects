<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
.container { width:1400px; }
.page { clear:both; height:100vh; }
#page1 { background-color:#ececec; }
#page2 { background-color:#42bcf5; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<hr>

<div id="contents">
	<section class="page" id="page1">
		<c:if test="${not empty msg}">
		<div style="width:1400px; margin:0 auto; color:red; padding-top:32px; text-align:center">${msg }</div>
		</c:if>
		<div style="width:1400px; margin:0 auto;">
					<h3 class="page_title"><i class="fas fa-user-plus fa-fw"></i> 내 정보</h3>
			<form action="" method="post" >
				<table class="table">
					<tbody>
						<tr>
							<th><label for="id">아이디</label></th>
							<td>
								<input type="text" name="id" id="id" class="form-control" value="${mem.id }" readonly>
							</td>
						</tr>
						<tr>
							<th><label for="pw">비밀번호</label></th>
							<td>
								<input type="password" name="pw" id="pw" class="form-control" value="**********" readonly>
							</td>
						</tr>
						<tr>
							<th><label for="pw2">비밀번호 확인</label></th>
							<td>
								<input type="password" name="pw2" id="pw2" class="form-control" value="**********" readonly>
							</td>
						</tr>
						<tr>
							<th><label for="name">이름</label></th>
							<td>
								<input type="text" name="name" id="name" class="form-control" value="${mem.name }" readonly>
							</td>
						</tr>
						<tr>
							<th><label for="email">이메일 주소</label></th>
							<td>
								<input type="email" name="email" id="email" class="form-control" value="${mem.email }" readonly>
							</td>
						</tr>
						<tr>
							<th><label for="tel">전화번호</label></th>
							<td>
								<input type="tel" name="tel" id="tel" class="form-control" value="${mem.tel }" readonly>
							</td>
						</tr>
						<tr>
							<th><label for="addr">주소</label></th>
							<td>
								<c:set var="address" value="${fn:split(mem.addr, '$')}"/>
								<input type="text" name="address1" id="address1" class="form-control" value="${address[0] }" readonly><br>
								<input type="text" name="address2" id="address2" class="form-control" value="${address[1] }" readonly><br>
								<input type="text" name="postcode" id="postcode" placeholder="우편번호 입력" class="form-control" value="${mem.postcode }" style="width:160px" readonly><br>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  <a href="${path0 }/EditMember.do" class="btn btn-secondary">회원정보수정</a>
				  <a href="${path0 }/DelMember.do?id=${sid }" class="btn btn-secondary">회원탈퇴</a>
				  <button type="reset" class="btn btn-secondary">취소</button>
				</div>
			</form>
			
		</div>
	</section>	
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>