<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  
<div class="container">
  <h3>Notice Select Page</h3>
  <h3 id="num">${dto.num}</h3>
  <h3>Title : ${dto.title}</h3>
  <h3>Writer : ${dto.writer}</h3>
  <h3>Contents : ${dto.contents}</h3>
  <input type="button" title="${dto.num}" value="Delete" class="btn btn-warning" id="del">
  <input type="button" class="btn btn-primary" value="Update" id="update">
</div>

<script type="text/javascript">
	//$("css선택자").action();
	$("#update").click(function() {
		location.href="./noticeUpdate?num=${dto.num}";
	});
	
	$("#del").click(function() {
		//var num = $("#num").html();
		var num = $(this).attr("title");
		alert(num);
		location.href="./noticeDelete?num="+num;
	});

</script>

</body>
</html>