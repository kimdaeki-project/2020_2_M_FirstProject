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
	.t_tr{
		font-size: 15px;
	}
	#h1{
		margin-top: 50px;
		margin-bottom: 50px;
		text-align: center;
	}
	#pager_div{
		margin-top:50px;
		text-align: center;
	}
	#tip_div{
		text-align: center;
		font-size: 12px;
		margin-bottom: 20px;
	}
</style>
</head>
<c:import url="../template/header.jsp"></c:import>
<body>
	<h1 id="h1">Trainer List</h1>
	<form class="example" style="margin: 25px;width: 50%; margin: 0 auto;" action="./trainerWindowSearch">
		<div class="col-xs-3" id="divSelect">
			<select style="font-size: 15px; margin-bottom: 5px;" class="form-control" name="select" id="selectBox">
				<option value="nm">이름</option>
				<option value="loc">지역</option>
			</select>
		</div>
		<div id= "divSelect" hidden="">
			<input type="text" id="selectText">
		</div>
		<div class="col-xs-10">
			<input type="text" placeholder="Search..." name="search" id="search-text">
			<button id="search-blank"><i class="fa fa-search"></i></button>
			
		</div>
	</form>
	<div id="tip_div">※ 이름을 클릭하시면 상세정보 페이지로 이동합니다.</div>
	<table class="table table-condensed" style="width: 70%; margin: 0 auto;">
	<tr style="font-size: 17px;">
		<th>이름 </th><th>성별 </th><th>종류 </th><th>지역 </th><th>장소 </th>
	</tr>
	<c:forEach items="${list}" var="member">
		<c:if test="${not empty member.kind}">
			<tr class="t_tr">
				<td><a href="./trainerInfoPage?num=${member.num}&id=${member.id}">${member.name}</a></td>
				<td>${member.gender}</td>
				<td>${member.kind}</td>
				<td>${member.address}</td>
				<td>${member.business}</td>
			</tr>
		</c:if>	
	</c:forEach>
	</table>
	<div class="container" id="pager_div">
		<c:if test="${pager.beforeCheck}">
			<a href="./trainerWindowSearch?curPage=${pager.startNum-1}&select=${pager.select}&search=${pager.search}">◀◀</a>
		</c:if>
		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	  		<a href="./trainerWindowSearch?curPage=${i}&select=${pager.select}&search=${pager.search}">${i}</a>
	  	</c:forEach>
	  	
		<c:if test="${pager.nextCheck}">
			<a href="./trainerWindowSearch?curPage=${pager.lastNum+1}&select=${pager.select}&search=${pager.search}">▶▶</a>
		</c:if>
	</div>
<c:import url="../template/footer.jsp"></c:import>	
<script type="text/javascript">
$("#divSelect").on("change","#selectBox",function(){
	var kind = $(this).val();
	alert(kind);
	$("#kind").val(kind);
});

</script>
</body>
</html>