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
		padding: 50px 0 30px 0;
	}
	.cash_h1{
		text-align: center;
		margin-top: 80px;
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
	#timeResult{
		display:inline-block;
		border: 1px;
		width: auto;
		line-height: 250px;
		color:#666;
		font-size: 80px;
		text-align: center;
	}
</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body onload="printClock()">
	<h1 class="cash_h1">PayMent Page</h1>
	<div id="cash-div">
		<form action="./paymentPage" method="post" id="frm_pay">
			<h1 class="cash_h1" style="font-size: 16px;">예약은 현재날짜 기준 30일 이내만 가능합니다.</h1>
		
			<div class="container" id="cashDiv">					
				<input type="text" value="${member.name}" name="id" id="member_id-text" readonly="readonly">회원님
				<div class="date_style">예약하실 날짜와 시간을 선택해주세요.(당일예약 불가)</div>
				<div class="date_style">(Time 08:00 to 21:00)</div>
				<div id="timeResult"></div>
				<div>
				<input _date type="date" id="date" name="regDate">
				<input type="time" id="time" value="08:00" min="08:00" max="21:00" required="required" name="time">
				<span class="validity"></span>
				</div>
			</div>		
		</form>
		<input type="button" value="예약하기" class="btn btn-primary" id="reserve_btn">
	</div>

<c:import url="../template/footer.jsp"></c:import>
</body>

<script type="text/javascript">
	$("#reserve_btn").click(function() {
		var d = $("#date").val();
		
		var td = document.getElementById("time");
		if(!td.checkValidity()){
			alert("지정된 시간을 선택해주세요.");
		}else{
			d = confirm(d+"일이 맞으십니까?");	
			if(d){
				alert("결제 페이지로 이동합니다.");
				$("#frm_pay").submit();
			}
		}
	});
	
	

	var dateToday = document.getElementById("date");
	var date = new Date();
	// 현재 날짜
	//dateToday.value = date.toISOString().substring(0, 10);
	// min 현재 날짜 다음날부터
	date.setDate(date.getDate()+1)
	dateToday.min = date.toISOString().substring(0, 10);
	
	date.setDate(date.getDate()+30);
	dateToday.max = date.toISOString().substring(0, 10);

	
	function printClock() {
	    
	    var clock = document.getElementById("timeResult");            // 출력할 장소 선택
	    var currentDate = new Date();                                     // 현재시간
	    var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // 현재 날짜
	    var amPm = 'AM'; // 초기값 AM
	    var currentHours = addZeros(currentDate.getHours(),2); 
	    var currentMinute = addZeros(currentDate.getMinutes() ,2);
	    var currentSeconds =  addZeros(currentDate.getSeconds(),2);
	    
	    if(currentHours >= 12){ // 시간이 12보다 클 때 PM으로 세팅, 12를 빼줌
	    	amPm = 'PM';
	    	currentHours = addZeros(currentHours - 12,2);
	    }

	    if(currentSeconds >= 50){// 50초 이상일 때 색을 변환해 준다.
	       currentSeconds = '<span style="color:#de1951;">'+currentSeconds+'</span>'
	    }
	    clock.innerHTML = currentHours+":"+currentMinute+":"+currentSeconds +" <span style='font-size:50px;'>"+ amPm+"</span>"; //날짜를 출력해 줌
	    
	    setTimeout("printClock()",1000);         // 1초마다 printClock() 함수 호출
	}

	function addZeros(num, digit) { // 자릿수 맞춰주기
		  var zero = '';
		  num = num.toString();
		  if (num.length < digit) {
		    for (i = 0; i < digit - num.length; i++) {
		      zero += '0';
		    }
		  }
		  return zero + num;
	}


</script>

</html>