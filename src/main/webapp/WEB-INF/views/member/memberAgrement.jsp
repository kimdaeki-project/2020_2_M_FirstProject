<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!doctype html>
<html>
<head>

<c:import url="../template/bootStrap.jsp"></c:import>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<meta charset="utf-8">
<title>..</title>
<style>
	body {
		font-size: small; 
		font-family: Arial, '맑은 고딕';
		background-color: rgb(245,246,247);
	}
	html{height: 100%;}
	body{position: relative;width: 100%;height: 100%;}
	.center{
			margin:0;
			padding:0;
			height:70%;
			width:  600px;
			border: 1px solid rgb(245,246,247);
			border-radius :20px 20px 20px 20px;
			position: absolute;top: 20%;left: 45%;
			margin:-150px 0 0 -150px}
	.noResize{
		resize: none;
	
	}
	.area{
	margin-top: 10px;
	}
</style>
</head>
<body>

	
<form action="./memberJoin" method="get" id="form1">
<div id="main" >
<div class = "center">
<h1>약관동의</h1>
	
	<p>
		<label>
			<input type="checkbox" name="all" id="all">
			전체선택
		</label>
	</p>
	<p>
		<textarea rows="7" cols="70" readonly="readonly" class="noResize">필수 약관동의1</textarea>
		<label>
		<div class ="area">
			<input type="checkbox" name="c1" id="c1"> 
			이용약관 동의(필수)
		</div>
		</label>
	</p>
	<p>
	<textarea rows="7" cols="70" readonly="readonly" class="noResize">필수 약관동의2</textarea>
		<label>
		<div class ="area">
			<input type="checkbox" name="c2" id="c2"> 
			개인정보 수집 및 이용에 대한 안내(필수)
		</div>
		</label>
	</p>
	

	<p>

		<label>
		<textarea rows="7" cols="70" readonly="readonly"  class="noResize">선택 약관동의</textarea>
		<div class ="area">
			<input type="checkbox" name="c3" id="c3" value="위치정보 이용약관 동의(선택)"> 
			위치정보 이용약관 동의(선택)
		</div>
		</label>
		
	</p>

<p>
			<div class ="area">
                    <label for="inputEmailReceiveYn" class="col-lg-2 control-label">트레이너입니까?</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="division" name="division" value="Y" checked> 네
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="division" name="division" value="N"> 아니오
                        </label>
                </div>
   </div>

	
	<div class ="area">
		<p id="input">
			<input type="submit" value="동의" id="member">
			<input type="reset" value="미동의" id="reset" onload="">
		</p>
	</div>


</div>
<script>


	var doc = document; 
	var form1 = doc.getElementById('form1'); 
	var inputs = form1.getElementsByTagName('INPUT'); 
	var form1_data = {
		"c1": false, 
		"c2": false, 
		"c3": false
	}; 

	window.onpageshow = function(event) {
		if ( event.persisted || (window.performance && window.performance.navigation.type == 2)) {
			form1_data = {
					"c1": true, 
					"c2": true, 
					"c3": true
				}
		
		        }
		}
		

	

		

	var c1 = doc.getElementById('c1'); 
	var c2 = doc.getElementById('c2'); 
	var c3 = doc.getElementById('c3'); 

	function checkboxListener() {
		form1_data[this.name] = this.checked; 

		if(this.checked) {
			// submit 할때 체크하지 않아 색이 변한 font 를 다시 원래 색으로 바꾸는 부분. 
			this.parentNode.style.color = "#000"; 
		}
	}


		c1.onclick = c2.onclick = c3.onclick = checkboxListener; 

		var all = doc.getElementById('all'); 

		all.onclick = function() {
			if (this.checked) {
				setCheckbox(form1_data, true); 
			} else {
				setCheckbox(form1_data, false); 
			}
		}; 


		function setCheckbox(obj, state) {
			for (var x in obj) {
				obj[x] = state; 

				for(var i = 0; i < inputs.length; i++) {
					if(inputs[i].type == "checkbox") {
						inputs[i].checked = state; 
					}
				}

			}
		}


	/*all.onclick = function() {
		if (this.checked) {
			for (var x in form1_data) {
				form1_data[x] = true; 
				for(var i = 0; i < inputs.length; i++) {
					if(inputs[i].type == "checkbox") {
						inputs[i].checked = true; 
					}
				}
			}
		} else {
			for (var x in form1_data) {
				form1_data[x] = false; 
				for(var i = 0; i < inputs.length; i++) {
					if(inputs[i].type == "checkbox") {
						inputs[i].checked = false; 
					}
				}
			}
		}
	}; */
	form1.onsubmit = function(e) {
		e.preventDefault(); // 서브밋 될때 화면이 깜빡이지 않게 방지

		if ( !form1_data['c1'] ) {
			alert('이용약관 동의를 하지 않았습니다'); 
			c1.parentNode.style.color = 'red'; 
			return false; 
		}

		if ( !form1_data['c2'] ) {
			alert('개인정보 수집 및 이용에 대한 안내를 선택하지 않았습니다.'); 
			return false; 
		}

		this.submit(); 
	}; 
	
</script>
  
</div>
</form>  
</body>
</html>