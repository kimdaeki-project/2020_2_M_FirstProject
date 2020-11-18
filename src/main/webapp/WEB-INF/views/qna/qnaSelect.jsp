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
  		<td>${qna.num }</td>
  		<td>${qna.writer }</td>
  		<td>${qna.contents }</td>
  		<td>${qna.title }</td>
  		<td>${qna.regDate}</td>
  		<td>${qna.hit }</td>
  	</tr>
</table>
<a><input type="button" id="upbtn"  class="btn btn-primary" value="update"></a>
<a><input type="button" id="debtn"  class="btn btn-danger" value ="delete"></a>
<a><input type="button" id="rebtn"  class="btn btn-primary" value="reply"></a>
</div>
</body>
</html>