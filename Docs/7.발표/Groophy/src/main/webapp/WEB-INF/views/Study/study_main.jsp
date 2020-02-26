<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	
	#left{
		margin-left: 0px;
	}
	
	#hrleft{
		margin-left: 35px;
	}

</style>


<!-- Main content -->
  <section id="maincontent">
    <div class="container">
      <div class="row">
      	<%-- <img src="${imgPath}/group_profile/${gPhoto}.jpg" class="img-polaroid" width="260px" style="margin-bottom:35px; margin-left:30px;"> <br> --%>
    <!-- left nav -->	  
	<%@include file="../include/mygroup_left.jsp" %>
	
	<!-- end left nav -->
	<!-- end left nav -->
	<h2>&nbsp;&nbsp;&nbsp;&nbsp;최신 게시글</h2>
	<hr id="hrleft">
	<%int i = 1; %>
        <div class="span4.5">
          <!-- start article 1 -->
          <article>
          

        	  <div class="span4" id="left">
         			 <c:forEach items="${boardList}" var="dto" varStatus="i">
         			 <c:choose>
         			 <c:when test="${(i.count % 2) eq 0}"> 
         			 
			          	<div class="post-heading" >
			              <h3><a href="#"  color="black">${dto.bTitle}</a></h3>
			            </div>
			         	<div class="span4" id="left">
			                <ul class="post-meta" margin-left="1px">
			                  <li class="first"><i class="icon-calendar"></i><span>${dto.bDate}</span></li>
			                  <li><i class="icon-list-alt"></i><span><a href="#">${dto.replyCnt} 댓글</a></span></li>
			                  <li class="last"><i class="icon-pencil"></i><span><a href="#">${dto.uId}</a></span></li>
			                </ul>
			                <div class="clearfix">
			                </div>
			                <p>
			                  ${dto.bContent}
			                </p>
				                <a href="/groophy/board/read${pageMaker.makeSearch(pageMaker.keydto.page)}&bIndex=${dto.bIndex}">
				               			 <button class="btn btn-small btn-success" type="button">더보기</button>
				                </a>
			                <p><p><p><br>
			             </div>
			             
			           </c:when>
			             </c:choose>
	            	 </c:forEach>
	           </div>
	        </article>
	     </div>
            
            
            
    
          <div class="span4.5">
          <!-- start article 1 -->
          <article>
          

        	  <div class="span4" id="left">
         			 <c:forEach items="${boardList}" var="dto" varStatus="i">
         			 <c:choose>
         			 <c:when test="${(i.count % 2) ne 0}"> 
         			 
			          	<div class="post-heading" >
			              <h3><a href="#"  color="black">${dto.bTitle}</a></h3>
			            </div>
			         	<div class="span4" id="left">
			                <ul class="post-meta" margin-left="1px">
			                  <li class="first"><i class="icon-calendar"></i><span>${dto.bDate}</span></li>
			                  <li><i class="icon-list-alt"></i><span><a href="#">${dto.replyCnt} 댓글</a></span></li>
			                  <li class="last"><i class="icon-pencil"></i><span><a href="#">${dto.uId}</a></span></li>
			                </ul>
			                <div class="clearfix">
			                </div>
			                <p>
			                  ${dto.bContent}
			                </p>
				                <a href="/groophy/board/read${pageMaker.makeSearch(pageMaker.keydto.page)}&bIndex=${dto.bIndex}">
				               			 <button class="btn btn-small btn-success" type="button">더보기</button>
				                </a>
			                <p><p><p><br>
			             </div>
			             
			           </c:when>
			             </c:choose>
	            	 </c:forEach>
	           </div>
	        </article>
	     </div>
          <!-- end article 1 -->
         
          
        </div>
      </div>
    </div>
  </section>
  
  <%@include file="../include/footer.jsp"%>