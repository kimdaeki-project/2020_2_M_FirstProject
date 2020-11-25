<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice View</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
#middle{
	width: 10px;
}

.select{
	background-color: white;
}
img { display: block; margin: 0px auto; }
#contentsBox{

	background-color: white;
	border: none;
}
</style>
</head>
<body>
	<jsp:include page="../template/slide.jsp" />


	<!-- Navigation -->
	<c:import url="../template/header.jsp"></c:import>


	<div class="container select">
		<table class="table table-hober">
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td>제목</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>작성자</td>
				<td>작성 일시</td>
				<td>조회수</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td>${dto.title}</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>${dto.writer}</td>
				<td>${dto.regDate}</td>
				<td>${dto.hit}</td>
			</tr>
			<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			</tr>
		</table>
		<div id = "middle"></div>
		<div id ="images">
		<c:forEach items="${list}" var="img" varStatus="vs">
					<tr>
						
					<td>
						<img alt="" src="../resources/upload/${board}/${img.fileName}">
					</td>
						
					</tr>
				</c:forEach>
				</div>
				<div>
				<pre id = "contentsBox">${dto.contents}
				</pre>
				
				</div>
		<c:choose>
			<c:when test="${board eq 'notice'}">
				<c:if test="${not empty member and member.id eq 'admin'}">
					<a href="./${board}Update?num=${dto.num}"><input type="button"
						id="upbtn" class="btn btn-primary member" value="update"></a>
					<a href="./${board}Delete?num=${dto.num}"><input type="button"
						id="debtn" class="btn btn-danger member" value="delete"></a>
				</c:if>
			</c:when>
				<c:when test="${board eq 'Qna'}">
				<c:if test="${not empty member and member.id eq dto.writer}">
					<a href="./qnaUpdate?num=${dto.num}"><input type="button"
						id="upbtn" class="btn btn-primary member" value="update"></a>
					<a href="./qnaDelete?num=${dto.num}"><input type="button"
						id="debtn" class="btn btn-danger member" value="delete"></a>
				</c:if>
				<c:if test="${not empty member and member.id eq 'admin'}">
					<a href="./qnaReply?num=${dto.num}"><input type="button"
						id="rebtn" class="btn btn-primary admin" value="reply"></a>
				</c:if>
			</c:when>
		</c:choose>
	
	</div>
	

	<!-- Footer -->
	<c:import url="../template/footer.jsp"></c:import>

</body>
</html>