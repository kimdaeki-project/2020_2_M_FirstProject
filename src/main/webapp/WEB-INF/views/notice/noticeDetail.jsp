<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice Detail</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

$(function() {
	// 수정 버튼 클릭
	$("#btnUpdate").click(function(){
		document.form1.action="update.do";
		document.form1.submit();
	});
	// 삭제버튼 클릭
	$("#btnDelete").click(function() {
		if (confirm("삭제하시겠습니까?")) {
			document.form1.action="delete.do";
			document.form1.submit();
		}
	});
	// 목록 버튼 클릭
	$("#btnList").click(function(){
		document.form1.action="noticeList.do";
		document.form1.submit();
	});
});

</script>
</head>
<body>

<h2>공지사항 보기 (수정 및 삭제)</h2>
	<form name="form1" method="post">
		<table border="1" width="400px">
			<tr>
				<td>No.</td>
				<td><input name="bno" value="${dto.bno}" readonly></td>
			</tr>
		
			<tr>
				<td>작성자</td>
				<td><input name="writer" value="${dto.writer}" readonly></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name="title" value="${dto.title}"></td>
			</tr>
			<tr>
				<td>본문</td>
				<td><input name="content" value="${dto.content}"></td>
			</tr>


			<tr>
				<td colspan="2" align="center">
				<input type="button" value="수정" id="btnUpdate">
				<input type="button" value="삭제" id="btnDelete">
				<input type="button" value="목록으로" id="btnList">
				<div style="color: red">${message}</div>
				</td>
			</tr>			
		</table>
	</form>


</body>
</html>