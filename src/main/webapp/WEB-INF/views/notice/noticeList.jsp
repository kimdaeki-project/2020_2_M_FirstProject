<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board}Page</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>

	<jsp:include page="../template/slide.jsp" />

	<!-- Navigation -->
	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<form action="./${board }List">
					<div class="input-group">
						<select class="input-group-sm" id="sel1" name="kind">
							<option value="tt">글제목</option>
							<option value="wr">작성자</option>
							<option value="con">내용</option>
						</select> <input id="msg" type="text" class="form-control" name="search"
							placeholder="Additional Info">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<div>
			<table class="table table-hober">
				<tr>
					<td>글번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>작성 일시</td>
					<td>조회수</td>

				</tr>
				<c:forEach items="${list}" var="dto" varStatus="vs">
					<tr>
						<td>${dto.num}</td>
						<td><a href="./${board}Select?num=${dto.num}" id="link"> <c:catch>
									<%-- jsp 주석  --%>
									<c:forEach begin="1" end="${dto.depth}">--</c:forEach>
								</c:catch> ${dto.title}
						</a></td>
						<td>${dto.writer}</td>
						<td>${dto.regDate}</td>
						<td>${dto.hit}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div>
			<c:if test="${pager.beforeCheck}">
				<a href="./${board}List?curPage=${pager.startNum-1}&kind=${pager.kind}&search=${search}">[이전]</a>
			</c:if>

			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<a href="./${board}List?curPage=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a>
			</c:forEach>

			<c:if test="${pager.nextCheck}">
				<a href="./${board}List?curPage=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">[다음]</a>
			</c:if>
		</div>

		<c:choose>
			<c:when test="${board eq 'notice'}">
				<c:if test="${not empty member and member.id eq 'admin'}">
					<a href="./noticeWrite" class="btn btn-danger">Write</a>
				</c:if>
			</c:when>

		</c:choose>
		<c:choose>
			<c:when test="${board eq 'qna'}">
				<c:if test="${not empty member}">
					<a href="./qnaWrite" class="btn btn-danger">Write</a>
				</c:if>
			</c:when>
		</c:choose>
		<!-- Footer -->
		<c:import url="../template/footer.jsp"></c:import>

	</div>
<script type="text/javascript">
</script>
</body>
</html>