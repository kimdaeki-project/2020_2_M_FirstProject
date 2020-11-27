<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Elegant Modal Login Modal Form with Avatar Icon</title>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
</head>
<body>


<!-- Modal HTML -->
<div id="myModal">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">
				<div class="avatar">
					<img src="/resources/img/main/member.png" alt="Avatar">
				</div>				
				<h4 class="modal-title">Member Login</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<form action="./memberLogin" method="post" id="loginfrm">
					<div class="form-group" id="divId">
						<input type="text" class="form-control" id="id" name="id" value="${cookie.remember.value}" placeholder="Username" required="required"  onkeydown="JavaScript:Enter_Check();">		
					</div>
					<div class="form-group" id="divPw" >
						<input type="password" class="form-control" id="pw" name="pw" placeholder="Password" required="required">
						<div id ="loginResult"></div>
					</div>        
					<div class="form-group" id ="divLogin">
						<input type="button" id="login" class="btn btn-primary btn-lg btn-block login-btn" value="Login"  onkeydown="JavaScript:Enter_Check();">
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<a href="#">Forgot Password?</a>
			</div>
		</div>
	</div>
</div>     
<script type="text/javascript">	
var data1 = 0;
$("#divId").on("blur", "#id", function(){
	$("#loginResult").html("");
});
$("#divPW").on("blur", "#pw", function(){
	$("#loginResult").html("");
});
//**********************************로그인버튼*******************************************8
  function Enter_Check(){
        // 엔터키의 코드는 13입니다.
	    if(event.keyCode == 13){
	    	loginChk();
	    }
	}

$("#divLogin").on("click","#login",function(){
	loginChk();

	});


function loginChk(event){
	var pw = $("#pw").val();
	var id = $("#id").val();
	if(id!=''&&pw!=''){
	$.get("${pageContext.request.contextPath}/member/memberpwCheck?pw="+pw+"&"+"id="+id,function(data){
		data=data.trim();
		data1=data;
		if(data1==1){
				$("#loginfrm").submit();
			}
		else{
			$("#loginResult").html("아이디 또는 비밀번호가 틀렸습니다.");
		}
		});
	}
	else
		{$("#loginResult").html("아이디 또는 비밀번호를 입력하세요");}}
</script>
</body>
</html>


