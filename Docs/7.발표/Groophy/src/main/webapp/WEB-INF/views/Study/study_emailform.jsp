<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="../include/header.jsp"%>

<style>
	.groophy_container{
		margin-bottom: 20px;
	}
	#foo td { padding:10px; border:1px solid #E7E7E7; }
	#emailget { font-size: 12px;}
	#subtitle { font-size: 18px;}
	#subtitle2 { font-size: 18px; background-color:#F9F9F9; text-align:center;}
</style>


<!-- Main content -->
  <section id="maincontent">
    <div class="container">
      <div class="row">
   
    <!-- left nav -->	  
	<%@include file="../include/mygroup_left.jsp" %>
	<!-- end left nav -->
	
         <!-- start article -->
         <form action="sendemail" method="post" enctype="multipart/form-data">
        	<div class="span3">
	        	<table id="foo" style="border-collapse:collapse" width="275px">
		        	<tr>
		        		<td id="subtitle">
		        			수신자 선택
		        		</td>
		        	</tr>
		        	<tr>
		        		<td id="emailget">
		        		<c:forEach items="${emailmap}" var="emailmap">
		        			<label class="checkbox inline"> <input type="checkbox" name="to" id="inlineCheckbox1" value="${emailmap.EMAIL}"> ${emailmap.NICKNAME}(${emailmap.EMAIL}) </label><br>
		        		</c:forEach>
		        		</td>
		        	</tr>
	        	</table>
         	</div>
         	<div class="span6">
				<table id="foo" style="border-collapse:collapse" width="800px">
		        	<tr>
		        		<td id="subtitle">
		        		제목<br><br>
		        		<input type="text"class="span8" name="etitle">
		        		</td>
		        	</tr>
		        	<tr>
		        		<td id="subtitle">
		        		첨부파일<br><br>
		        		 <input id="mailAttachment" type="file" name="attachFileObj" size="60"/>
		        		</td>
		        	</tr>
		        	<tr>
		        		<td id="subtitle">
		        		내용<br><br>
		        		 <textarea rows="19" class="span8" name="etext"></textarea>
		        		 <input type="submit" class="btn btn-large btn-block btn-color" value="전송">
		        		</td>
		        	</tr>
	        	</table>                  
			</div>	   
			</form>  
          <!-- end article -->
      </div>
    </div>
  </section>
  
  <%@include file="../include/footer.jsp"%>