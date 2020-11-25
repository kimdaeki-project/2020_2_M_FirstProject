<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice Update</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<c:import url="../template/bootStrap.jsp"></c:import>

</head>
<body>
<jsp:include page="../template/slide.jsp" />

	<!-- Navigation -->
	<c:import url="../template/header.jsp"></c:import>


	<div class="container">
		<form id="frm" action="./${board}Update" method="post"
			enctype="multipart/form-data">
			<div class="form-group" hidden="">
				<label for="title">num</label> <input type="text"
					class="form-control" id="num" placeholder="Enter Title" name="num"
					value=${dto.num }>
			</div>
			<div class="form-group">
				<label for="title">글제목 </label> <input type="text"
					class="form-control" id="title" placeholder="Enter Title"
					name="title" value="${dto.title}">
			</div>

			<div class="form-group">
				<label for="writer">작성자 </label> <input type="text"
					class="form-control" value="${dto.writer}" id="writer"
					placeholder="Enter Writer" name="writer" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="contents">내용 </label>
				<textarea class="form-control" rows="20" cols="30" id="contents"
					name="contents">${dto.contents}</textarea>
			</div>

			<input type="button" value="FileAdd" id="fileAdd"
				class="btn btn-info">

			<div id="files"></div>


			<div class="form-group">
				<label></label> <input type="button"
					class="btn btn-primary form-control" value="Write" id="btn">
			</div>
		</form>

		<div id="f">
			<div class="input-group">
				<input id="files" type="file" class="form-control" name="files">
				<span class="input-group-addon del">DEL</span>
			</div>
		</div>


		<script type="text/javascript">
			$("#btn").click(function() {
				var title = $("#title").val();
				var contents = $("#contents").val();
				if (title == '' && contents == '') {
					alert("제목과 내용은 비워둘 수 없습니다.");
				} else {
					$("#frm").submit();
				}
			});
		</script>

	</div>


	<!-- Footer -->
	<c:import url="../template/footer.jsp"></c:import>


</body>
</html>