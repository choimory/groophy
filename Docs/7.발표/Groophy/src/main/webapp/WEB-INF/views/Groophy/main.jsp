<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%-- <%@ include file="../include/header2.jsp" %>
<%@ include file="../include/main_header.jsp"%> --%>

<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ include file="../include/header.jsp" %>
  <section id="maincontent">
    <div class="container">
      <div class="row">
        <div class="home-posts">
          <div class="span7">
          	<i class="icon-circled icon-32 icon-bolt left"></i>        	         	  
	        <h3>최근 스터디</h3>
	        <c:forEach items="${groupDTOList}" var="groupDTO">
	        <!-- study1 -->
	          <div class="span3">
	            <div class="post-image">
	              <a href="/groophy/group/main?gIndex=${groupDTO.gIndex }">
						<img src="${imgPath}/dummies/blog1.jpg" alt="" class="img-polaroid" style="text-align:center;">
						</a>
	            </div>
	            <div class="entry-meta">
	              <a href="#"><i class="icon-square icon-48 icon-pencil left"></i></a>
	              <!-- <span class="date">Sep 17 <br>
						2013</span> -->
	            </div>
	            <!-- end .entry-meta -->
	            <div class="entry-body">
	              <a href="/groophy/group/main?gIndex=${groupDTO.gIndex }">
	                <h5 class="title">${groupDTO.gTitle}</h5>
	              </a>
	              <p>
	                ${groupDTO.uId}
	              </p>
	            </div>
	            <!-- end .entry-body -->
	            <div class="clear">
	            </div>
	          </div>
	          <!-- end study1 -->
	        </c:forEach>
	               	          
	      </div>
          <div class="span5">
          	<i class="icon-circled icon-32 icon-edit left"></i>
	        <h3>그루피 소식</h3>
	          <!-- notice -->
	          <div class="span5">
	            <div class="post-image">
	            </div>
	            <c:forEach items="${list}" var="noticeDTO">
	            <div class="entry-body2">
	              <table border="0" cellpadding="0" cellspacing="0">
	              <tr>
	              	<td width="82%">
	              	  <a href="/groophy/customer/notice/read?page=1&pageSize=10&keyField=t&keyWord&bIndex=${noticeDTO.bIndex}">
		              <c:set var="bTitle" value="${noticeDTO.bTitle }"/>
		                <h6 class="title">${fn:substring(bTitle,0,30)}</h6>
		              </a>
		            </td>
	              	<td><h6>${noticeDTO.bDate}</h6></td>
	              </tr>
	              </table>
	                                          
	            </div>	            
	            <!-- end .entry-body -->
	            </c:forEach>
	            <div class="clear">
	            </div>
	          </div>
	          <!-- end notice -->
	      </div>
	      
                    
        </div><!-- end home-posts -->
      </div><!-- end row -->
    </div><!-- container -->
  </section>
<%@ include file="../include/footer.jsp"%>
<script>
	var result = '${msg}';

	if (result != '') {
		alert(result);
	}
</script>
<!-- <<style>
.entryhover{
	cursor: pointer;
	color:red;
}
</style>
<script>
$(document).ready(function(){
	$('.entry-body2 a').hover(function(){
		$(this).addClass('entryhover');
	},function(){
		$(this).removeClass('entryhover');
	});
});
</script> -->