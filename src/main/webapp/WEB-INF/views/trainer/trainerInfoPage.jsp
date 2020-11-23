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
	#h1{
		margin-top: 50px;
		margin-bottom: 50px;
		text-align: center;
		}
	.t_tr{
		font-size: 15px;
		}
	#reserveDiv{
		text-align:right;
		margin-top: 80px;
	}	
	#pageSize_div{
		height: auto;
	}
	
	#tip_div{
		margin-left:15.4%;
		font-size: 15px;
		margin-bottom: 20px;
	}
	.trainer_info h3{
		text-align: center;
		margin-top: 50px;
	}
	.info img{
		width:500px;
		height:500px;
		vertical-align: middle;
		display: inline;
		clear: both;
		float: left;
		margin-right: 30px;
	}	 
	.info{
		display: inline-block;
		float: right;
		text-align: left;
		margin-right: 230px;
		font-size: 15px;
		margin-left: 30px;
		padding-left: 20px;
		color:#58595b;
	}

</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>

		
		<div class="trainer_info">
			<h3>트레이너 정보</h3>
		<div>	
		<p class = "info">
		<img alt="" src="../resources/img/trainer/${member.MemberFileDTO.fileName}"> 
				
					<strong>이름</strong><br>
					${page.name}<br>
					<br>
					<strong>주소</strong><br>
					${page.address}<br>
					<br>
					<strong>학력</strong><br>
					군산대학교 체육학과 졸업 학사<br>
					<br>	
					<strong>자격</strong><br>
					MES(Medical Exercise Specialist) 운동처방사<br>
					생활스포츠지도사 2급 (보디빌딩)<br>
					육상경기심판자격 2급<br>
					FISAF 국제메디컬트레이너 자격<br>
					태권도 2단, 유도 2단<br>
					스포츠마사지사 2급<br>
					대한적십사 CPR, 응급처지 교육 수료<br>
					Stretchbang Semivar 수료(MBT ACADEMY)<br>
					<br>
					<strong>경력</strong><br>
					前)더스토리짐 PT전문 트레이너
					前)이룸헬스짐 트레이너
					前)터닝포인트짐 퍼스널트레이너
					前)이엠파워 서교점 운동처방사
					現)이엠파워 삼성점 운동처방사
				</p>
			</div>
		</div>
		<div class="container" id="reserveDiv">
			<input id="reserveBtn" type="button" value="예약하기" class="btn btn-info">
		</div>

	
	
<c:import url="../template/footer.jsp"></c:import>
<script type="text/javascript">
	
	$("#reserveBtn").click(function() {
			location.href= "./trainerReserve";	
	
	});
	
</script>	
</body>
</html>