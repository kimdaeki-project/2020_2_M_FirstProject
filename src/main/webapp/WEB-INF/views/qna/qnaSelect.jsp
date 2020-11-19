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
</head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<table class="table table-hober">
	<tr>
  		<td>Num</td>
  		<td>Title</td>
  		<td>Writer</td>
  		<td>Date</td>
  		<td>Hit</td>
  	</tr>
  	<tr>
  		<td>${qna.num}</td>
  		<td>${qna.writer }</td>
  		<td>${qna.contents }</td>
  		<td>${qna.title }</td>
  		<td>${qna.regDate}</td>
  		<td>${qna.hit }</td>
  	</tr>
</table>
<input type="button" id="upbtn"  class="btn btn-primary member" value="update">
<a><input type="button" id="debtn"  class="btn btn-danger member" value ="delete"></a>
<a><input type="button" id="rebtn"  class="btn btn-primary admin" value="reply"></a>
</div>
<script type="text/javascript">
	var writer = "${qna.writer}";
	var idCheck= "${member.id}";
	var num ="${qna.num}";
	$("#upbtn").click(function(){
		location.href="./qnaUpdate?num=${qna.num}";
		});
	$("#debtn").click(function(){
		location.href="./qnaDelete?num=${qna.num}";
		});
	if(writer!=idCheck){
			$(".member").remove();
		}
	if(idCheck!='admin'){
		$(".admin").remove();
		}
	
</script>
</body>
</html>