<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/header.jsp"></c:import>
<c:import url="../template/slide.jsp"></c:import>
<style type="text/css">
	.info_table{
		width: 80%;
		margin: 0 auto;
	}
	.info_h3{
		text-align: center;
		margin: 30px 0;
	}
</style>
</head>
<body>

		<!-- 트레이너 전용인 회원 예약 확인 -->

	<h3 class="info_h3">회원 예약 현황</h3>
	<table class="table table-condensed info_table">
		<tr>
			<th>회원이름</th><th>날짜</th><th>시간</th><th>트레이너</th>
		</tr>
	<c:forEach items="${payinfo}" var="paydto">
		<tr>
			<td>${paydto.id} </td>
			<td>${paydto.regDate} </td>
			<td>${paydto.time}</td>
			<td>${paydto.name}</td>
		</tr>
	</c:forEach>
	</table>
<c:import url="../template/footer.jsp"></c:import>	
</body>

</html>