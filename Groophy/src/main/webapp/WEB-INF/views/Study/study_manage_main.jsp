<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="../include/header.jsp"%>
<%@include file="../include/subhead2.jsp"%>

 <!-- spring url -->
  <spring:url value="/resources" var="resourcesPath" />
  <spring:url value="/resources/assets/css" var="cssPath" />
  <spring:url value="/resources/assets/js" var="jsPath" />
  <spring:url value="/resources/assets/ico" var="icoPath" />
  <spring:url value="/resources/assets/img" var="imgPath" />
  <spring:url value="/resources/assets/color" var="colorPath" />
  
<style>
	.groophy_container{
		margin-bottom: 20px;
	}

</style>

<!-- Main content -->
  <section id="maincontent">
    <div class="container">
      <div class="row">
   
    <!-- left nav -->	  
	<%@include file="../include/mygroup_left.jsp" %>
	<!-- end left nav -->
	
        <div class="span9">
          <!-- start article 1 -->
          <article class="blog-post">
          	<img src="${imgPath}/mainphoto/${fName}" alt="asd" width="1300" height="220"/>
          </article>
          <article>
          	그룹 게시판 글 몇개
          </article>
          <!-- end article 1 -->
         
          
        </div>
      </div>
    </div>
  </section>
  
  <%@include file="../include/footer.jsp"%>