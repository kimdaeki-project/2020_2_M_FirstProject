<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Notice Write title</title>

<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
.btns{
		background-color: black;
		color:white;
		font-size: large;
		border-radius: 10px;
	}
	.divWrite{
		display: inline-block;
	}
	.del {
		color: red;
		font-weight: bold;
		cursor: pointer;
	}
	.noResize{
		resize: none;
	
	}
</style>

</head>
<body>
	<jsp:include page="../template/slide.jsp" />

	<!-- Navigation -->
	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<form id="frm2" action="./${board}Write" method="post"
			enctype="multipart/form-data">

			<div class="form-group">
				<label for="title">글제목 </label> <input type="text"
					class="form-control" id="title" placeholder="Enter Title"
					name="title">
			</div>

			<div class="form-group">
				<label for="writer">작성자 </label> <input type="text"
					class="form-control" value="${member.id}" id="writer"
					placeholder="Enter Writer" name="writer" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="contents">내용 </label>
				<textarea class="form-control noResize" rows="20" cols="30" id="contents"
					name="contents"></textarea>
			</div>

			<input type="button" value="FileAdd" id="fileAdd"
				class="btns">
			<div class="form-group divWrite" >
				<input type="button" class="btns" value="Write" id="btn">
				<!-- 	<button class="btn btn-primary form-control" id="btn">Write</button> -->
			</div>
			<div id="files"></div>
			

		</form>
	</div>
	<div hidden="">
		<div id="f">
			<div class="input-group">
				<input id="files" type="file" class="form-control" name="files">
				<span class="input-group-addon del">DEL</span>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<c:import url="../template/footer.jsp"></c:import>
	<script src="../resources/js/noticeWrite.js"></script>
</body>
</html>