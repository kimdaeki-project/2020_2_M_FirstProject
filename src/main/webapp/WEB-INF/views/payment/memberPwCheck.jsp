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
	.check-input{
		text-align: center;
		display: block;
		margin: 20px auto;
	}
	#pwCheck-btn{
		display: block;
		margin: 10px auto;
	}
</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>
	<h3 class="cancel-h3">예약 취소를 위해 비밀번호를 다시 입력해주세요.</h3>
	<form action="./memberPwCheck" method="post" id=pwCheck-frm>
		<input type="text" value="ID : ${member.id}" name="id" id="idCheck" class="check-input" readonly="readonly">
		<input type="password" name="pw" id="pwCheck" class="check-input" placeholder="Enter PW...">
		<!-- <button type="submit">삭제하기</button>  -->
	</form>
	<input type="button" id="pwCheck-btn" title="${member.id}" value="삭제하기" class="btn btn-danger">
	
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