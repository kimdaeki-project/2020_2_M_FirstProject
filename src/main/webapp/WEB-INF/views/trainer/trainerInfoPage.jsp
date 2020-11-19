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
	}	 
	.info{
		display: inline-block;
		float: right;
		text-align: left;
		margin-right: 230px;
		font-size: 15px;
		margin-left: 30px;
		padding-left: 20px;
	}

</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>

	<form id="frm_reserve" action="./trainerReserve">
	<div id="pageSize_div">
		<div id="tip_div">↓ 버튼 클릭</div>
		<table class="table table-condensed" style="width: 70%; margin: 0 auto;">
			<tr style="font-size: 17px;">
				<th></th><th>이름 </th><th>성별 </th><th>종류 </th><th>장소 </th>
			</tr>
	
			<tr class="t_tr">
				<td> <input type="radio" name="reserve"> </td>
				<td>${page.name}</td>
				<td>${page.gender}</td>
				<td>${page.healthKind}</td>
				<td>${page.business}</td>
				
			</tr>
		</table>
		</div>
		<div class="trainer_info">
			<h3>트레이너 정보</h3>
		<div>	
		<p class = "info">
		<img alt="" src="../resources/img/trainer/trainer.jpg"> 
				
					이름<br>
					${page.name}<br>
					주소<br>
					${page.address}<br>
					<br>
					
					학력<br>
					군산대학교 체육학과 졸업 학사<br>
					<br>	
					자격<br>
					MES(Medical Exercise Specialist) 운동처방사<br>
					생활스포츠지도사 2급 (보디빌딩)<br>
					육상경기심판자격 2급<br>
					FISAF 국제메디컬트레이너 자격<br>
					태권도 2단, 유도 2단<br>
					스포츠마사지사 2급<br>
					대한적십사 CPR, 응급처지 교육 수료<br>
					Stretchbang Semivar 수료(MBT ACADEMY)<br>
					<br>
					경력<br>
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

	
	</form>
	
<c:import url="../template/footer.jsp"></c:import>
<script type="text/javascript">
	
	$("#reserveBtn").click(function() {
		var re = ($('input:radio[name=reserve]').is(':checked'));

		if(re==true){
			$("#frm_reserve").submit();
		}else{
			alert("트레이너를 선택해주세요.");
		}
	});
	
</script>	
</body>
</html>