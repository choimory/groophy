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
	<!-- end left nav -->
        <div class="span11">
          <!-- start article 1 -->
          <article class="blog-post">
          <ul class="nav nav-tabs"> <li> <a href="/groophy/admin/gotomain">사이트 설정|어드민 관리</a> </li>
           <li class="active"><a href="/groophy/admin/gotoban">회원 밴</a></li> <li><a href="/groophy/admin/gotoclose">그룹 강제 폐쇄</a></li> </ul>
          
          <div class="input-append"> <input class="span4" id="appendedInputButton" type="text"> <button class="btn" type="button">아이디 검색</button> </div>
          
          <table class="table">	
          <thead id="center">
          	<th class="th-center" width="15%">아이디</th><th class="th-center" width="15%">닉네임</th>
          	<th class="th-center" width="15%">휴대폰번호</th>
          	<th class="th-center" width="18%">이메일
          	</th><th class="th-center" width="7%">성별</th><th class="th-center" width="10%">출석률</th><th class="th-center" width="11%">스터디수행률</th>
          	<th class="th-center" width="9%">추방</th>
          </thead>
          
          
	          <tr  id="center">
	          	<td class="td-center">f23dewf1</td><td class="td-center">밴당하려고가입함</td><td class="td-center">010-1234-1234</td>
	          	<td class="td-center">banplease007@naver.com</td><td class="td-center">남성</td><td class="td-center">10%</td><td class="td-center">3%</td>
	          	<td class="td-center">
	           	<button type="button" class="btn btn-danger" onclick="location.href='/groophy/group/kick?uId=${lineup.MEMBER_ID}&gIndex=${lineup.GROUP_ID}'">회원밴</button>
	          	
	          	</td>
	          </tr>
          
          </table>
          </article>
          
          <!-- end article 1 -->
         
          
        </div>
      </div>
    </div>
  </section>
  
  <%@include file="../include/footer.jsp"%>