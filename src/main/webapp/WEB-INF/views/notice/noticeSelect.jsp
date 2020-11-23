<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice View</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


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

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

<c:import url="../template/bootStrap.jsp"></c:import>

</head>
<body>

<!-- Navigation -->
 <c:import url="../template/header.jsp"></c:import>


<div class="container">
<table class="table table-hober">
   <tr>
        <td>글번호</td>
        <td>작성자</td>
        <td>제목</td>
        <td>내용</td>
        <td>작성 일시</td>
        <td>조회수</td>
     </tr>
     <tr>
        <td>${dto.num}</td>
        <td>${dto.writer}</td>
        <td>${dto.title}</td>
        <td>${dto.contents}</td>
        <td>${dto.regDate}</td>
        <td>${dto.hit}</td>
     </tr>
</table>
<c:choose>
<c:when test="${board eq 'notice'}">
 <c:if test="${not empty member and member.id eq 'admin'}">
<a href="./${board}Update?num=${dto.num}"><input type="button" id="upbtn"  class="btn btn-primary member" value="update"></a>
<a href="./${board}Delete?num=${dto.num}"><input type="button" id="debtn"  class="btn btn-danger member" value ="delete"></a>
</c:if>
</c:when>
</c:choose>
<c:choose>
<c:when test="${board eq 'qna'}">
 <c:if test="${not empty member and member.id eq dto.writer}">	
<a href="./${board}Update?num=${dto.num}"><input type="button" id="upbtn"  class="btn btn-primary member" value="update"></a>
<a href="./${board}Delete?num=${dto.num}"><input type="button" id="debtn"  class="btn btn-danger member" value ="delete"></a>
</c:if>
<c:if test="${not empty member and member.id eq 'admin'}">	
<a href="./${board}Reply?num=${dto.num}"><input type="button" id="rebtn"  class="btn btn-primary admin" value="reply"></a>
</c:if>
</c:when>
</c:choose>
</div>
<script type="text/javascript">
   var writer =${dto.writer};
   var idCheck= ${member.id};
   $("#upbtn").click(function(){
		location.href="./noticeUpdate?num=${dto.num}";
		});
	$("#debtn").click(function(){
		location.href="./noticeDelete?num=${dto.num}";
		});
   if(writer!=idCheck){
         $(".member").remove();
      }
   if(idCheck!='admin'){
      $(".admin").remove();
      }
</script>

 <!-- Footer -->
 <c:import url="../template/footer.jsp"></c:import>

</body>
</html>