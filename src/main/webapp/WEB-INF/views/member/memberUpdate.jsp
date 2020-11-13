
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!doctype html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="utf-8">
<title>..</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
 
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 
</head>
<body>
<div class="container">
    <form name="f" method="post" action="./memberUpdate">
 
        <div class="col-sm-12 pt-3">
            <div class="card">
                <div class="card-header card-header-primary">
                    <h4 class="card-title"><i class="fas fa-square"></i>정보 수정</h4>
                    <p class="card-catagory"></p>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table">
                            <tbody>
                            <tr style="line-height:32px;">
                                <td>비밀번호</td>
                                <td>
                                    <input type="text" name="pw" class="form-control" value="${member.pw}" id="pw">
                         
                                </td>
                                <td>비밀번호 확인</td>
                                <td>
                                    <input type="text" name="pw" class="form-control" id="pw2">
                                </td>                        
                            </tr>
                            <tr>
                                <td>전화번호</td>
                                <td>
                                    <input type="text" name="phone" class="form-control" maxlength="11" value="${member.phone}" id ="phone"  onKeyPress="return checkNum(event)"> 
                                    <div id = "phoneResult"></div>                                   
                                </td>
                                <td>이름</td>
                                <td>
                                    <input type="text" name="name" class="form-control" maxlength="10" value="${member.name}" id="name">                                    
                                </td>
                            </tr>  
                            <tr hidden="">
                                <td>회원구분</td>
                                <td>
                                     <input type="text" name="trainer" class="form-control" maxlength="10" value="${member.trainer}" id="trainer">
                                </td>
                       
                            </tr>
                            <tr id="trainerinfo">
                             <td>체육관이름</td>
                                <td>
                                     <input type="text" name="trainer" class="form-control" maxlength="10" value="${member.gym}" id="gym">
                                </td>
                                <td>주소</td>
                                <td colspan="3">
                                    <input type="text" name="address1" id="address1" class="form-control mb-3" value="">
                                    <input type="text" name="address2" id="address2" class="form-control" value="">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
 
            <div class="pt-3"></div>
        </div>
        
    </form>
 
    <div class="text-center mt-3">
        <a><button type="button" class="btn btn-success">변경하기</button></a>
    </div>
</div>
<script type="text/javascript">
var trainer = $("#trainer").val();
var phoneCheck =false;

//************************트레이너회원만 보이게 하기*************************************************
	if(trainer=='M'){
			$("#trainerinfo").attr("hidden","hidden");
			}

//*************************핸드퐅 번호 중복 확인***************************************************
	$("#phone").blur(function(){
		var pn="${member.phone}";
		phoneCheck = false;
		var phone = $(this).val();
		if(phone==pn){
				phoneCheck =true;	
				$("phoneResult").remove();
			}
		else if(phone != ''){
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
			phoneCheck = false;
		}
		
		});
//***********************************핸드폰 숫자만 입력*****************************************
function checkNum(event) {
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

</script>
</body>
</html>
