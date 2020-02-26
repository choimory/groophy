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
	
	#lefttable td { border:1px solid #E7E7E7; border-left:0px; }
	#righttable td { border:1px solid #E7E7E7; border-right:0px;}
	#leftbar {background-color:#F9F9F9; width:185px; height:185px; text-align:center; border:1px solid #E7E7E7; border-left:0px; }
	#leftbar2 {background-color:#F9F9F9; width:185px; height:400x; text-align:center; border:1px solid #E7E7E7; border-left:0px; }
	#userinfo { font-size: 16px; width:750px; padding-left:30px; border:1px solid #E7E7E7; border-right:0px;}
	#subinfo { font-size: 13px; font-color:#CFCFCF}

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
			<li><a href="/groophy/study/gotomanage">그룹원관리</a></li>
			<li class="active"><a href="/groophy/study/gotogroupinfo">길드정보관리</a></li>
			<li><a href="/groophy/study/gotoinputlocation">모임장소설정</a></li>
		</ul>
		<br>
		
		
		<table>
		
		<tr>
			<td id="leftbar"><strong>그룹명</strong></td>
			<td id="userinfo">${gdto.gName} <br><br><font id="subinfo">그룹명은 최종변경이후 90이후 다시 변경 가능합니다.</font><br> </td>
		</tr>
		<tr>
			<td id="leftbar"><strong>그룹지역 | 그룹분야</strong></td>
			<td id="userinfo">${gdto.gProvince}/${gdto.gCity}&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;${gdto.gCategory}<br><br><font id="subinfo">그룹지역과 분야는 최종변경이후 90이후 다시 변경 가능합니다.</font><br><br> </td>
		</tr>
		<tr>
			<td id="leftbar"><strong>스터디 요일</strong></td>
			<td id="userinfo">${gdto.gStudyOfWeek}(요일)<br><br><font id="subinfo">스터디가 진행되는 요일를 선택할 수 있습니다.</font><br> </td>
		</tr>
		<tr>
			<td id="leftbar2"><strong>그룹 프로필 사진</strong></td>
			<td id="userinfo"><br><img src="${imgPath}/group_profile/${gdto.gPhoto}.jpg" width="250px" height="100px"/><br><font id="subinfo">그룹을 대표하는 프로필사진을 설정할 수 있습니다.</font><br><br> </td>
			
		</tr>
		<tr>
			<td colspan="2" align="right" height="70px">
			
				<button type="button" class="btn btn-primary"data-toggle="button"
				onclick="location.href='/groophy/group/modify?gIndex=${memberStatDTO.gIndex}'">그룹정보수정</button>
				<button type="button" class="btn btn-danger" data-toggle="button"
								onclick="location.href='/groophy/group/delete'">그룹폐쇄</button>
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