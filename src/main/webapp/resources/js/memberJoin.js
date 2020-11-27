/**
 * 
 */

var pwCheck =false;
			var idCheck = false;
			var emailCheck = false;
			var phoneCheck =false;
			var ageCheck = false;
			var addressCheck=false;
			var gymCheck = false;
			var ch = '${classification}';
	
		//******************************트레이너 주종목**************************************************
		$("#divKind").on("change","#kindbox",function(){
				var kind = $(this).val();
				$("#kind").val(kind);
			});
		
		//******************************이메일 한글 사용 불가능***********************************************
		function nonKoreanSpecialKey(event) {
 				if(check_key() != 1 && check_key() != 2) {
 					 event.returnValue = false;  
  						alert("숫자나 영문자만 입력하세요!");
  						return;
 						}
					}
			
		//***************************************회원가입시에 트레이너와 일반회원 구분*****************************
			if(ch=='trainer'){
						$("#trainer").val("T");
						}
					else{
						$("#trainer").val("M");
						}
			
		
			//*****************************필수 입력 체크 및 회원가입*********************************
				$("#signIn").click(function(){
			
					if(ch!='trainer'){
						if(pwCheck&&idCheck&&emailCheck&&ageCheck){
							$("#frm").submit();
							}
						else{
								alert("필수항목을 입력하세요!");
							}
					}
					else{
						var fileCheck = $("#photo").val();
						if(pwCheck&&idCheck&&emailCheck&&ageCheck&&addressCheck&&gymCheck&&fileCheck!=''){
							$("#frm").submit();
							}
						else{
							alert("필수항목을 입력하세요!");
						}
						}
					});
				//*******************************핸드폰번호 중복 체크************************************
				$("#divPhone").on("blur", "#phone", function(){
					phoneCheck = false;
					var phone = $(this).val();
					if(phone != ''){
						$.get("./memberPhoneCheck?phone="+phone,function(data){
							data=data.trim();
							var str = "중복된 번호 입니다";
							$("#phoneResult").removeClass("idCheck0").addClass("idCheck1");
							if(data==0){
								str = "사용 가능한 번호 입니다"
								$("#phoneResult").removeClass("idCheck1").addClass("idCheck0");
								phoneCheck=true;
							}
							$("#phoneResult").html(str);
							
						});
					}else {
						$("#phoneResult").html("전화번호는 필수 항목입니다");
						$("#phoneResult").removeClass("idCheck0").addClass("idCheck1");
						phoneCheck = false;
					}
					
					});		
			//*******************************이메일체크************************************
			var domain='';
			var emailid='';
			var email='';
			var str = "중복된 email 입니다";
			$("#domainbox").change(function(){
					domain = $(this).val();
					if(domain=='direct'){
						$("#domain").removeAttr("readonly","readonly");
						$("#domain").blur(function(){
							domain=$(this).val();
							emailChk();
							});
						}
					else if(emailid!=''&&domain!='direct'){
						emailChk();
					}
					});
			$("#divEmail").on("blur", "#emailid", function(){
			
				emailCheck = false;
				emailid = $(this).val();
				if(domain!=''&&domain!='direct'){
					emailChk();
					}
				});	
			//**************************이메일 체크 함수************************************
			function emailChk(){
			email=emailid+'@'+domain;
					$("#email").val(email);
					if(email != ''){
						$.get("./memberEmailCheck?email="+email,function(data){
							data=data.trim();
							
							$("#emailResult").removeClass("idCheck0").addClass("idCheck1");
							if(data==0){
								str = "사용 가능한 email 입니다"
								$("#emailResult").removeClass("idCheck1").addClass("idCheck0");
								emailCheck=true;
							}
							$("#emailResult").html(str);
						});
					}else {
						$("#emailResult").html("이메일은 필수 항목입니다");
						$("#emailResult").removeClass("idCheck0").addClass("idCheck1");
						emailCheck = false;
					}
			}
			//******************************나이,핸드폰 숫자만 입력**************************
			 function checkNum(event) {
        		var keyVal = event.keyCode;				
       			if(((keyVal >= 48) && (keyVal <= 57))){
           			ageCheck = true;
            			return true;
        		}
       				 else{
          				 alert("숫자만 입력가능합니다");
           				 return false;
      			  }
  					  }
            //***************************PW*************************************
            var pw =0;
            $("#divPw").on("blur","#pw",function(){
				pw = $(this).val();
						});
            $("#divPw2").on("blur","#pw2",function(){
					var pw2=$(this).val();
					var str = "비밀번호가 일치하지 않습니다.";
					$("#pwResult").removeClass("idCheck0").addClass("idCheck1");
					if(pw==pw2){
							str ="비밀번호가 일치합니다.";
							$("#pwResult").removeClass("idCheck1").addClass("idCheck0");
							pwCheck = true;
						}
					if(pw==''||pw2==''){
							str="비밀번호는 필수입니다.";
							$("#pwResult").removeClass("idCheck0").addClass("idCheck1");
							pwCheck = false;
						}
					$("#pwResult").html(str);
                });
            //***********************idcheck**************************************
			$("#divId").on("blur", "#id", function(){
				var id = $(this).val();
				if(id != ''){
					$.get("./memberIdCheck?id="+id,function(data){
						data=data.trim();
						var str = "중복된 ID 입니다";
						$("#idResult").removeClass("idCheck0").addClass("idCheck1");
						if(data==0){
							str = "사용 가능한 ID 입니다"
							$("#idResult").removeClass("idCheck1").addClass("idCheck0");
							idCheck=true;
						}
						$("#idResult").html(str);
					});
				}else {
					$("#idResult").html("Id는 필수 항목입니다");
					$("#idResult").removeClass("idCheck0").addClass("idCheck1");
					
				}
				
				});
			//***********************트레이너 전용확인********************************************
			
				if(ch=='trainer'){	
					$("#divAddress").on("blur","#address",function(){
						var address = $(this).val();
						if(address==''){
							var str="주소는 필수입니다.";
							$("#addressResult").html(str);
							$("#addressResult").removeClass("idCheck0").addClass("idCheck1");
							}
						else{
							$("#addressResult").remove();
							addressCheck=true;
							
							}
					});
					$("#divGym").on("blur","#gym",function(){
						var gym = $(this).val();
						if(gym==''){
							var str2="체육관이름은 필수입니다.";
							$("#gymResult").html(str2);
							$("#gymResult").removeClass("idCheck0").addClass("idCheck1");
							}
						else{
							$("#gymResult").remove();
							gymCheck = true;
							}
					});
				
				}	         