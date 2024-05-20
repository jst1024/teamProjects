<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${path0}/css/joinform.css" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="resources/css/normalize.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation-prototype.min.css">
<link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>

<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
.joinform_label {font-size:24pt; font-weight:700; text-align:left; padding-left: 5px;}
.inp {border-radius:5px;
  	background-image:linear-gradient(rgba(0,0,0,0), rgba(0,0,0,0)), linear-gradient(to  bottom right ,rgba(0,0,0,0) ,rgba(0,0,0,0));
	background-origin:border-box; 
 	background-clip:padding-box, border-box;
 	transition:0.2s;}
.inp:focus {border-radius:5px; 
	border:2px solid transparent ;
 		background-image:linear-gradient(#fff, #fff), linear-gradient(to  bottom right ,#3EE67D ,#3EDDE6);
	background-origin:border-box; 
 	background-clip:padding-box, border-box;
 	transition:0.2s;}
table li {margin:10px;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div style="width: 100vw; height: 100px; background-color:#333;"></div>
<div class="content" id="con">
    <div class="row column text-center" style="width:100%">
    	<div style="width:100vw; padding:150px;">
        	<h2 class="h1" style="font-size:48pt; font-weight:900;">회원가입</h2>
        </div>
        <hr>
        <div class="container_default" style="display:flex; justify-content:center; width:100%;">
            <form name="frm1" id="frm1" action="${path0 }/joinPro.do" method="post" onsubmit="return joinCheck(this)">
                <table id="table1" class="joinform">
                    <ul>
                        <li class="joinform_label">아이디</li>
                        <li>
                            <input class="inp" type="text" name="id" id="id" placeholder="아이디 입력" pattern="^[a-z0-9]{5,12}" maxlength="12" required style="max-width:800px; min-width:800px; width:100vw;">
                            <button type="button" onclick="id_check()" class="btn btn-primary">아이디 중복검사</button>
                            <input type="hidden" id="idCheck" name="idCheck" value="false">
                            <div id="msg1"></div>
                        </li>
                        <li><br></li>
                        <li class="joinform_label">비밀번호</li>
                        <li>
                            <input class="inp" type="password" name="pw" id="pw" placeholder="비밀번호 입력" maxlength="16" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" required>
                        </li>
                        <li>
                            <input class="inp" type="password" name="pw2" id="pw2" placeholder="비밀번호 확인 입력" maxlength="16" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16ㅉ}$" required>
                        </li>
                        <li class="joinform_label">이름</li>
                        <li>
                            <input class="inp" type="text" name="name" id="name" placeholder="이름 입력" maxlength="40" required>
                        </li>
                        <li class="joinform_label">회원정보</li>
                        <li>
                            <input class="inp" type="email" name="email" id="email" placeholder="이메일 입력" pattern="^\w+((\.\w+)?)+@\w+.?\w+\.\w+$" maxlength="80" required>
                        </li>
                        <li>
                            <input class="inp" type="tel" name="tel" id="tel" placeholder="전화번호 입력" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" maxlength="19" required>
                        </li>
                        <li class="joinform_label" style="font-weight:400; font-size:20pt;">주소</li>
                        <li>
                            <input class="inp" type="text" name="addr1" id="addr1" placeholder="기본주소 입력" maxlength="150" required readonly>
                            <input class="inp" type="text" name="addr2" id="addr2" placeholder="상세주소 입력" maxlength="90">
                            <input class="inp" type="text" name="postcode" id="postcode" placeholder="우편번호 입력" maxlength="9" required readonly>
                            <input type="button" id="isAddrBtn" class="btn btn-primary" value="주소 검색" onclick="findAddr()">
                            <input class="inp" type="hidden" name="addrck" id="addrck" value="no"/>
                        </li>
                        <li><br></li>
                        <li>
                            <input type="submit" class="btn btn-primary" value="회원 가입" >
                            <input type="reset" class="btn btn-secondary" value="취소" >
                        </li>
                    </ul>
                </table>
            </form>
            <br>
            <script>
                $(document).ready(function(){
                    $("#id").keyup(function(){
                        $("#idck").val("no");
                        if($(this).val()!=""){
                            $("#msg").html("<strong>아이디 입력중입니다.</strong>");
                        } else {
                            $("#msg").html("아직 아이디 중복 체크를 하지 않으셨습니다.");
                        }
                    });
                });
            </script>
            <script>
            function id_check() {
                if($("#id").val()==""){
                   alert("아이디를 입력하지 않으셨습니다.");
                   $("#id").focus();
                   return false;
                }
                var params = { id:$("#id").val() };
                         
                $.ajax({
                   url:"${path0 }/IdCheck.do",
                   type:"post",
                   dataType:"json",
                   data:params,
                   success:function (data){
                      var idCk = data.result;
                      if(idCk==false){
                         $("#idCheck").val("true");
                         $("#msg1").html("<strong>사용 가능한 아이디입니다.</strong>");
                      } else {
                         $("#idCheck").val("false");
                         $("#msg1").html("<strong style='color:red'>사용 불가능한 아이디입니다.</strong>");
                      }
                   }
                });
             }
                function joinCheck(f){
                    if(f.pw.value!=f.pw2.value){
                        alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
                        f.pw.focus();
                        return false;
                    }
                    if(f.idck.value!="yes"){
                        alert("아이디 중복 체크를 하지 않으셨습니다.");
                        return false;
                    }
                    if(f.addrck.value != "yes"){
                        alert("주소 입력을 하지 않으셨습니다.");
                        f.addr1.focus();
                        return false;
                    }
                    return true;
                }
            </script>
            <script>
                function findAddr() {
                    new daum.Postcode({
                        oncomplete: function(data) {
                            console.log(data);
                            var roadAddr = data.roadAddress;
                            var jibunAddr = data.jibunAddress;
                            document.querySelector("#postcode").value = data.zonecode;
                            if(roadAddr !== '') {
                                document.querySelector("#addr1").value = roadAddr;
                            } else if(jibunAddr !== ''){
                                document.querySelector("#addr1").value = jibunAddr;
                            }
                            document.querySelector("#addr2").focus();
                        }
                    }).open();
                }
            </script>

            <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        </div>
    </div>
    
    <div>
    </div>
</div>
<br>
<hr>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>