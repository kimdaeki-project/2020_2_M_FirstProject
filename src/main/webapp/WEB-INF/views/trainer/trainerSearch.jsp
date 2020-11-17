<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/default.css">
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/slide.jsp"></c:import>
<style type="text/css">
	#search-h2{
		text-align: center;
		margin-top: 40px;
	}
</style>		
</head>
<c:import url="../template/header.jsp"></c:import>
<body>
<div class="container" id="div2">
	<h2 id="search-h2">Trainer Search</h2>
	<form class="example" style="margin: 25px;" action="./trainerWindowSearch">
		<div class="col-xs-3">
			<select style="font-size: 15px; margin-bottom: 5px;" class="form-control" name="select">
				<option value="nm">이름</option>
				<option value="loc">지역</option>
			</select>
		</div>
		<div class="col-xs-10">
			<input type="text" placeholder="Search..." name="search" id="search-text">
			<button id="search-blank"><i class="fa fa-search"></i></button>
		</div>
	</form>
</div>

<div style="margin-top: 25px;" class="list-group" id="div1" >
	<form id="frm" action="./trainerDetailSearch">
		<hr>
		<h4> 성별 </h4>
		<label class="radio-inline">
			<input type="radio" name="gender" value="man">남
		</label>
		<label class="radio-inline">
			<input type="radio" name="gender" value="woman">여
		</label>
		<label class="radio-inline">
			<input type="radio" name="gender" value="all">모두
		</label>	
		<hr>
		<h4 style="font-size: 18px;"> ★종목★ </h4>
		<label class="radio-inline">
			<input type="radio" name="kind" value="health"> 헬스
		</label>
		<label class="radio-inline">
			<input type="radio" name="kind" value="pilates"> 필라테스
		</label>
		<label class="radio-inline">
			<input type="radio" name="kind" value="yoga"> 요가
		</label>
		<hr>
		<h4 style="font-size: 18px;"> ★장소★ </h4>
		<label class="radio-inline">
			<input type="radio" name="business" value="healthplace"> 헬스장
		</label>
		<label class="radio-inline">
			<input type="radio" name="business" value="home"> 홈트레이닝
		</label>
			
		<div class="col-xs-12" id="div3">
			<div>
				<input type="button" id="btn" value="검색하기" class="btn btn-default" style="border:2px solid #4040bf;">
				<input type="reset" class="btn btn-danger" value="초기화" id="reset">
			</div>
		</div>
	</form>

<c:import url="../template/footer.jsp"></c:import>
</div>

<script type="text/javascript">

	$("#btn").click(function() {
		
		//var ge = ($('input:radio[name=gender]').is(':checked'));
		var ki = ($('input:radio[name=kind]').is(':checked'));
		var bu = ($('input:radio[name=business]').is(':checked'));
		if(bu == false || ki == false){
			alert("종목과 장소를 선택하여주세요.");
		}else{
			$("#frm").submit();
		}
	});
	
	$("#reset").click(function() {
		location.href="./trainerSearch";
	});

	$("#search-blank").click(function() {
		var b = $("#search-text").val();
		if(b==''){
			alert("검색어를 입력해주세요.");
			return false;
		}
	});
	
</script>
</body>
</html>