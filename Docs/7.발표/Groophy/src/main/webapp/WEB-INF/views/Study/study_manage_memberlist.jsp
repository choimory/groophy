<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="../include/header.jsp"%>

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
	
	#center{
		text-align: center;
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
          <article>
          	<ul class="nav nav-pills">
			<li class="active"><a href="/groophy/study/gotomanage">그룹원관리</a></li>
			<li><a href="/groophy/study/gotogroupinfo">길드정보관리</a></li>
			<li><a href="/groophy/study/gotoinputlocation">모임장소설정</a></li>
		</ul>
		<br>
		
		
		
		
		<table class="table">	
          <thead id="center">
          	<th class="th-center" width="15%">아이디</th><th class="th-center" width="15%">닉네임</th>
          	<th class="th-center" width="15%">휴대폰번호</th>
          	<th class="th-center" width="18%">이메일
          	</th><th class="th-center" width="7%">성별</th><th class="th-center" width="10%">출석률</th><th class="th-center" width="11%">스터디수행률</th>
          	<th class="th-center" width="9%">추방</th>
          </thead>
          
          <c:forEach var="lineup" items="${lineup}">
         	<c:set var="check" value="${lineup.CHECKSUCCESS/lineup.CHECKCOUNT*100}"></c:set>
        	<c:set var="study" value="${lineup.STUDYSUCCESS/lineup.STUDYCOUNT*100}"></c:set>
        	<c:set var="check2" value="${check+((check%1>0.5)?(1-(check%1))%1:-(check%1))}"></c:set>
        	<c:set var="study2" value="${study+((study%1>0.5)?(1-(study%1))%1:-(study%1))}"></c:set>
	          <tr  id="center">
	          	<td class="td-center">${lineup.MEMBER_ID}</td><td class="td-center">${lineup.NICKNAME}</td><td class="td-center">${lineup.PHONE}</td>
	          	<td class="td-center">${lineup.EMAIL}</td><td class="td-center">${lineup.GENDER}</td><td class="td-center">${check2}%</td><td class="td-center">${study2}%</td>
	          	<td class="td-center">
	          	
	          	<c:if test="${lineup.MEMBER_ID ne memberInfoDTO.uId}">
	          	<button type="button" class="btn btn-danger" onclick="location.href='/groophy/group/kick?uId=${lineup.MEMBER_ID}&gIndex=${lineup.GROUP_ID}'">추방</button>
	          	</c:if>
	          	</td>
	          </tr>
	      </c:forEach>
        
          
          
          
          
          	
          </table>
          </article>
          <!-- end article 1 -->
         
          
        </div>
      </div>
    </div>
  </section>
  
  <%@include file="../include/footer.jsp"%>