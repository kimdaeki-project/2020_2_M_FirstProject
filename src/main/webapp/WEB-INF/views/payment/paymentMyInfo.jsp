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
	.info-h3{
		text-align: center;
		margin-top: 25px;
	}
	.info-btn{
		position: relative;
		top: 50%;
		left: 40%;
		color : white;
	}
	#info-table{
		width: 60%;
		margin: 30px auto;
		
	}
</style>
</head>
<body>
	<h3 class="info-h3">My Reserve Info</h3>
	<c:if test="${not empty pay.regDate}">
	<table class="table table-condensed" id="info-table">
		<tr class="th-tr">
			<th>아이디</th><th>날짜</th><th>시간</th>
		</tr>
		<tr>
			<td>${member.id}</td>
			<td>${pay.regDate}</td>
			<td>${pay.time}</td>
		</tr>
	</table>	
		<input type="button" value="예약 변경하기" class="btn btn-primary info-btn" id="info-update" title="${member.id}">
		<input type="button" value="예약 취소하기" class="btn btn-danger info-btn" id="info-delete" title="${member.id}">
		<input type="button" value="결제하기" class="btn btn-warning info-btn"  id= "pay" title="${member.id}">
	</c:if>
	
	<c:if test="${empty pay.regDate}">
		<h3 class="info-h3">예약현황이 없습니다.</h3>	
	</c:if>

	
<c:import url="../template/footer.jsp"></c:import>	
</body>
<script type="text/javascript">
	$("#info-delete").click(function() {
		var id = $(this).attr("title");
		var re = confirm("정말 예약을 취소하시겠습니까?");
		if(re){
			window.location.href="./paymentDelete?id="+id;
		}
	});

	
	$("#info-update").click(function () {
		var id = $(this).attr("title");
		location.href="./paymentUpdate?id="+id;
	});

	$("#pay").click(function() {
		var id = $(this).attr("title");
		var str = confirm("결제하시겠습니까?");
		if(str){
			location.href="./pay?id="+id;
		}
	})

</script>
</html>