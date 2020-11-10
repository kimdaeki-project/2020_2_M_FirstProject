<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="ko">
    <head>
    <c:import url="../template/bootStrap.jsp"></c:import>
	<style type="text/css">
	html{height: 100%;}
	body{position: relative;width: 100%;height: 100%;}
	.form-group1{position: absolute;top: 50%;left: 50%;margin:-150px 0 0 -150px}
	
	
	
	</style>

    </head>
    <body>
    <!-- 좌우측의 공간 확보 -->
            <!-- 헤더 들어가는 부분 --> 
 <div class="form-group1">
 <form action="" id="joinForm">
           <div class="form-group">
						<i class="fa fa-user"></i>
						<input type="text" class="form-control" placeholder="Username" required="required" id="id" name="id">
					</div>
					<div class="form-group">
						<i class="fa fa-lock"></i>
						<input type="password" class="form-control" placeholder="Password" required="required" id="pw" name="pw">					
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary btn-block btn-lg" value="Login">
					</div>
							
			
			<div class="modal-footer">
				<a href="#">Forgot Password?</a>
			</div>
			<div class="modal-footer">
				<a href="${pageContext.request.contextPath}/member/memberJoin">회원가입</a>
			</div>	
        </form>
    </div>
       
    </body>
</html>
 


