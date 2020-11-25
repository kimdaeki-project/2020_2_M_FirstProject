<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA Reply</title>
<c:import url="../template/bootStrap.jsp"></c:import>

<style type="text/css">
table {
	margin-top: 10px;
}
</style>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<body>
	<jsp:include page="../template/slide.jsp" />
	
	<c:import url="../template/header.jsp"></c:import>


	<div class="container">
		<form id="frm" action="./qnaReply" method="post">

			<input type="hidden" name="num" value="${param.num}">
			<div class="form-group">
				<label for="title">글제목</label> <input type="text"
					class="form-control" id="title" placeholder="Enter Title"
					name="title">
			</div>

			<div class="form-group">
				<label for="writer">작성자</label> <input type="text"
					class="form-control" id="writer" placeholder="Enter Writer"
					name="writer" value="${member.id}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="contents">내용</label>
				<textarea class="form-control summernote" rows="10" id="summernote" name="contents" ></textarea>
			</div>


			<button type="submit" class="btn btn-primary">Update</button>
		</form>
	</div>
	<script type="text/javascript" src="">
	</script>

	<!-- Footer -->
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>