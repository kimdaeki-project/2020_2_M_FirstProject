<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/slide.jsp"></c:import>
<style type="text/css">
	.cancel-h3{
		text-align: center;
		margin-top: 30px;
	}

	#pwCheck-btn{
		display: block;
		margin: 50px auto;
	}
	.check-input{
		text-align: center;
	}
</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>
												<!-- 예약 취소를 위한 비밀번호 확인 jsp -->
	
	<!-- 예약 정보 있는 회원들만  -->		
<c:if test="${not empty payConfirm}">					
	<div class="container">
	  <h3 class="cancel-h3">예약 취소를 위해 비밀번호를 다시 입력해주세요.</h3>
	
		<form action="./memberPwCheck" method="post" id=pwCheck-frm>
			<div class="form-group">
				<label for="idCheck">ID:</label>
				<input type="text" value="${member.id}" name="id" id="idCheck" class="check-input form-control" readonly="readonly">
			</div>
	    
	    	<div class="form-group">
				<label for="pwCheck">PW :</label>
				<input type="password" name="pw" id="pwCheck" class="check-input form-control" placeholder="Enter PW...">
			</div>
		</form>
	</div>	
	<!-- <button type="submit">삭제하기</button>  -->
	<input type="button" id="pwCheck-btn" value="예약 취소하기" class="btn btn-danger">
</c:if>

<!-- 예약 정보가 없는 회원 처리 -->
<c:if test="${empty payConfirm }">
	<h3 class="cancel-h3">
		예약 현황이 없습니다.
	</h3>	
</c:if>

<c:import url="../template/footer.jsp"></c:import>	 
</body>
<script type="text/javascript">
	$("#pwCheck-btn").click(function() {
		var pw = $("#pwCheck").val();
		var id = $("#idCheck").val();
		$.post("./memberPwCheck?id="+id, {pw:pw}, function(result) {
			result=result.trim();

			if(result==1){
				location.href="./paymentDelete?id="+id;
			}else{
				alert("비밀번호가 맞지 않습니다.");
			}
		});
	});
</script>

</html>