<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="ko">
    <head>
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <meta charset="UTF-8">
        
  <style type="text/css">
	.idCheck0 {
		color: blue;
	}
	
	.idCheck1 {
		color: red;
	}
	


</style>
    </head>
    <body>
    <!-- 좌우측의 공간 확보 -->
            <!-- 헤더 들어가는 부분 -->
   
            <!--// 헤더 들어가는 부분 -->
            <!-- 모달창 -->

            <!-- 본문 들어가는 부분 -->
            <div class="container">
               <h1 >${classification} 회원가입</h1>
               <div><a href ="../">home</a></div>
               <input type="text" hidden="" value="${classification}" id="title">
 		<div class="container">
            <form class="form-horizontal" id="frm" method="post" action="./memberJoin">
                <div class="form-group" id="divId">
                    <label for="id" class="col-lg-2 control-label">아이디</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyAlphabetAndNumber" id="id"  data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30" name="id">
                         <div id="idResult"></div>
                    </div>
                </div>
                <div class="form-group" id="divPw">
                    <label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="pw" name="pw" data-rule-required="true" placeholder="패스워드" maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divPw2">
                    <label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="pw2" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                        <div id="pwResult"></div>
                    </div>
                </div>
                <div class="form-group" id="name">
                    <label for="inputName" class="col-lg-2 control-label">이름</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15" name ="name">
                    </div>
                </div>
                <div class="form-group" id="divAge">
                    <label for="inputName" class="col-lg-2 control-label">나이</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="age" data-rule-required="true" placeholder="나이" maxlength="15" name ="age" onKeyPress="return checkNum(event)">
                    </div>
                </div> 
                <div class="form-group" id="divEmail">
                    <label for="inputEmail" class="col-lg-2 control-label">이메일</label>
                    <div class="col-lg-10">
                        <input type="email" class="form-control" id="email" data-rule-required="true" placeholder="이메일" maxlength="40" name ="email">
                        <div id="emailResult"></div>
                    </div>
                </div>
                <div class="form-group" id="divPhone">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰 번호</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" id="phone" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11" name="phone" onKeyPress="return checkNum(event)">
                         <div id="phoneResult"></div>
                    </div>
                </div>
                <c:if test="${classification eq	'trainer'}">
               <div class="form-group" id="divAddress">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">주소</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" id="address" data-rule-required="true" placeholder="주소를 입력하세요" name="address" >
                         <div id="addressResult"></div>
                    </div>
                </div>
                
                <div class="form-group" id="divGym">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">체육관</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" id="gym" data-rule-required="true" placeholder="체육관 이름을 입력하세요" maxlength="11" name="gym">
                         <div id="gymResult"></div>
                    </div>
                </div>
                <div class="form-group" id="divBusiness">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">business</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" id="business" data-rule-required="true" placeholder="business" maxlength="11" name="business">
                         <div id="businessResult"></div>
                    </div>
                </div>
                <div class="form-group" id="divFile">
                	 <label for="inputPhoneNumber" class="col-lg-2 control-label">증명사진</label>
                	 <div class="col-lg-10">
                	 <input type="file" class="form-control onlyNumber" id="business" data-rule-required="true" name="file">
                	 </div>
                </div>
         	 </c:if>
                <div class="form-group">
                    <label for="inputEmailReceiveYn" class="col-lg-2 control-label">성별</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="gender" name="gender" value="M" checked> 남
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="gender" name="gender" value="Y"> 녀
                        </label>
                    </div>
                </div>
                <div class="form-group" id="divsingIn"> 
                     <div class="col-lg-offset-2 col-lg-10">
                    	<input type ="button" class="btn btn-primary" value="회원가입" id="signIn"> 
                    	
                    </div>
                </div>
                </form>
                </div>
            </div>
        
                <!--// 본문 들어가는 부분 -->
            <hr/>
            
            <!-- 스크립트 -->
            <script type="text/javascript">
			var pwCheck =false;
			var idCheck = false;
			var emailCheck = false;
			var ageCheck = false;
			var addressCheck=false;
			var gymCheck = false;
			var businessCheck=false;
			var ch = $("#title").val();
		
			
		
			//*****************************필수 입력 체크 및 회원가입*********************************
				$("#signIn").click(function(){
					if(ch!='trainer'){
						if(pwCheck&&idCheck&&emailCheck&&ageCheck){
							$("#frm").submit();
							}
						else{
								alert("필수항목을 입력하세요!");
							}
					}
					else{
						$("#frm").attr("action", "./memberJoinTrainer");
						$("#frm").submit();
						}
					});
				//*******************************핸드폰번호 중복 체크************************************
				$("#divPhone").on("blur", "#phone", function(){
					var phone = $(this).val();
					if(phone != ''){
						$.get("./memberPhoneCheck?phone="+phone,function(data){
							data=data.trim();
							var str = "중복된 번호 입니다";
							$("#phoneResult").removeClass("idCheck0").addClass("idCheck1");
							if(data==0){
								str = "사용 가능한 번호 입니다"
								$("#phoneResult").removeClass("idCheck1").addClass("idCheck0");
								phoneCheck=true;
							}
							$("#phoneResult").html(str);
							
						});
					}else {
						$("#phoneResult").html("전화번호는 필수 항목입니다");
						$("#phoneResult").removeClass("idCheck0").addClass("idCheck1");
					}
					
					});		
			//*******************************이메일체크************************************
			$("#divEmail").on("blur", "#email", function(){
				var email = $(this).val();
				if(email != ''){
					$.get("./memberEmailCheck?email="+email,function(data){
						data=data.trim();
						var str = "중복된 email 입니다";
						$("#emailResult").removeClass("idCheck0").addClass("idCheck1");
						if(data==0){
							str = "사용 가능한 email 입니다"
							$("#emailResult").removeClass("idCheck1").addClass("idCheck0");
							emailCheck=true;
						}
						$("#emailResult").html(str);
						
					});
				}else {
					$("#emailResult").html("이메일은 필수 항목입니다");
					$("#emailResult").removeClass("idCheck0").addClass("idCheck1");
				}
				
				});	
			
			//******************************나이,핸드폰 숫자만 입력**************************
			 function checkNum(e) {
        		var keyVal = event.keyCode;				
       			if(((keyVal >= 48) && (keyVal <= 57))){
           			ageCheck = true;
            			return true;
        		}
       				 else{
          				 alert("숫자만 입력가능합니다");
           				 return false;
      			  }
  					  }
            //***************************PW*************************************
            var pw =0;
            $("#divPw").on("blur","#pw",function(){
				pw = $(this).val();
						});
            $("#divPw2").on("blur","#pw2",function(){
					var pw2=$(this).val();
					var str = "비밀번호가 일치하지 않습니다.";
					$("#pwResult").removeClass("idCheck0").addClass("idCheck1");
					if(pw==pw2){
							str ="비밀번호가 일치합니다.";
							$("#pwResult").removeClass("idCheck1").addClass("idCheck0");
							pwCheck = true;
						}
					if(pw==''||pw2==''){
							str="비밀번호는 필수입니다.";
							$("#pwResult").removeClass("idCheck0").addClass("idCheck1");
							pwCheck = false;
						}
					$("#pwResult").html(str);
                });
            //***********************idcheck**************************************
			$("#divId").on("blur", "#id", function(){
				var id = $(this).val();
				if(id != ''){
					$.get("./memberIdCheck?id="+id,function(data){
						data=data.trim();
						var str = "중복된 ID 입니다";
						$("#idResult").removeClass("idCheck0").addClass("idCheck1");
						if(data==0){
							str = "사용 가능한 ID 입니다"
							$("#idResult").removeClass("idCheck1").addClass("idCheck0");
							idCheck=true;
						}
						$("#idResult").html(str);
						
					});
				}else {
					$("#idResult").html("Id는 필수 항목입니다");
					$("#idResult").removeClass("idCheck0").addClass("idCheck1");
					
				}
				
				});
			//***********************트레이너 전용확인********************************************
			
				if(ch=='trainer'){	
					$("#divAddress").on("blur","#address",function(){
						var address = $(this).val();
						if(address==''){
							var str="주소는 필수입니다.";
							$("#addressResult").html(str);
							$("#addressResult").removeClass("idCheck0").addClass("idCheck1");
							}
						else{
							$("#addressResult").remove();
							}
					});
					$("#divGym").on("blur","#gym",function(){
						var gym = $(this).val();
						if(gym==''){
							var str2="체육관이름은 필수입니다.";
							$("#gymResult").html(str2);
							$("#gymResult").removeClass("idCheck0").addClass("idCheck1");
							}
						else{
							$("#gymResult").remove();
							}
					});
					$("#divBusiness").on("blur","#business",function(){
						var business = $(this).val();
						if(business==''){
							var str3="business는 필수입니다.";
							$("#businessResult").html(str3);
							$("#businessResult").removeClass("idCheck0").addClass("idCheck1");
							}
						else{
							$("#businessResult").remove();
							}
					});
				}	         
            </script>
            <!-- 푸터 들어가는 부분 -->
            
         
            <!--// 푸터 들어가는 부분 -->
       
    </body>
</html>
 


