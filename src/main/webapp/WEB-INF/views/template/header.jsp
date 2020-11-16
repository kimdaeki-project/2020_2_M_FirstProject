<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="index.html">Personal Training</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.html">Search</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/notice/noticeList">Notice</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="post.html">Q&A</a>
          </li>
          <c:choose>
          <c:when test="${ not empty member}">
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/member/memberPage">member</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/member/memberLogout">Logout</a>
          </li>
          </c:when>
          <c:otherwise>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/member/memberLogin">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/member/memberAgrement">Sign up</a>
          </li>
          </c:otherwise>
          </c:choose>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Header -->
<header class="slider_section">
        <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="slide" src="${pageContext.request.contextPath}/resources/img/main/fc_16.jpg" alt="First slide">
                    
                </div>
                <div class="carousel-item">
                    <img class="slide" src="${pageContext.request.contextPath}/resources/img/main/fc_main.png" alt="Second slide">
                    <div class="container">
                        
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="slide" src="${pageContext.request.contextPath}/resources/img/main/fc_slide.jpg" alt="Third slide">
                    
                </div>
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
        </div>

    </header>
    <!-- 로그인 페이지	  -->
