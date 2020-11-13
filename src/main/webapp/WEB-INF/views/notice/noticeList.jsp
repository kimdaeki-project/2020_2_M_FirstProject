<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeList Page</title>

<style type="text/css">
	.slide{
	height: 450px;
	width: 100%;
}
.best{
	height: 50px;
	width: 50px;
}
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

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">


<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>

<h2>NoticeList Page</h2>

 <!-- Navigation -->
 <c:import url="../template/header.jsp"></c:import>
 <!-- Footer -->
 <c:import url="../template/footer.jsp"></c:import>


<input type="button" value="글쓰기" onclick="location.href='/notice/noticeWrite.do'">
<table border="1" width="700px">
	<tr>
		<td>글번호</td>
		<td>아이디</td>
		<td>제목</td>
		<td>본문</td>
		<td>날짜</td>
		<td>조회수</td>
	</tr>


<c:forEach var="row" items="${items}">
<!-- row는 개별값 items은 전체리스트 -->

	<tr>
		<td>${row.bno}</td>
		<td>${row.writer}</td>
		<td>${row.title}</td>
		<td>${row.content}</td>
		<td><fmt:formatDate value="${row.regDate}" pattern="yyyy-MM-dd HH:mm:ss" />
		<td>${row.viewcnt}</td>
	</tr>

 </c:forEach>


</body>
</html>