<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
<style>
	.groophy_container{
		margin-bottom: 20px;
	}

	th.th-center{
		text-align: center;
	}
	td.td-center{
		text-align: center;
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

        <table class="table">	
        <thead>
        	<th class="th-center" width="15%">아이디</th><th class="th-center" width="15%">닉네임</th>
        	<th class="th-center" width="10%">출석률</th><th class="th-center" width="11%">스터디수행률</th><th class="th-center"  width="49%">자기소개</th>
        </thead>
        
         <c:forEach var="lineup" items="${lineup}">
         	<c:set var="check" value="${lineup.CHECKSUCCESS/lineup.CHECKCOUNT*100}"></c:set>
        	<c:set var="study" value="${lineup.STUDYSUCCESS/lineup.STUDYCOUNT*100}"></c:set>
        	<c:set var="check2" value="${check+((check%1>0.5)?(1-(check%1))%1:-(check%1))}"></c:set>
        	<c:set var="study2" value="${study+((study%1>0.5)?(1-(study%1))%1:-(study%1))}"></c:set>
        	

		        <tr>
		        	<td class="td-center">${lineup.MEMBER_ID}</td><td class="td-center">${lineup.NICKNAME}</td><td class="td-center">${check2}%</td>
		        	<td class="td-center">${study2}%</td><td class="td-center">${lineup.MEMBER_INTRODUCE}</td>
		        </tr>
         </c:forEach>
        </table>

          <!-- end article 1 -->
         
          
        </div>
      </div>
    </div>
  </section>
  
  <%@include file="../include/footer.jsp"%>