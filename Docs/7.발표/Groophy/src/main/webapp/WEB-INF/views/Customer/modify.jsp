<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="true"%>

<%@include file="../include/header.jsp"%>

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
              	<form role="form" method="post">
              	
				<input type='hidden' name='page' value="${keydto.page}"> 
				<input type='hidden' name='perSize' value="${keydto.pageSize}">
				<%-- <input type='hidden' name='keyField' value="${keydto.keyField}">
				<input type='hidden' name='keyWord' value="${keydto.keyWord}"> --%>

				<div class="box-body">

					<div class="form-group">
						<label for="exampleInputEmail1">BNO</label>
						<input type="text" name='bIndex' class="input-block-level" value="${boardDTO.bIndex} 게시글 수정" readonly="readonly">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Title</label>
						<input type="text" name='bTitle' class="input-block-level" value="${boardDTO.bTitle}">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Content</label>
						<textarea class="input-block-level" name="bContent" rows="3">${boardDTO.bContent}</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Writer</label>
						<input type="text" name="uId" class="input-block-level" value="${boardDTO.uId}" readonly="readonly">
					</div>
				</div>
				</form>
				<div class="box-footer">
					<button type="submit" class="btn btn-primary">MODIFY</button>
					<button type="submit" class="btn btn-warning">CANCEL</button>
				</div>
              </div><!-- span9 -->
              
            </div>
            <!-- end row -->
          
          </article>
          <!-- end article 1 -->
          
        </div>
        <!--end span9  -->     
      </div>
    </div>
  </section>
<%@include file="../include/footer.jsp"%>  

<script>
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);

		$(".btn-warning").on("click",function() {
			self.location = "list?page=${keydto.page}&pageSize=${keydto.pageSize}"
					+ "&keyField=${keydto.keyField}&keyWord=${keydto.keyWord}";
		});
		$(".btn-primary").on("click",function() {
			formObj.submit();
		});
	});
</script>


