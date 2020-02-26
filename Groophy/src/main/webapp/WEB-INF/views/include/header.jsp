<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <!-- <title>Serenity - Modern bootstrap website template</title>-->
  <title> groophy - ${title} </title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  
   <!-- spring url -->
  <spring:url value="/resources" var="resourcesPath" />
  <spring:url value="/resources/assets/css" var="cssPath" />
  <spring:url value="/resources/assets/js" var="jsPath" />
  <spring:url value="/resources/assets/ico" var="icoPath" />
  <spring:url value="/resources/assets/img" var="imgPath" />
  <spring:url value="/resources/assets/color" var="colorPath" />
   
   <!-- 
  <spring:url value="/resources/assets/css/bootstrap.css" var="bootstrap" />
  <spring:url value="/resources/assets/css/bootstrap-responsive.css" var="resboot" />
  <spring:url value="/resources/assets/css/docs.css" var="docs" />
  <spring:url value="/resources/assets/css/style.css" var="style" />
  <spring:url value="/resources/assets/js/google-code-prettify/prettify.css" var="prettify" />
  <spring:url value="/resources/assets/color/default.css" var="cssdefault" />
  
  <spring:url value="/resources/assets/ico/favicon.ico" var="favicon" />
  <spring:url value="/resources/assets/ico/apple-touch-icon-144-precomposed.png" var="icon-144" />
  <spring:url value="/resources/assets/ico/apple-touch-icon-114-precomposed.png" var="icon-114" />
  <spring:url value="/resources/assets/ico/apple-touch-icon-72-precomposed.png" var="icon-72" />
  <spring:url value="/resources/assets/ico/apple-touch-icon-57-precomposed.png" var="icon-57" />
  
  <spring:url value="/resources/assets/img/logo.png" var="logopng" />
   -->
   
  <!-- styles -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600,700" rel="stylesheet">
  <link href="${cssPath}/bootstrap.css" rel="stylesheet">
  <link href="${cssPath}/bootstrap-responsive.css" rel="stylesheet">
  <link href="${cssPath}/docs.css" rel="stylesheet">
  <link href="${cssPath}/prettyPhoto.css" rel="stylesheet">  
  <link href="${jsPath}/google-code-prettify/prettify.css" rel="stylesheet">
  <link href="${cssPath}/flexslider.css" rel="stylesheet">
  <link href="${cssPath}/sequence.css" rel="stylesheet">
  <link href="${cssPath}/style.css" rel="stylesheet">
  <link href="${colorPath}/default.css" rel="stylesheet">

  <!-- fav and touch icons --> 
  <link rel="shortcut icon" href="${icoPath}/favicon.ico">
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${icoPath}/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${icoPath}/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${icoPath}/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="${icoPath}/apple-touch-icon-57-precomposed.png">
</head>

<!-- main.jsp -->
<c:choose>
	<c:when test="${main ne null}">
<body>
	</c:when>
	<c:otherwise>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
	</c:otherwise>
</c:choose>
<!-- end main.jsp -->

  <header>
    <!-- Navbar
    ================================================== -->    
    <!--select nav -->
    <c:choose>
    	<c:when test="${topMenu eq 'Home' }">
    		<c:set var="home" value="active" />
    	</c:when>
    	<c:when test="${topMenu eq 'groophy' }">
    		<c:set var="groophy" value="active" />
    	</c:when>
    	<c:when test="${topMenu eq 'search' }">
    		<c:set var="search" value="active" />
    	</c:when>
    	<c:when test="${topMenu eq 'mygroup' }">
    		<c:set var="mygroup" value="active" />
    	</c:when>
    	<c:when test="${topMenu eq 'customer' }">
    		<c:set var="customer" value="active" />
    	</c:when>
    	<c:otherwise>
    		<c:set var="menu" value="" />
    	</c:otherwise>
    </c:choose>
	<!--end select  -->
	
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
      	<div class="container">
      	</div>
        <div class="container">
          <!-- logo -->         
          <a class="brand logo" href="/groophy/" > <!-- margin-top:35px; -->
			<img src="${logopng}" alt="" />
			</a>
          <!-- end logo -->
          
          <!-- login bar -->
          <div class="groophy_member" style="float:right; margin-left:3%; margin-top:3%;">
	          <c:choose>
		          <c:when test="${memberInfoDTO ne null}">
		          	<a href="/groophy/logout?uId=${uId}" class="muted">로그아웃 </a>|
		        	<a href="/groophy/member_info" class="muted">회원정보</a>    
		          </c:when>
		          <c:otherwise>	  
		        	　<a href="/groophy/login" class="muted">로그인 </a>|
		        	<a href="/groophy/join" class="muted">회원가입</a>
		          </c:otherwise>
	          </c:choose>
	      </div>
	      <!-- end login bar -->
	        
          <!-- top menu -->          
          <div class="navigation">
            <nav>
              <ul class="nav topnav">
                <li class="dropdown ${home}">
                  <a href="/groophy/">Home</a>
                </li>
                <!-- 
                <li class="dropdown ${groophy}">
                  <a href="#">groophy</a>
                  <ul class="dropdown-menu">
                    <li><a href="/groophy/groophy">사이트소개</a></li>
                    <li><a href="/groophy/sitemap">사이트맵</a></li>              
               	  </ul>
                </li>
                 -->
                <li class="dropdown ${search}">                
                  <a href="/groophy/search_main">그룹 검색</a>
                </li>
                <li class="dropdown ${mygroup}">
                  <a href="/groophy/study/">MY그룹</a>
                  <ul class="dropdown-menu">
                    <li><a href="/groophy/study/">그룹홈</a></li>
                    <li class="dropdown"><a href="/groophy/board/list">그룹게시판</a>
                      <!-- <ul class="dropdown-menu sub-menu">
                        <li><a href="#">출석게시판</a></li>
                        <li><a href="/groophy/board/list">자유게시판</a></li>
                      </ul> -->
                    </li>
                    <!-- <li><a href="pricingtable.html">화상채팅</a></li> -->
                    <li><a href="/groophy/study/gotocalendar">달력</a></li>
                    <li><a href="/groophy/study/gotomap">지도</a></li>
                    <li><a href="/groophy/study/gotoemail">메일</a></li>
                    <li><a href="/groophy/study/gotomemberlist">참여명단</a></li>
                  </ul>
                </li> 
                <!-- 
                <li class="dropdown ${membership}">
                  <a href="#">회원메뉴</a>
                  <ul class="dropdown-menu">
                  	<li><a href="/groophy/login">로그인</a></li>
                  	<li><a href="/groophy/join">회원가입</a></li>
                    <li><a href="/groophy/logout">로그아웃</a></li>
                    <li><a href="/groophy/member_info">회원정보</a></li>                 
                  </ul>
                </li>
                 -->
                <li class="dropdown ${customer}">
                  <a href="#">고객센터</a>
                  <ul class="dropdown-menu">
                  	<li><a href="/groophy/customer/notice/list">공지사항</a></li>
                    <!-- <li><a href="portfolio-2cols.html">FAQ</a></li>
                    <li><a href="portfolio-3cols.html">Q&A</a></li> -->                 
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
          <!-- end menu -->
        </div>
      </div>
    </div>
  </header>
   
<!-- main_animate.jsp -->
<c:choose>
	<c:when test="${main ne null}">
  <section id="intro">
    <div class="jumbotron masthead">
      <div class="container">
        <!-- slider navigation -->
        <div class="sequence-nav">
          <div class="prev">
            <span></span>
          </div>
          <div class="next">
            <span></span>
          </div>
        </div>
        <!-- end slider navigation -->
        <div class="row">
          <div class="span12">
            <div id="slider_holder">
              <div id="sequence">
                <ul>
                  <!-- Layer 1 -->
                  <li>
                    <div class="info animate-in">
                      <h2>Total Solution</h2>
                      <br>
                      <h3>The room is dedicated to study.</h3>
                      <p>
                        After years of study, Tim is now a fully-fledged architect. The room is dedicated to study.
                      </p>
                      
                    </div>
                    <img class="slider_img animate-in" src="${imgPath}/slides/sequence/img-1.png" alt="">
                    <%-- <img class="slider_img animate-in" src="${imgPath}/slides/sequence/slider1.jpg" alt=""> --%>
                  </li>
                  <!-- Layer 2 -->
                  <li>
                    <div class="info">
                      <h2>Smart and fresh</h2>
                      <br>
                      <h3>Rich of features</h3>
                      <p>
                        Lorem ipsum dolor sit amet, munere commodo ut nam, quod volutpat in per. At nec case iriure, consul recteque nec et.
                      </p>
                      
                    </div>
                    <img class="slider_img" src="${imgPath}/slides/sequence/img-2.png" alt="">
                  </li>
                  <!-- Layer 3 -->
                  <li>
                    <div class="info">
                      <h2>Far from ugly</h2>
                      <br>
                      <h3>Latest technology</h3>
                      <p>
                        Lorem ipsum dolor sit amet, munere commodo ut nam, quod volutpat in per. At nec case iriure, consul recteque nec et.
                      </p>
                      
                    </div>
                    <img class="slider_img" src="${imgPath}/slides/sequence/img-3.png" alt="">
                  </li>
                </ul>
              </div>
            </div>
            <!-- Sequence Slider::END-->
          </div>
        </div>
      </div>
    </div>
  </section>
	</c:when>
	<c:otherwise>
  <section id="subintro">
   <div class="jumbotron subhead" id="overview">
     <div class="container">
       <div class="row">
         <div class="span12">
           <div class="centered">
             <h3>${title}</h3>
             <p>
               ${explain}
             </p>
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>

	</c:otherwise>
</c:choose>
<!-- end main_animate.jsp -->

  