<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <h2>qna Write Form</h2>
  <form id="frm" action="./qnaUpdate" method="post" enctype="multipart/form-data">
  	<div class="form-group" hidden="">
      <label for="title">num</label>
      <input type="text" class="form-control" id="num" placeholder="Enter Title" name="num" value=${qna.num }>
    </div>
  
    <div class="form-group">
      <label for="title">Title:</label>
      <input type="text" class="form-control" id="title" placeholder="Enter Title" name="title" value=${qna.title }>
    </div>
    
    <div class="form-group">
      <label for="writer">Writer:</label>
      <input type="text" class="form-control"  value="${qna.writer}" id="writer" placeholder="Enter Writer" name="writer" readonly="readonly">
    </div> 
    
     <div class="form-group">
      <label for="contents">Contents:</label>
      <textarea class="form-control" rows="20" cols="30" id="contents" name="contents" >${qna.contents}</textarea>
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
</body>
</html>