
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
<style type="text/css">
	.box{
		width:700px;
	}

</style>
</head>
<body>
<div class="container box">
        <div class="col-sm-12 pt-3">
            <div class="card">
                <div class="card-header card-header-primary">
                    <h4 class="card-title"><i class="fas fa-square"></i>내 정보 확인</h4>
                    <p class="card-catagory"></p>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table">
                            <tbody>
                            <tr style="line-height:32px;">
                                <td>ID</td>
                                <td>
                                  ${member.id }
                         
                                </td>
                                <td>이름</td>
                                <td>
                                    ${member.name }
                                </td>                        
                            </tr>
                            <tr>
                                <td>이메일</td>
                                <td>
                                  ${member.email }                                    
                                </td>
                                <td>전화번호</td>
                                <td>
                                   ${member.phone }          
                                </td>
                            </tr>  
                            <tr>
                                <td>성별</td>
                                <td>
                                    ${member.gender}
                                </td>
                                <td>나이</td>
                                <td>
                                    ${member.age }
                                </td>
                            </tr>
                            <tr>
                                <td>회원구분</td>
                                <td>
                                    ${member.trainer}
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
 
            <div class="pt-3"></div>
        </div>
        

 
    <div class="text-center mt-3">
       <a href ="${pageContext.request.contextPath}/member/memberUpdate"><button type="button"class="btn btn-primary">변경하기</button></a> 
        <a href ="./memberDelete"><button type="button" class="btn btn-danger">회원탈퇴</button></a>
    </div>
</div>
</body>
</html>
