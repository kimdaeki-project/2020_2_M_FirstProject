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
		font-size: 16px;
		font-family: monospace;
	}
	#tip_div{
		text-align: center;
		font-size: 12px;
		margin-bottom: 20px;
	}
	#search_div{
		margin-top: 50px;
		float: right;
	}
	#pager_div{
		margin-top:50px;
		text-align: center;
	}
</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>
	<h1 id="h1">Trainer Search</h1>
	<div id="tip_div">※ 이름을 클릭하시면 상세정보 페이지로 이동합니다.</div>
	<table class="table table-condensed" style="width: 70%; margin: 0 auto;">
		<tr style="font-size: 18px;">
			<th>이름 </th><th>성별 </th><th>종류 </th><th>지역 </th><th>장소 </th>
		</tr>
	
		<c:forEach items="${search}" var="dto">
			<tr class="t_tr">
				<td><a href="./trainerInfoPage?num=${dto.num}">${dto.name}</a></td>
				<td>${dto.gender}</td>
				<td>${dto.healthKind}</td>
				<td>${dto.address}</td>
				<td>${dto.business}</td>
			</tr>
		</c:forEach>
	</table>
	
	<div class="container" id="pager_div">
	 	<c:if test="${pager.beforeCheck}">
			<a href="./trainerDetailSearch?curPage=${pager.startRow-1}&gender=${pager.gender}&healthKind=${pager.healthKind}&business=${pager.business}&search=${pager.search}">[이전]</a>
		</c:if>

		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	  		<a href="./trainerDetailSearch?curPage=${i}&gender=${pager.gender}&healthKind=${pager.healthKind}&business=${pager.business}&search=${pager.search}">${i}</a>
	  	</c:forEach>
	
		<c:if test="${pager.nextCheck}">
			<a href="./trainerDetailSearch?curPage=${pager.startRow+1}&gender=${pager.gender}&healthKind=${pager.healthKind}&business=${pager.business}&search=${pager.search}">[다음]</a>
		</c:if>

	</div>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>