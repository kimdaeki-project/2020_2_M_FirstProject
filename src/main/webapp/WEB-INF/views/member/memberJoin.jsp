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
<c:import url="../template/bootStrap.jsp"></c:import>
        <meta charset="UTF-8">
        
  <style type="text/css">
  #title{
  	width : 350px;
  	height : 30px;
  	margin: 0px auto;
  	margin-bottom: 30px;
  }
  #main{
	width :600px;
	height: 90%;
  	
  }
  #footer{
  	height: 70px;
  }
	.idCheck0 {
		color: blue;
	}
	
	.idCheck1 {
		color: red;
		}
	.form-control{
			width:460px;
		
	}

	.emailbox{
		display:inline-block;
		width : 220px;
	}
	.slide{
	height: 450px;
	width: 100%;
}
.symbol{
	height: 40px;
	width: 50px;
}
.img-circle{
	width: 160px;
	height: 160px;
	
}
.best{
	list-style: none;
	float: left;
}
.trainer{
	float: left;
	margin-left: 10px;
}
.gym{
	float: left;
	margin-left: 10px;
}

.food{
	float: left;
	margin-left: 10px;
}
	
	body {
		font-size: small; 
		font-family: Arial, '맑은 고딕';
		background-color: rgb(245,246,247);
		height: 100%;
	}
</style>
    </head>
    <body>
    <!-- 좌우측의 공간 확보 -->
            <!-- 헤더 들어가는 부분 -->
            
  <!-- Navigation -->
 		
 
            <!--// 헤더 들어가는 부분 -->
            <!-- 모달창 -->

            <!-- 본문 들어가는 부분 -->
            
            
            <div class="container center" id="joinbody">
            <div id="title">
               <h1 >${classification} 회원가입</h1>
              </div>
               <input type="text" hidden="" value="${classification}" id="title">
 		<div class="container" id = "main">
            <form class="form-horizontal" id="frm" method="post" action="./memberJoin"  enctype="multipart/form-data">
                <div class="form-group" id="divId">
                    <label for="id" class="col-lg-2  control-label">아이디</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control  onlyAlphabetAndNumber" id="id"  data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30" name="id">
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
                        <input type="text" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="이름을 입력하세요." maxlength="15" name ="name">
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
                        <input type="text" class="form-control emailbox" id="emailid" data-rule-required="true" placeholder="이메일" maxlength="40" name ="emailid" style="ime-mode:disabled">@	
                        <input type="text" class="form-control emailbox" id="domain" data-rule-required="true" placeholder="이메일" maxlength="40" name ="domain" readonly="readonly">
                      <span>
                        <select name="emailbox" id="domainbox">
    							<option value="notSelected" selected="selected">이메일선택</option>
   								<option value="gmail.com">gmail.com</option>
   								<option value="naver.com">naver.com</option>
   								<option value="hanmail.com">hanmail.com</option>
   								<option value="direct">직접입력</option>
						</select>
						</span>
						<div hidden="">
						<input type="email" class="form-control" id="email" data-rule-required="true" placeholder="이메일" maxlength="40" name ="email">
						</div>
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
                 
                 <div id = "divKind" class="form-group">
                    <label for="inputKind" class="col-lg-2 control-label">주종목</label>
                    <div class="col-lg-10">
                	<select name="kindbox" id="kindbox">
    							<option value="health" selected="selected">헬스</option>
   								<option value="yoga">요가</option>
   								<option value="pilates">필라테스</option>
   								<option value="spinning">스피닝</option>
   								<option value="crossfit">크로스핏</option>
						</select>
						</div>
				<div hidden="">
                	<input type="text" class="form-control" id="kind"name="kind" value="health" >
                </div>
                </div>
                
                <div class="form-group">
                    <label for="inputEmailReceiveYn" class="col-lg-2 control-label">출장유무</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="business" name="business" value="Y"> 네
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="business" name="business" value="N" checked> 아니오
                        </label>
                    </div>
                </div>
                     <div class="form-group" id="divFile">
                	 <label for="inputPhoneNumber" class="col-lg-2 control-label">증명사진</label>
                	 <div class="col-lg-10">
                	 <input type="file" class="form-control" id="photo" data-rule-required="true" name="photo">
                	 </div>
                </div>              
                <div class="form-group" id="divEducation">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">학력</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" id="education" data-rule-required="true" placeholder="학력을 입력하세요" maxlength="11" name="education">
                    </div>
                </div>
                 <div class="form-group" id="divCertificate">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">자격증</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" id="certificate" data-rule-required="true" placeholder="자격증을 입력하세요" maxlength="11" name="certificate">
                    </div>
                </div>
                 <div class="form-group" id="divCareer">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">경력</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" id="career" data-rule-required="true" placeholder="경력을 입력하세요" maxlength="11" name="career">
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
                            <input type="radio" id="gender" name="gender" value="W"> 여
                        </label>
                    </div>
                </div>
                <div class="form-group" id="divFile" hidden="">
                	 <label for="inputPhoneNumber" class="col-lg-2 control-label">트레이너구분</label>
                	 <div class="col-lg-10">
                	 <input type="text" class="form-control" id="trainer" data-rule-required="true" value="" name="trainer" readonly="readonly">
                	 </div>
                </div>
                <div class="form-group" id="divsingIn"> 
                     <div class="col-lg-offset-2 col-lg-10">
                    	<input type ="button" value="회원가입" id="signIn" style="WIDTH: 70px; HEIGHT: 50px"> 
                    </div>
                </div>
                </form>
                </div>
            </div>
                <!--// 본문 들어가는 부분 -->
            <hr/>
            
            <!-- 스크립트 -->
       <script src="../resources/js/memberJoin.js"></script>
            <!-- 푸터 들어가는 부분 -->
            <div id ="footer">
            <c:import url="../template/footer.jsp"></c:import>
         </div>
            <!--// 푸터 들어가는 부분 -->
    </body>
</html>
 


