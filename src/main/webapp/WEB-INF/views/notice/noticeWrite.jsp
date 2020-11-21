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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Notice Write title</title>


<style type="text/css">
.slide {
	height: 450px;
	width: 100%;
}

.symbol {
	height: 40px;
	width: 50px;
}

.img-circle {
	width: 160px;
	height: 160px;
}

.best {
	list-style: none;
	float: left;
}

.trainer {
	float: left;
	margin-left: 10px;
}

.gym {
	float: left;
	margin-left: 10px;
}

.food {
	float: left;
	margin-left: 10px;
}
</style>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<c:import url="../template/bootStrap.jsp"></c:import>


</head>
<body>

	<!-- Navigation -->
	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<form id="frm2" action="./noticeWrite" method="post">

			<div class="form-group">
				<label for="title">글제목 </label> <input type="text"
					class="form-control" id="title" placeholder="Enter Title" name="title">
			</div>

			<div class="form-group">
				<label for="writer">작성자 </label> <input type="text"
					class="form-control" value="${member.id}" id="writer"
					placeholder="Enter Writer" name="writer" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="contents">내용 </label>
				<textarea class="form-control" rows="20" cols="30" id="contents"
					name="contents"></textarea>
			</div>

			<input type="button" value="FileAdd" id="fileAdd" class="btn btn-info">

				<div class="col-lg-10">
					<input type="file" class="form-control" id="photo"
						data-rule-required="true" name="photo">
				</div>
			
			<div class="form-group">
				<input type="button" class="btn btn-primary form-control" value="Write" id="btn">
			<!-- 	<button class="btn btn-primary form-control" id="btn">Write</button> -->
			</div>
			
		</form>

		<div id="f">
			<div class="input-group">
				<input id="files" type="file" class="form-control" name="files">
				<span class="input-group-addon del">DEL</span>
			</div>
		</div>
		<script type="text/javascript">
   

   $("#btn").click(function(){
      var title = $("#title").val();
      var contents = $("#contents").val();
      if(title==''&&contents==''){
         alert("제목과 내용은 비울 수 없습니다.");
         }
      else{
            $("#frm2").submit();
         }
      });

  </script>


		<!-- Footer -->
		<c:import url="../template/footer.jsp"></c:import>
</body>
</html>