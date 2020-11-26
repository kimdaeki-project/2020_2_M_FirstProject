<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA Reply</title>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
table {
	margin-top: 10px;
}
.btns{
		background-color: black;
		color:white;
		font-size: large;
		border-radius: 10px;
	}
	.noResize{
		resize: none;
	
	}
	.del {
		color: red;
		font-weight: bold;
		cursor: pointer;
	}
</style>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
	<jsp:include page="../template/slide.jsp" />
	
	<c:import url="../template/header.jsp"></c:import>


	<div class="container">
		<form id="frm" action="./qnaReply" method="post" enctype="multipart/form-data">

			<input hidden="" name="num" value="${qnareply.num}">
			<div class="form-group">
				<label for="title">글제목</label> <input type="text"
					class="form-control" id="title" placeholder="Enter Title"
					name="title" value="${qnareply.title }">
			</div>

			<div class="form-group">
				<label for="writer">작성자</label> <input type="text"
					class="form-control noResize" id="writer" placeholder="Enter Writer"
					name="writer" value="${member.id}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="contents">내용</label>
				<textarea class="form-control noResize" rows="10" name="contents" ></textarea>
			</div>
			<button type="submit" class="btns">Update</button>
			<div id="files"></div>
		</form>
		
	</div>
	</div>
	<!-- Footer -->
	<c:import url="../template/footer.jsp"></c:import>
	<script src="../resources/js/noticeWrite.js"></script>
</body>
</html>