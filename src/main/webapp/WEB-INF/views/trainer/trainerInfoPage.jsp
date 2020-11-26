<%@page import="com.hclass.project1.member.MemberDTO"%>
<%@page import="oracle.sql.JAVA_STRUCT"%>
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
	
	#reserveDiv{
		text-align:right;
	}
	#reserve_h1{
		text-align: center;
		margin: 50px 0;
	}
	.pc-detail-header{
		padding: 40px 80px;
		margin-left: 100px;
	}
	.detail.container-fluid{
		position: relative;
		min-height: 90vh;
	}
	.container-fluid{
		margin: 0;
		padding: 0;
	}
	.pc-detail-header .trainer-photo{
		vertical-align: middle;
		position: relative;
		display: inline-block;
		overflow: hidden;
		text-align: center;
		max-width: 500px;
	}
	.pc-detail-header .trainer-info{
		vertical-align: top;
		display: inline-block;
		max-width: 450px;
		margin-top:50px;
		padding-left: 100px;
	}
	.pc-detail-header .trainer-info .title div.ts-sxl{
		display: inline-block;
		font-size: 28px !important;
		vertical-align: top;
		max-width: 400px;
	}
	.pc-detail-header .trainer-info .title{
		height: 70px;
	}
	.pc-detail-header .trainer-info .info-text{
		font-size: 16px;
		padding: 20px 0;
		color: #330066 !important;
	}
	.pc-detail-header .trainer-info .in-detail-border{
		border-top: 2px solid #f4f5f6;
	}
	strong {
		font-weight: 700;
	}

</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>
	<!--  트레이너 상세 정보  -->
	<h1 id="reserve_h1">Trainer Info</h1>
	<div class="detail-wrap">
		<div class="detail container-fluid">
			<div class="pc-detail-header">
				<div class="trainer-photo">
					<!-- 트레이너 이미지와 트레이너 정보-->
					<img alt="" src="../resources/img/trainer/${trainers.fileName}" style="width: 500px; height: 500px;">
				</div>
				<div class="trainer-info">
					<div class="title">
						<div class="ts-sxl"><strong>트레이너 : </strong> ${trainers.name}</div>
					</div>
					<div class="info-text in-detail-border">
						<div style="margin-bottom: 10px;"><strong>주소 : </strong>${trainers.address }</div>
					</div>
					
					<!--  학력, 자격, 경력이 없을 경우 비활성화 -->
					<c:if test="${not empty trainers.education}">
						<div class="info-text in-detail-border">
							<div style="margin-bottom: 10px;"><strong>최종학력 : </strong>${trainers.education }</div>
						</div>
					</c:if>
					<c:if test="${not empty trainers.certificate}">
						<div class="info-text in-detail-border">
							<div style="margin-bottom: 10px;"><strong>자격증 : </strong>${trainers.certificate }</div>
						</div>
					</c:if>
					<c:if test="${not empty trainers.career }">
						<div class="info-text in-detail-border">
							<div style="margin-bottom: 10px;"><strong>경력 : </strong>${trainers.career }</div>
						</div>
					</c:if>
					<!--  -->
					
						<div class="info-text in-detail-border">
							<div style="margin-bottom: 10px;"><strong>출장여부 : </strong>${trainers.business }</div>
						</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container" id="reserveDiv">
	<!-- 비회원이거나, 로그인 정보가 회원인 사람들만 예약, 트레이너 정보는 비활성화 -->
		<c:if test="${member.trainer eq 'M' or empty member.trainer }">
			<input id="reserveBtn" type="button" value="예약하기" class="btn btn-info" title="${member.num}">
		</c:if>
	</div>	
	
<c:import url="../template/footer.jsp"></c:import>
<script type="text/javascript">
	
	// 예약 페이지로 이동
	$("#reserveBtn").click(function() {
		var testnum = $(this).attr("title")
		location.href="../payment/paymentPage?num="+testnum;	
	});
	
</script>	
</body>
</html>