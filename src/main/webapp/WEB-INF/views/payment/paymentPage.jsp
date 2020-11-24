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
	#cash-div{
		height: auto;
	}
	#cashDiv{
		text-align: center;
		padding: 25px 0 30px 0;
	}
	.cash_h1{
		text-align: center;
		margin-top: 20px;
	}
	input[_date]{
		margin-top: 20px;
	}
	#reserve_btn{
		display:block;
		margin: 0 auto;
	}
	.date_style{
		font-size: 16px;
		color: navy;
		margin-top: 5px;
	}
	#member_id-text{
		border:none;
		border-right:0px;
		border-top:0px; 
		boder-left:0px; 
		boder-bottom:0px;
		text-align: center;
		margin-top: 20px;
	}
	input:invalid+span:after{
		content: "지정된 시간을 선택해주세요.";
		font-size:14px;
		padding-left: 5px;
	}
	input:valid+span:after{
		content: "";
		padding-left: 5px;
	}
	.info-tr{
		border: none;
		margin-bottom: 24px;
		text-align: center;
	}
</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>
	<h1 class="cash_h1">PayMent Page</h1>
	<div id="cash-div">
		<form action="./paymentPage" method="post" id="frm_pay">
			<h1 class="cash_h1" style="font-size: 16px;">예약은 현재날짜 기준 30일 이내만 가능합니다.</h1>
		
			<div class="container" id="cashDiv">
				<h3 class="cash_h1" style="padding:15px; background-color: #f2d9e6;">선택하신 트레이너 정보입니다.</h3>	
				이름 : <input type="text" value="${trainer.name}" class="info-tr" name="name">
				<br>
				종류 : <input type="text" value="${trainer.kind}" class="info-tr" name="kind">
				<br>
				출장 : <input type="text" value="${trainer.business}" class="info-tr" name="business">
				<br>					
				<input type="text" value="${member.id}" name="id" id="member_id-text" readonly="readonly">회원님
				<div class="date_style">예약하실 날짜와 시간을 선택해주세요.(당일예약 불가)</div>
				<div class="date_style">(Time 08:00 to 21:00)</div>
				<div>
				<input _date type="date" id="date" name="regDate" >
				<input type="time" id="time" value="08:00" min="08:00" max="21:00" step="900" required="required" name="time">
				<span class="validity"></span>
				</div>
			</div>
			
		</form>
		<input type="button" value="예약하기" class="btn btn-primary" id="reserve_btn" title="${member.id}">
	</div>

<c:import url="../template/footer.jsp"></c:import>
</body>

<script type="text/javascript">
	$("#reserve_btn").click(function() {
		var d = $("#date").val();
		var t = $("#time").val();
		
		var id = $("#member_id-text").val();
		
		var td = document.getElementById("time");
		
		$.get("./memberIdCheck?id="+id, function(data) {
			data = data.trim();

			if(!td.checkValidity()){
				alert("지정된 시간을 선택해주세요.");
			}if(data == 0){
				d = confirm(d+"일 "+ t+"분이 맞습니까?");	
				
				if(d){
					$("#frm_pay").submit();
				}else{
					alert("취소하셨습니다..");
				}
				
			}else{
				alert("회원님은 이미 예약을 하셨습니다.");
			}
		});	
	});
	var dateToday = document.getElementById("date");

	var date = new Date();
	// 현재 날짜
	date.setDate(date.getDate()+1)
	dateToday.value = date.toISOString().substring(0, 10);
	
	// min 현재 날짜 다음날부터
	date.setDate(date.getDate())
	dateToday.min = date.toISOString().substring(0, 10);
	
	date.setDate(date.getDate()+30);
	dateToday.max = date.toISOString().substring(0, 10);
	
</script>

</html>