<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- mygroup nav -->
<!-- select mygroup nav -->
<c:choose>
	<c:when test="${subMenu eq 'notice' }">
		<c:set var="notice" value="active" />
	</c:when>
	<c:when test="${subMenu eq 'faq' }">
		<c:set var="faq" value="active" />
	</c:when>
	<c:when test="${subMenu eq 'qna' }">
		<c:set var="qna" value="active" />
	</c:when>
	<c:otherwise>
		<c:set var="menu" value="" />
	</c:otherwise>
</c:choose>
<!--end select mygroup nav -->

        <div class="span3">
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
                <li class="${notice}"><a href="/groophy/customer/notice/list">공지사항</a></li>
                <%-- <li class="${faq}"><a href="#">FAQ</a></li>
                <li class="${qna}"><a href="#">QNA</a></li> --%>
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