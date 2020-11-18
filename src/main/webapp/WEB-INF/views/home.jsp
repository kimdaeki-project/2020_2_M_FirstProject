<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="en">

<head>


<style type="text/css">
.slide{
	height: 450px;
	width: 100%;
}
.symbol{
	height: 40px;
	width: 50px;
}
.img-circle{
	width: 160px;
	height: 160px;
	
}
.best{
	list-style: none;
	float: left;
}
.trainer{
	float: left;
	margin-left: 10px;
}
.gym{
	float: left;
	margin-left: 10px;
}

.food{
	float: left;
	margin-left: 10px;
}
	#timeResult{
		float:right;
		border: 1px;
		width: auto;
		line-height: 150px;
		font-size: 35px;
		margin-right: 20px;
	}

	</style>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Personal Training</title>

<c:import url="./template/bootStrap.jsp"></c:import>
</head>

<body onload="printClock()">

  <!-- Navigation -->
  <c:import url="./template/header.jsp"></c:import>
  <!-- Main Content -->
   <c:import url="./template/section.jsp"></c:import>

  <!-- Footer -->
  <div id="timeResult"></div>
 <c:import url="./template/footer.jsp"></c:import>

</body>
<script type="text/javascript">
function printClock() {
    
    var clock = document.getElementById("timeResult"); // 출력할 장소 선택
    var currentDate = new Date(); // 현재시간
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
    clock.innerHTML = currentHours+":"+currentMinute+":"+currentSeconds +" <span style='font-size:35px;'>"+ amPm+"</span>"; //날짜를 출력해 줌
    
    setTimeout("printClock()",1000); // 1초마다 printClock() 함수 호출
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
