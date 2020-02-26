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
           <li><a href="/groophy/admin/gotoban">회원 밴</a></li> <li  class="active"><a href="/groophy/admin/gotoclose">그룹 강제 폐쇄</a></li> </ul>
          
          
          <div class="groophy_search_content">
						<table id="grouplist" class="table table-hover">
							<thead></thead>
							<tbody>
								<c:choose>
									<c:when test="${groupDTOList eq null or groupDTOList eq '' }">
										<h4 align="center">검색결과가 없습니다</h4>
									</c:when>
									<c:otherwise>
										<c:forEach var="groupDTO" items="${lgdto}">
											<tr>
												<td style="text-align: center;">
													<h5>${groupDTO.gTitle}</h5> <i class="icon-home"></i>지역 :
													${groupDTO.gProvince} ${groupDTO.gCity} │ <i
													class="icon-calendar"></i> 예상기간 : ${groupDTO.gStartDate} ~
													${groupDTO.gEndDate} │ <i class="icon-certificate"></i>분야 :
													${groupDTO.gCategory} │ <i class="icon-certificate"></i>난이도
													: ${groupDTO.gDifficulty} │ <i class="icon-user"></i>참여인원 :
													${groupDTO.gCurrentNumber}/${groupDTO.gMaximumNumber}
													<div style="float: right;">
														<button type="button" class="btn btn-success"
															onclick="location.href='/groophy/group/main?gIndex=${groupDTO.gIndex}'">
															<i class="icon-home"></i>입장
														</button>
													</div>
												</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
						<!-- pagination -->
				          <div class="pagination" align="center">
				            <ul>
				              <c:if test="${pageMaker.prev }">
				              	<li><a href="search${pageMaker.groupSearch(pageMaker.startPage-1) }">Prev</a></li>
				              </c:if>
				              <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				              	<li <c:out value="${pageMaker.keydto.page == idx?'class =active':''}"/>>
				              		<a href="search${pageMaker.groupSearch(idx)}">${idx}</a>
				              	</li>
				              </c:forEach>
				              <c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
				              	<li><a href="search${pageMaker.groupSearch(pageMaker.endPage+1) }">Next</a></li>
				              </c:if>
				            </ul>
				       
				          </div>
				          <!-- end pagination -->
						<div id="selectCity">
						</div>
						<!-- end of page div -->
					</div>
					<!-- end of search content -->
					
					
          </article>
          
          <!-- end article 1 -->
         
          
        </div>
      </div>
    </div>
  </section>
  
  <%@include file="../include/footer.jsp"%>