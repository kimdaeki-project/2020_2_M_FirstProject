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
	.trainer_info img{
		width:500px;
		height:500px;
		display:block;
		margin: 30px auto;
	}	
</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>
	<h1 id="h1">Trainer Page</h1>
	<form id="frm_reserve" action="./trainerReserve">
	<div id="pageSize_div">
		<div id="tip_div">↓ 버튼 클릭</div>
		<table class="table table-condensed" style="width: 70%; margin: 0 auto;">
			<tr style="font-size: 17px;">
				<th></th><th>이름 </th><th>성별 </th><th>종류 </th><th>지역 </th><th>장소 </th>
			</tr>
	
			<tr class="t_tr">
				<td> <input type="radio" name="reserve"> </td>
				<td>${page.name}</td>
				<td>${page.gender}</td>
				<td>${page.kind}</td>
				<td>${page.address}</td>
				<td>${page.business}</td>
			</tr>
		</table>
		<div class="trainer_info">
			<h3>트레이너</h3>
			<img alt="" src="../resources/img/trainer/trainer.jpg">
		</div>
		<div class="container" id="reserveDiv">
			<input id="reserveBtn" type="button" value="예약하기" class="btn btn-info">
		</div>

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