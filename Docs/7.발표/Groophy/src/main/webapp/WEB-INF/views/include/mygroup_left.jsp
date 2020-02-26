<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- mygroup nav -->
<!-- select mygroup nav -->
 <spring:url value="/resources/assets/ico" var="icoPath" />
<c:choose>
	<c:when test="${subMenu eq 'studyhome' }">
		<c:set var="studyhome" value="active" />
	</c:when>
	<c:when test="${subMenu eq 'studyboard' }">
		<c:set var="studyboard" value="active" />
	</c:when>
	<c:when test="${subMenu eq 'studychat' }">
		<c:set var="studychat" value="active" />
	</c:when>
	<c:when test="${subMenu eq 'studycalendar' }">
		<c:set var="studycalendar" value="active" />
	</c:when>
	<c:when test="${subMenu eq 'studymap' }">
		<c:set var="studymap" value="active" />
	</c:when>
	<c:when test="${subMenu eq 'studyquiz' }">
		<c:set var="studyquiz" value="active" />
	</c:when>
	<c:when test="${subMenu eq 'studyemail' }">
		<c:set var="studyemail" value="active" />
	</c:when>
	<c:when test="${subMenu eq 'studyregister' }">
		<c:set var="studyregister" value="active" />
	</c:when>
	<c:otherwise>
		<c:set var="menu" value="" />
	</c:otherwise>
</c:choose>
<!--end select mygroup nav -->

        <div class="span3">
        <img src="${imgPath}/group_profile/${gPhoto}.jpg" class="img-polaroid" width="260px" style="margin-bottom:35px; margin-left:0px;"> <br>
          <aside>
          
            <div class="widget">
              <!-- <form class="form-search">
                <input placeholder="Type something" type="text" class="input-medium search-query">
                <button type="submit" class="btn btn-flat btn-color">Search</button>
              </form> -->
              
            </div>
            
            <div class="widget">
              <h4>Categories</h4>
              <ul class="cat">
                <li class="${studyhome}"><a href="/groophy/study/">그룹 홈</a></li>
                <li class="${studyboard}"><a href="/groophy/board/list">그룹 게시판</a></li>
                <%-- <li class="${studychat}"><a href="#">화상채팅</a></li> --%>
                <li class="${studycalendar}"><a href="/groophy/study/gotocalendar">캘린더</a></li>
                <li class="${studymap}"><a href="/groophy/study/gotomap">지도</a></li>
                <li class="${studyemail}"><a href="/groophy/study/gotoemail">메일</a></li>
                <li class="${studyregister}"><a href="/groophy/study/gotomemberlist">참여명단</a></li>
              </ul>
            </div>
            <!-- <div class="widget">
              <h4>최근 게시글</h4>
              <ul class="recent-posts">
                <li><a href="#">Lorem ipsum dolor sit amet munere commodo ut nam</a>
                  <div class="clear">
                  </div>
                  <span class="date"><i class="icon-calendar"></i> 6 March, 2013</span>
                  <span class="comment"><i class="icon-comment"></i> 4 Comments</span>
                </li>
                <li><a href="#">Sea nostrum omittantur ne mea malis nominavi insolens</a>
                  <div class="clear">
                  </div>
                  <span class="date"><i class="icon-calendar"></i> 6 March, 2013</span>
                  <span class="comment"><i class="icon-comment"></i> 2 Comments</span>
                </li>
                <li><a href="#">Eius graece recusabo no pri odio tale quo id, mea at saepe</a>
                  <div class="clear">
                  </div>
                  <span class="date"><i class="icon-calendar"></i> 4 March, 2013</span>
                  <span class="comment"><i class="icon-comment"></i> 12 Comments</span>
                </li>
                <li><a href="#">Malorum deserunt at nec usu ad graeco elaboraret at rebum</a>
                  <div class="clear">
                  </div>
                  <span class="date"><i class="icon-calendar"></i> 3 March, 2013</span>
                  <span class="comment"><i class="icon-comment"></i> 3 Comments</span>
                </li>
              </ul>
            </div> -->
          </aside>
          
          <c:if test="${ leader==1 }">
		    <form action="/groophy/study/gotomanage">
	          <button class="btn btn-large btn-block btn-primary" type="submit">그룹관리</button>
	        </form>
   		 </c:if>
   		 
        </div>
       <!-- end mygroup nav --> 