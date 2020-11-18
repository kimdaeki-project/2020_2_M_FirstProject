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
	#cash-h1{
		text-align: center;
		margin-top: 50px;
	}
	#cashing_btn{
		display: block;
		margin: 50px auto;
	}
</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>
	<h1 id="cash-h1">PayMentIng Page</h1>
	
	<a href = "./payment/pay"><input type="button" value="결제하기" id="cashing_btn"></a>
	
	<input type="button" value="UPADTE" id="update_btn">
<c:import url="../template/footer.jsp"></c:import>	
</body>
<script type="text/javascript">
	$("#cashing_btn").click(function() {
		alert("결제완료");
	});
	
	$("#update_btn").click(function() {
		location.href="./paymentUpdate";
	});
	
</script>
</html>