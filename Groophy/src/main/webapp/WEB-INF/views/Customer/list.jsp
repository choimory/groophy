<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="true"%>

<%@include file="../include/header.jsp"%>


  <section id="maincontent">
    <div class="container">
      <div class="row">
      
	<!-- Main content -->	  
	<%@include file="../include/customer_left.jsp" %>
		
        <div class="span9">
          <!-- start article 1 -->
          <article class="blog-post">
            <div class="post-heading">
              <h3><a href="#">Groophy Notice</a></h3>
            </div>
            <div class="row">
              <div class="span9">
                <ul class="post-meta">
                  <!-- <li class="first"><i class="icon-calendar"></i><span>March 03, 2013</span></li>
                  <li><i class="icon-list-alt"></i><span><a href="#">3 comments</a></span></li>
                  <li class="last"><i class="icon-tags"></i><span><a href="#">Design</a>, <a href="#">Blog</a>, <a href="#">Tutorial</a></span></li> -->
                </ul>
                <div class="clearfix">
                </div>
                <p>
			                  회원님과 함께하는 그루피 고객센터입니다.<br>
			                  그루피의 새로운 소식을 신속하고 정확하게 전달하겠습니다.
                </p>
                
              </div>
              <div class="span9">
              	<div class='box-body'>
					<select name="keyField" id="searchType">
						<option value="t"
							<c:out value="${keydto.keyField eq 't'?'selected':''}"/>>
							title</option>
						<option value="c"
							<c:out value="${keydto.keyField eq 'c'?'selected':''}"/>>
							Content</option>
						<option value="w"
							<c:out value="${keydto.keyField eq 'w'?'selected':''}"/>>
							Writer</option>
					</select>
					<input type="text" name='keyWord' id="search-query" value='${keydto.keyWord }'>
					<button id='searchBtn' class="btn btn-flat btn-color">Search</button>

				</div>
              </div>
              <div class="span9">
              	<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>						
						<th>제목</th>
						<th>이름</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.bIndex}</td>					
						<td class="text-left">
							<a href="read${pageMaker.makeSearch(pageMaker.keydto.page)}&bIndex=${dto.bIndex}">
								${dto.bTitle}
								<c:if test="${dto.replyCnt > 0 }">
									<strong>[ ${dto.replyCnt} ]</strong>
								</c:if>
							</a>
						</td>
						<td>${dto.uId}</td>
						<td>${dto.bDate}</td>
						<td>${dto.bViewcnt}</td>
					</tr>
				</c:forEach>
					
				</tbody>
				</table>
              </div>
              
            </div>
            <!-- end row -->
          <!-- pagination -->
          <div class="pagination" align="center">
            <ul>
              <c:if test="${pageMaker.prev }">
              	<li><a href="list${pageMaker.makeSearch(pageMaker.startPage-1) }">Prev</a></li>
              </c:if>
              <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
              	<li <c:out value="${pageMaker.keydto.page == idx?'class =active':''}"/>>
              		<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
              	</li>
              </c:forEach>
              <c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
              	<li><a href="list${pageMaker.makeSearch(pageMaker.endPage+1) }">Next</a></li>
              </c:if>
            </ul>
            <%-- <p>
            <!-- contextPath -->
            ${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath} <br>
            <!-- 현재 URI -->
            ${requestScope["javax.servlet.forward.request_uri"]}
            </p> --%>
          </div>
          <!-- end pagination -->
          
          </article>
          <!-- end article 1 -->
          
        </div>
        <!--end span9  -->     
      </div>
    </div>
  </section>
<%@include file="../include/footer.jsp"%>  

<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>

<script>
	$(document).ready(function() {
		$('#searchBtn').on("click",function(event) {
			self.location = "list"
					+ '${pageMaker.makeQuery(1)}'
					+ "&keyField="
					+ $("#searchType option:selected").val()
					+ "&keyWord=" + $('#search-query').val();
		});
		
	});
</script>


