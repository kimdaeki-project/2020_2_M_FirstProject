<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">


<head>

<style type="text/css">
	.slide{
	height: 450px;
	width: 100%;
}
.best{
	height: 50px;
	width: 50px;
}
	</style>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Personal Training</title>

<c:import url="./template/bootStrap.jsp"></c:import>
</head>

<body>

  <!-- Navigation -->
  <c:import url="./template/header.jsp"></c:import>
  <!-- Main Content -->
   <c:import url="./template/section.jsp"></c:import>

  <!-- Footer -->
 <c:import url="./template/footer.jsp"></c:import>

</body>

</html>
