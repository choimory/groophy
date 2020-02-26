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
	
	#lefttable td { border:1px solid #E7E7E7; border-left:0px; }
	#righttable td { border:1px solid #E7E7E7; border-right:0px;}
	#leftbar {background-color:#F9F9F9; width:185px; height:185px; text-align:center; border:1px solid #E7E7E7; border-left:0px; }
	#adminbar {background-color:#F9F9F9; width:185px; height:400px; text-align:center; border:1px solid #E7E7E7; border-left:0px; }
	#leftbar2 {background-color:#F9F9F9; width:185px; height:400x; text-align:center; border:1px solid #E7E7E7; border-left:0px; }
	#userinfo { font-size: 16px; width:750px; padding-left:30px; border:1px solid #E7E7E7; border-right:0px;}
	#subinfo { font-size: 13px; font-color:#CFCFCF}

</style>


<!-- Main content -->
  <section id="maincontent">
    <div class="container">
      <div class="row">
	<!-- end left nav -->
        <div class="span11">
          <!-- start article 1 -->
          <article class="blog-post">
          <ul class="nav nav-tabs"> <li class="active"> <a href="/groophy/admin/gotomain">사이트 설정|어드민 관리</a> </li>
           <li><a href="/groophy/admin/gotoban">회원 밴</a></li> <li><a href="/groophy/admin/gotoclose">그룹 강제 폐쇄</a></li> </ul>
          
         <table>
		
			<tr>
				<td id="adminbar" height="300px;"><strong>어드민 목록</strong></td>
				<td id="userinfo"><strong>[최고어드민]</strong><br><br> 본명 : 이경의 | 아이디 : qf2ff2d13 <br><br><strong>[서브어드민]</strong><br><br>본명 : 경이의 | 아이디 : 23df432f <br>
				본명 : 경의이 | 아이디 : f3w893uj <br>본명 : 안시성 | 아이디 : 345wf22 <br>본명 : 홍길동 | 아이디 : h576j67 <br><br>
				<font id="subinfo">어드민 관리는 최고어드민만 가능합니다.</font><br><br><button class="btn">관리하기</button> </td>
			</tr>
			<tr>
				<td id="leftbar"><strong>공지사항 작성</strong></td>
				<td id="userinfo">공지사항 작성<br>
				<br><font id="subinfo">공지사항 게시판에 올라가는 공지사항을 작성 할 수 있습니다.</font><br><br><button class="btn">작성화면으로 이동</button> </td>
			</tr>
			<tr>
				<td id="leftbar"><strong>회원 이메일 전송</strong></td>
				<td id="userinfo">발신 이메일 : groophy123@google.com<br><br><font id="subinfo">설정한 범위의 회원들에게 단체 메일을 보낼 수 있습니다.</font><br><br><button class="btn">범위설정및 발송하기</button> </td>
			</tr>
			<tr>
				<td id="leftbar2"><strong>사이트 대문사진</strong></td>
				<td id="userinfo"><br><img src="${imgPath}/dummies/work8.jpg" width="500px" height="100px"/><br>
				<font id="subinfo">사이트 대문사진을 설정할 수 있습니다.</font><br><br><button class="btn">관리하기</button> </td>
				
			</tr>
		</table>
          
          </article>
          
          <!-- end article 1 -->
         
          
        </div>
      </div>
    </div>
  </section>
  
  <%@include file="../include/footer.jsp"%>