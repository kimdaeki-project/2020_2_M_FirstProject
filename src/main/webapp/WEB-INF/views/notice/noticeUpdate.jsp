<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice Update</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">



<style type="text/css">
.slide{
	height: 450px;
	width: 100%;
}
.symbol{
	height: 40px;
	width: 50px;
}
.img-circle{
	width: 160px;
	height: 160px;
	
}
.best{
	list-style: none;
	float: left;
}
.trainer{
	float: left;
	margin-left: 10px;
}
.gym{
	float: left;
	margin-left: 10px;
}

.food{
	float: left;
	margin-left: 10px;
}

	</style>

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

<c:import url="../template/bootStrap.jsp"></c:import>

</head>
<body>

<!-- Navigation -->
 <c:import url="../template/header.jsp"></c:import>


<div class="container">
  <form id="frm" action="./noticeWrite" method="post" enctype="multipart/form-data">
  
    <div class="form-group">
      <label for="title">Title:</label>
      <input type="text" class="form-control" id="title" placeholder="Enter Title" name="title" value="${notice.title}">
    </div>
    
    <div class="form-group">
      <label for="writer">Writer:</label>
      <input type="text" class="form-control"  value="${notice.writer}" id="writer" placeholder="Enter Writer" name="writer" readonly="readonly">
    </div> 
    
     <div class="form-group">
      <label for="contents">Contents:</label>
      <textarea class="form-control" rows="20" cols="30" id="contents" name="contents" >${notice.contents}</textarea>
    </div>
    
	<input type="button" value="FileAdd" id="fileAdd" class="btn btn-info">

	<div id="files">

	</div>  
 
 
 	<div class="form-group">
 	<label></label>
    <input type="button" class="btn btn-primary form-control" value="Write" id="btn">
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
			alert("필수 항목을 입력하세요");
			}
		else{
				$("#frm").submit();
			}
		});
	

  </script>
  
</div>


 <!-- Footer -->
 <c:import url="../template/footer.jsp"></c:import>


</body>
</html>