<%@page import="com.hclass.project1.member.MemberDTO"%>
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
		width: 1100px;
		margin: 30px auto 100px auto;
		
	}
	#pay{
		position: relative;
		left: 56.7%;
	}

</style>
</head>
<body>

	<!-- 개인의 예약 현황 확인 -->

	<h3 class="info-h3">My Reserve Info</h3>
	
	<!-- 예약날짜가 있는 회원한테만 보이는 info -->
	<c:if test="${not empty pay.regDate}">
	<h3 class="info-h3" style="color:#bf4080;" >나의 예약정보</h3>
	
	<table class="table table-condensed" id="info-table">
		<tr>
			<th>아이디</th><th>예약날짜</th><th>시간</th><th>l</th><th>트레이너</th><th>운동</th><th>출장여부</th>
		</tr>
		<tr>
			<td>${member.id}</td>
			<td>${pay.regDate}</td>
			<td>${pay.time}</td>
			<td>l</td>
			<td>${pay.name}</td>
			<td>${pay.kind}</td>
			<td>${pay.business}</td>
		</tr>
	</table>	
		<input type="button" value="날짜 변경하기" class="btn btn-primary info-btn" id="info-update" title="${member.id}">
		<input type="button" value="예약 취소하기" class="btn btn-danger info-btn" id="info-delete" title="${member.id}">
		<input type="button" value="결제하기" class="btn btn-warning info-btn"  id= "pay" title="${member.id}">

	</c:if>
	<!--  -->
	
	<!-- 예약 정보가 없는 회원들 정보 -->
	<c:if test="${empty pay.regDate}">
		<h3 class="info-h3">예약현황이 없습니다.</h3>	
	</c:if>
	<!--  -->
	
<c:import url="../template/footer.jsp"></c:import>	
</body>
<script type="text/javascript">

	// ******************* 예약취소를 위한 ID에 맞는 비밀번호 체크

	$("#info-delete").click(function() {
		var id = $(this).attr("title");
		var re = confirm("정말 예약을 취소하시겠습니까?");
		if(re){
			location.href="./memberPwCheck";
		}
	});
	//************************************************
	
	// ***************** 예약 날짜 변경 ******************
	
	$("#info-update").click(function () {
		var id = $(this).attr("title");
		location.href="./paymentUpdate?id="+id;
	});
	//**********************************************
	
	// **********아임포트 결제진행 ************************
	$("#pay").click(function() {
		var id = $(this).attr("title");
		var str = confirm("결제하시겠습니까?");
		if(str){
			location.href="./pay?id="+id;
		}
	})
	//**********************************************

</script>
</html>