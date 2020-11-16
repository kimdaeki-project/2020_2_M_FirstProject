<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
	#cash-div{
		height: auto;
	}

	#cashDiv{
		text-align: center;
		padding: 50px 0 30px 0;
	}
	.cash_h1{
		text-align: center;
		margin-top: 80px;
	}
	input[_date]{
		margin-top: 20px;
		margin-right: 30px;
	}
	#reserve_btn{
		display:block;
		margin: 0 auto;
	}
</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>
	<h1 class="cash_h1">Cash Page</h1>
	<div id="cash-div">
		<form action="./cashPage" method="post" id="frm">
			<h1 class="cash_h1" style="font-size: 16px;">예약은 현재날짜 기준 30일 이내만 가능합니다.</h1>
		
			<div class="container" id="cashDiv">		
			
				<label for="sel1">Date</label>	
				TEST : <input type="text" id="name" name="name">
				<input _date type="date" id="date" name="regDate">	
			</div>		
		</form>
		<input type="button" value="예약하기" class="btn btn-primary" id="reserve_btn">
	</div>
<c:import url="../template/footer.jsp"></c:import>
</body>

<script type="text/javascript">
	$("#reserve_btn").click(function() {
		var d = $("#date").val();
		d = confirm(d+"일이 맞으십니까?")
		if(d){
			alert("결제 페이지로 이동합니다.");
			$("#frm").submit();
		}
		
	});

	var dateToday = document.getElementById("date");
	var date = new Date();
	// 현재 날짜
	dateToday.value = date.toISOString().substring(0, 10);
	// min 현재 날짜 기준
	dateToday.min = date.toISOString().substring(0, 10);
	
	date.setDate(date.getDate()+30);
	dateToday.max = date.toISOString().substring(0, 10);

</script>

</html>