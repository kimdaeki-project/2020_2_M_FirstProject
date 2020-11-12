
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
    <form name="f" method="post">
 
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
                                    <input type="text" name="id" class="form-control" value="${member.id}" readonly>
                         
                                </td>
                                <td>관리자 이름</td>
                                <td>
                                    <input type="text" name="name" class="form-control" value="${member.name}" readonly="readonly">
                                </td>                        
                            </tr>
                            <tr>
                                <td>관리자 비밀번호</td>
                                <td>
                                    <input type="text" name="email" class="form-control" maxlength="10" value="${member.email}" readonly="readonly">                                    
                                </td>
                                <td>관리자 비밀번호 확인</td>
                                <td>
                                    <input type="text" name="phone" class="form-control" maxlength="10" value="${member.phone}" readonly="readonly">                                    
                                </td>
                            </tr>  
                            <tr>
                                <td>성별</td>
                                <td>
                                    ${member.gender}
                                </td>
                                <td>팩스</td>
                                <td>
                                    <input type="tel" name="fax" class="form-control" value="">
                                </td>
                            </tr>
                            <tr>
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
        <button type="button" class="btn btn-success">변경하기</button>
        <button type="button" class="btn btn-info">다시쓰기</button>
    </div>
</div>
</body>
</html>
