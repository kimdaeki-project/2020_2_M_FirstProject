<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice Write</title>
</head>
<body>
<h1>Notice Write</h1>

	<form name="form1" method="post" action="./insert.do">
		<table border="1" width="400px">
			<tr>
				<td>작성자(아이디 들어가야함)</td>
				<td><input name="writer"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="title" name="title"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text" name="content"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="확인"></td>
			</tr>
		</table>
	</form>
	
</body>
</html>