<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<%@include file="../include/header.jsp"%>
<style>
.bg-green{
	background-color: #00a65a;
}
.bottom_aligner {
	display: inline-block; height: 100%; vertical-align: bottom; width: 0px; 
}
</style>

<!-- Main content -->
  <section id="maincontent">
    <div class="container">
      <div class="row">

	<!-- left nav -->	  
	<%@include file="../include/customer_left.jsp" %>
	<!-- end left nav -->
		
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
              	<table class="table">
				<thead>
					<tr>
						<th colspan="2" style="background-color:#eeeeee;">${boardDTO.bTitle}</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-left">작성자 : ${boardDTO.uId}</td>
						<td class="text-left">게시일 : ${boardDTO.bDate}</td>
					</tr>
					<tr>
						<td colspan="2" class="minheight" height="100px">${boardDTO.bContent}</td>
					</tr>
					<tr>
						<td colspan="2" align="right">
							<!-- <button type="submit" class="btn btn-warning" id="modifyBtn">MODIFY</button>
						    <button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button> -->
						    <button type="submit" class="btn btn-primary" id="goListBtn">GO LIST </button>
						</td>
					</tr>
				</tbody>
				</table>
              </div>
              <%-- ${requestScope["javax.servlet.forward.request_uri"]} --%>
            </div>
          </article>
          <!-- end article 1 -->
          
          
        </div>
        <!--inner span9 end -->
        
      </div><!-- end row -->
    </div><!-- end container -->
  </section>

<%@include file="../include/footer.jsp"%>
  
 <form role="form" method="post">    
    <input type='hidden' name='bIndex' value ="${boardDTO.bIndex}">
    <input type='hidden' name='page' value ="${keydto.page}">
    <input type='hidden' name='pageSize' value ="${keydto.pageSize}"> 
    <input type='hidden' name='keyField' value="${keydto.keyField}">
	<input type='hidden' name='keyWord' value="${keydto.keyWord}">  
 </form>

<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$("#goListBtn").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "list");
		formObj.submit();
	});	
	
});
</script>
