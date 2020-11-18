<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>



<div class="container">
  <h3>notice List</h3>
  <div class="row">
  <div class="col-sm-8">
  <form action="./noticeList">
      <div class="input-group">
        <select class="input-group-sm" id="sel1" name="kind">
          <option value="tt">Title</option>
            <option value="wr">Writer</option>
          <option value="con">Contents</option>
        </select>
       <input id="msg" type="text" class="form-control" name="search" placeholder="Additional Info">
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
        <td>Num</td>
        <td>Title</td>
        <td>Writer</td>
        <td>Date</td>
        <td>Hit</td>

     </tr>
     <c:forEach items="${list}" var="dto" varStatus="vs">
<tr>
           <td>${dto.num}</td>
           <td><a href="./noticeSelect?num=${dto.num}">${dto.title}</a></td>
           <td>${dto.writer}</td>
           <td>${dto.regDate}</td>
           <td>${dto.hit}</td>
        </tr>
     
     </c:forEach>
     
  
  </table>
  </div>
  <div>
  
     <c:if test="${pager.beforeCheck}">
     <a href="./noticeList?curPage=${pager.startNum-1}&kind=${pager.kind}&search=${search}">[이전]</a>
     </c:if>
  
     <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
        <a href="./noticeList?curPage=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a>
     </c:forEach>
     
     <c:if test="${pager.nextCheck}">
     <a href="./noticeList?curPage=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">[다음]</a>
     </c:if>
  </div>
  
   <a href="./noticeWrite" class="btn btn-danger">Write</a>

   <c:choose>
     <c:when test="${board eq 'notice'}">
        <c:if test="${not empty member and member.id eq 'admin'}">        
        <a href="./noticeWrite" class="btn btn-danger">Write</a>
        </c:if>
     </c:when>
     <c:otherwise>
          <c:if test="${not empty member}">        
        <a href="./noticeWrite" class="btn btn-danger">Write</a>
        </c:if>
     </c:otherwise>   
   </c:choose>
  
     
  
</div>

</body>
</html>