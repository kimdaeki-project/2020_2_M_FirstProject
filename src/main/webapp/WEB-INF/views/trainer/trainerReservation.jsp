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
	#reserve_h1{
		text-align: center;
		margin: 50px 0;
	}
	#reserve_div{
		width: 80%;
		height:auto;
		text-align: center;
	}
	#reserve_tbl{
		float: right;
	}
	.reserve_td{
		padding-top: 40px;
		font-weight: bold;
	}

	#back_btn{
		margin-top:50px;
		margin-left: 70%;
	}
	#height_size{
		margin-top: 80px;
	}
	*, ::after, ::before{
		box-sizing: border-box;
	}
	row{
		margin: 0;
		padding: 0;
		display: flex;
		flex-wrap: wrap;
	}
	article{
		display: block;
	}
	div{
		display: block;
	}
	body, html{
		margin: 0;
		padding: 0;
		width: 100%;
		height: 100%;
		font-weight: 400;
		
		letter-spacing: -.3px;
	}
	.pc-detail-header{
		padding: 40px 60px;
	}
	.detail.container-fluid{
		position: relative;
		min-height: 100vh;
	}
	.container-fluid{
		margin: 0;
		padding: 0;
	}
	.pc-detail-header .gym-photo-big{
		cursor: pointer;
		vertical-align: middle;
		position: relative;
		display: inline-block;
		overflow: hidden;
		width: 44.4%;
		text-align: center;
	}
	.pc-detail-header .gym-info{
		vertical-align: top;
		display: inline-block;
		width: 55%;
		max-width: 590px;
		padding-left: 30px;
	}
	.pc-detail-header .gym-info .title div.ts-sxl{
		display: inline-block;
		font-size: 28px !important;
		vertical-align: top;
		max-width: 400px;
	}
	.pc-detail-header .gym-info .title{
		height: 100px;
	}
	.pc-detail-header .gym-info .info-text{
		font-size: 16px;
		padding: 20px 0;
		color: #939598 !important;
	}
	.pc-detail-header .gym-info .in-detail-border{
		border-top: 2px solid #f4f5f6;
	}
	strong {
		font-weight: 700;
	}
	.icon-pc-call{
		width: 18px;
		height: auto;
		margin-right: 2px;
	}
	.purchase-cont{
		padding-top: 55px;
	}
	.purchase-cont .detail-btn{
		height: 64px !important;
		line-height: 64px !important;
		width: 100%;
		background-color:  #5467f5;
		color:white;
		float: left;
	}
	.purchase-cont .detail-btn.btn-multipay{
		margin-right: 0;
	}
	.span-label{
		font-weight: bold;
		font-size: 18px;
	}
	.info-place-div{
		text-align: center;
		padding:30px 0;
		border-bottom: 2px solid #eeffe6;
	}
	#info-strong{
		font-size: 24px;	
	}
	.center-introduce-container{
		position:relative;
		border-bottom: 1px solid #e6e7e8;
		padding: 50px 30px;
		text-align: center;
		overflow: hidden;
		border-radius: 4px;
	}
	.introduce-container-p{
		position:relative;
		width:50%;
		color:#58595b;
		margin-bottom:0px;
		display:inline-block;
		white-space: pre-line;
		text-align: left;
		padding: 40px;
		background-color: #e5e6e5;
	}
	section[_se-content]{
		position: relative;
		padding: 50px 50px;
		font-size: 15px;
		line-height: 1.6;
		border-bottom: 1px solid #e6e7e8;
		width: 100%;
		height: auto;
	}
	section[_se-content] h3{
		font-size: 20px;
		margin-bottom: 30px;
		font-weight: bold;
	}
	.item-list{
		margin-top: 20px;
	}	
	.item-title{
		font-weight: 900;
		font-size: 18px;
		margin-bottom: 20px;
	}
	.item-contents{
		position: relative;
		border-radius: 4px;
		margin-bottom: 10px;
		height: auto;
		width: 100%;
		padding: 27px 30px;
		padding-left: 20px;
	}
	.price-table{
		width: 100%;
		position: static;
	}
	#item-table{
		border-collapse: collapse;
		background-color: transparent;	
	}
	tr[_table-tr]{
		position: static;
		vertical-align: middle;	
	}
	.header-row tr[_table-tr] td[_table-td]:first-of-type{
		text-align: right;	
	}
	.header-row td[_table-td]{
		font-weight: 900;
		padding-bottom: 14px;
	}
	.price-table td[_table-td]:first-of-type{
		width: 22%;
	}
	.price-table td[_table-td]{
		position:static;
	}
	.td[_table-td]:not(:first-of-type)::before{
		content: '';
		position: absolute;
		display: block;
		width: 18.5%;
		height: cals(100%-20px);
		top: 10px;
		border-radius: 4px;
	}
	.td[_table-td] > div[_table-div]{
		display: inline-block;
		width: 90%;
		height: 100%;
		text-align: right;
	}
	.price td[_table-td]{
		padding-bottom: 4px;
	}
	.price-table td[_table-td]{
		width: 18.5%;
		font-size: 18px;
		text-align: center;
	}
	.price.mem td[_table-td]:first-of-type {
		font-weight: 900;
	}
	.price.lowest td[_table-td]{
		color: #5467f5;
	}
	.price.lowest td.universe:before {
		content: '';
		width: 15px;
		height: 15px;
		display: inline-block;
		background-image: url("../resources/img/trainerIcon/im_space.png");
		background-position: center center;
		background-size: 15px 15px;
		background-repeat: no-repeat;
		margin-right: 3px;
		vertical-align: middle;
	}
	.price td.bold[_table-td]{
		font-size: 15px;
	}
	.membershipAnchor{
		width: 100%;
	}
	.notice-container h3[_h3-h3] + div[_table-div]{
		line-height: 1.6;
		white-space: pre-line;
		text-align: left;
		font-size: 18px;
	}
	.time-container p{
		white-space: pre-line;
		line-height: 1.6;
		text-align: left;
		font-size: 18px;
	}
	.col-2{
		position:relative;
		width:100%;
		min-height:1px;
		margin: 0;
		padding: 0;
		flex: 0 0 16.666667%;
		
	}
	.col-3{
		margin: 0;
		padding: 0;
		flex: 0 0 25%;
		max-width: 25%;
		width: 100%;
		min-height: 1px;
	}
	.comport[_table-div]{
		max-width: 100px;
		text-align: center;
		margin-right: 35px;
	}
	.comport[_div-image]{
		display: inline-block;
		margin-bottom: 28px;
	}
	.comport[_div-image] .icon-holder[_div-image]{
		width:100%;
	}
	.comport[_div-image] img[_div-image]{
		height: 58px;
		width: auto;
	}
	img{
		vertical-align: middle;
		background: 0 0!important;
	}
	.comfort[_div-image] label[_div-image]{
		margin-top: 14px;
		font-size: 16px;
		max-width: none;
	}
	.comfort[_div-image] label[_div-image]{
		display: block;
		width: 100%;
		overflow: visible;
		text-align: center;
		padding-right: 3px;
	}

</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>
	<h1 id="reserve_h1">Trainer Reserve</h1>
	<div class="detail-wrap">
		<div class="detail container-fluid">
			<div class="pc-detail-header">
				<div class="gym-photo-big">
					<img alt="" src="../resources/img/gym/fc_6.jpg" style="width: 753px; height: 452px;">
				</div>
				<div class="gym-info">
					<div class="title">
						<div class="ts-sxl"><strong>서대문 VIP 휘트니스</strong></div>
					</div>
					<div class="info-text in-detail-border">
						<div style="margin-bottom: 10px;">서울특별시 서대문구 경기대로 68 동신빌딩 3층(2층,지하 1층)</div>
						<img src="../resources/img/trainerIcon/pc_call.png" class="icon-pc-call">
						<a href="#">02-111-1111</a>
					</div>
				</div>
			</div>
			<div class="contents-window">
				<div id="detail-tab-bar">
					<div class="info-place-div"> 
						<strong id="info-strong">시설정보</strong> 
					</div>
				</div>
			</div>
			<div class="center-introduce-container">
				<div class="membershipAnchor">
					<p class="introduce-container-p"> [VIP휘트니스는 정부 방역지침을 준수합니다!]
					✅ 출입구 발열 / 호흡기 증상여부 확인
					✅ 시설 내 손 소독제 비치
					✅ 회원 및 관리자 마스크 착용
					✅ 운동복, 수건 등 공용물품 제공하지 않음
					✅ 탈의실, 샤워실, 대기실 소독
					✅ 운동기구 사용자간 1~2m 간격 유지
					✅ 감염관리 책임자 지정 및 출입자명단 관리
					
					고객님들의 안전한 운동을 위해 최선을 다하겠습니다.
					-------------------------------
					
					서대문역 1번출구 5분거리!! 3개 각 층 넓고 쾌적한 VIP휘트니스!!
					▶3층 프리 웨이트(렉3대) 및 P.T존! 
					▶2층 유산소존! 
					▶B1층 찜질방 및 G.X존 
					
					쾌적하고 후회없는 결정을 원한다면 
					지금바로 VIP휘트니스로 다짐하세요!   
					</p>
				</div>
			</div>
			<section _se-content class="item-list-container">
				<h3>가격정보</h3>
				<div class="item-list">
					<div class="item ng-star-inserted">
						<h4 class="item-title">헬스</h4>
						<div class="item-contents">
							<table class="price-table membershipAnchor" id="item-table">
								<tr _table-tr class="header-row">
									<td _table-td></td>
									<td _table-td>
										<div _table-div>1개월</div>
									</td>
									<td _table-td>
										<div _table-div>3개월</div>
									</td>
									<td _table-td>
										<div _table-div>6개월</div>
									</td>
									<td _table-td>
										<div _table-div>12개월</div>
									</td>
								</tr>
								<tr _table-tr class="price original">
									<td _table-td>정상가</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div>90,000원</div>
									</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div>120,000원</div>
									</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div>220,000원</div>
									</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div>410,000원</div>
									</td>
								</tr>
								<tr _table-tr class="price mem ng-star-inserted">
									<td _table-td>회원가</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div>78,000원</div>
									</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div>109,000원</div>
									</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div></div>
									</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div></div>
									</td>
								</tr>
								<tr class="price lowest ng-star-inserted">
									<td _table-td class="universe">
										선착순 우주최저가
									</td>
									<td _table-td class="bold ng-star-inserted">
										<div _table-div>66,000원</div>
									</td>
									<td _table-td class="bold ng-star-inserted">
										<div _table-div>88,000원</div>
									</td>
									<td _table-td class="bold ng-star-inserted">
										<div _table-div></div>
									</td>
									<td _table-td class="bold ng-star-inserted">
										<div _table-div></div>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="item ng-star-inserted">
						<h4 class="item-title">요가</h4>
						<div class="item-contents">
							<table class="price-table membershipAnchor" id="item-table">
								<tr _table-tr class="header-row">
									<td _table-td></td>
									<td _table-td>
										<div _table-div>1개월</div>
									</td>
									<td _table-td>
										<div _table-div>3개월</div>
									</td>
									<td _table-td>
										<div _table-div>6개월</div>
									</td>
									<td _table-td>
										<div _table-div>12개월</div>
									</td>
								</tr>
								<tr _table-tr class="price original">
									<td _table-td>정상가</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div>60,000원</div>
									</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div>100,000원</div>
									</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div>180,000원</div>
									</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div>370,000원</div>
									</td>
								</tr>
								<tr _table-tr class="price mem ng-star-inserted">
									<td _table-td>회원가</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div>55,000원</div>
									</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div>89,000원</div>
									</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div></div>
									</td>
									<td _table-td class="ng-star-inserted">
										<div _table-div></div>
									</td>
								</tr>
								<tr class="price lowest ng-star-inserted">
									<td _table-td class="universe">
										선착순 우주최저가
									</td>
									<td _table-td class="bold ng-star-inserted">
										<div _table-div>43,000원</div>
									</td>
									<td _table-td class="bold ng-star-inserted">
										<div _table-div>73,000원</div>
									</td>
									<td _table-td class="bold ng-star-inserted">
										<div _table-div></div>
									</td>
									<td _table-td class="bold ng-star-inserted">
										<div _table-div></div>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</section>
			<section _se-content class="notice-container ng-star-inserted">
				<h3 _h3-h3>공지사항</h3>
				<div _table-div>
					※ONLY 트레이너 매칭에서 가능한 VIP 선착순 우주 최저가 혜택 !
					단기권 1개월,3개월 회원권 할인가 각 선착순 50명 
					(조기소진시 정상가전환)
				</div>
			</section>
			<section _se-content class="time-container ng-star-inserted">
				<h3 _h3-h3>운영시간</h3>
				<p>
				[평	일] 06:00 ~ 23:00
				[토요일] 09:00 ~ 19:00
				[일요일] 12:00 ~ 18:00
				[휴관일] 둘째 ,넷째 주 일요일 
				</p>
			</section>
			<section _se-content class="comforts-container ng-star-inserted">
				<h3 _h3-h3>편의 시설</h3>
				<div _table-div class="comforts-list row" id="comfort-list">
					<div _table-div class="comport col-2 ng-star-inserted" _div-image>
						<div _div-image class="comfort ng-star-inserted">
							<div _div-image class="icon-holder">
								<img _div-image src="../resources/img/trainerIcon/tower.png" alt="수건">
							</div>
							<label _div-image>수건</label>
						</div>
					</div>
					<!--  -->
					<div _table-div class="comport col-2 ng-star-inserted" _div-image>
						<div _div-image class="comfort ng-star-inserted">
							<div _div-image class="icon-holder">
								<img _div-image src="../resources/img/trainerIcon/clothes.png" alt="운동복">
							</div>
							<label _div-image>운동복</label>
						</div>
					</div>
					<!--  -->
					<div _table-div class="comport col-2 ng-star-inserted" _div-image>
						<div _div-image class="comfort ng-star-inserted">
							<div _div-image class="icon-holder">
								<img _div-image src="../resources/img/trainerIcon/shower.png" alt="샤워시설">
							</div>
							<label _div-image>샤워 시설</label>
						</div>
					</div>
					<!--  -->
					<div _table-div class="comport col-2 ng-star-inserted" _div-image>
						<div _div-image class="comfort ng-star-inserted">
							<div _div-image class="icon-holder">
								<img _div-image src="../resources/img/trainerIcon/parking.png" alt="주차장">
							</div>
							<label _div-image>주차장</label>
						</div>
					</div>
					<!--  -->
					<div _table-div class="comport col-2 ng-star-inserted" _div-image>
						<div _div-image class="comfort ng-star-inserted">
							<div _div-image class="icon-holder">
								<img _div-image src="../resources/img/trainerIcon/locker.png" alt="라커">
							</div>
							<label _div-image>라커</label>
						</div>
					</div>
					<!--  -->
					<div _table-div class="comport col-2 ng-star-inserted" _div-image>
						<div _div-image class="comfort ng-star-inserted">
							<div _div-image class="icon-holder">
								<img _div-image src="../resources/img/trainerIcon/wifi.png" alt="wifi">
							</div>
							<label _div-image>WI-FI</label>
						</div>
					</div>
				</div>
			</section>
	
		</div>
	</div>	
	<input type="button" value="검색창으로 돌아가기" class="btn btn-primary" id="back_btn">
	<div id="height_size"></div>
	<c:import url="../template/footer.jsp"></c:import>
</body>
<script type="text/javascript">
	$("#reserve_btn").click(function() {
		location.href="../payment/paymentPage";
	});
	$("#back_btn").click(function() {
		location.href="./trainerSearch";
	});
</script>
</html>