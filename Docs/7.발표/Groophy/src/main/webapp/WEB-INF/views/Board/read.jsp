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
	<%@include file="../include/mygroup_left.jsp" %>
	<!-- end left nav -->
		
        <div class="span9">
          <!-- start article 1 -->
          <article class="blog-post">
            <div class="post-heading">
              <h3><a href="#">Article with Study Free Board</a></h3>
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
			                  남을 비방하는 글이나 욕설, 게시판 성격에 맞지 않거나 광고성 게시물은 사전 동의없이 삭제될 수 있습니다.<br>
			                  답변을 원하시는 건의 및 문의 사항은 고객센터 > 고객상담실을 이용하여 주시기 바랍니다.
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
						  <c:if test="${loginUid==boardDTO.uId }">
							<button type="submit" class="btn btn-warning" id="modifyBtn">MODIFY</button>
						    <button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button>
						  </c:if>
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
          <!-- start article 2 -->
          <article class="blog-post">
          <!--ajax  -->
        	<div class="row">
				<div class="span9">
		
					<div class="box box-success">
						<div class="box-header">
							<h3 class="box-title">ADD NEW REPLY</h3>
						</div>
						<div class="box-body">
							<label for="exampleInputEmail1">Writer</label> 
								<input class="input-block-level" type="text" id="newReplyWriter" value="${loginUid}" readonly="readonly">
							<label for="exampleInputEmail1">Reply Text</label>
								<textarea class="input-block-level" placeholder="Your comment" id="newReplyText" ></textarea>
		
						</div>
						<!-- /.box-body -->
						<div class="box-footer">
							<button type="button" class="btn btn-primary" id="replyAddBtn">ADD REPLY</button>
						</div>
					</div>
		
		
					<!-- The time line -->
					<ul class="media-list">
						<!-- timeline time label -->
						<li class="time-label" id="repliesDiv"><span class="bg-green">Replies List</span></li>
					</ul>
		
					<div class='pagination' align="center">
						<ul id="pagination">	
						</ul>
					</div>
		
				</div>
				<!-- /article2 end span9 -->
			</div>
			<!-- /.row -->
          
			<!-- Modal -->
			<div id="modifyModal" class="modal modal-primary fade" role="dialog">
			  <div class="modal-dialog">
			    <!-- Modal content-->
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title"></h4>
			      </div>
			      <div class="modal-body" data-rno>
			        <p><input type="text" id="replytext" class="input-block-level" style="text-align:left;"></p>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-warning" id="replyModBtn">Modify</button>
			        <button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
			        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- end Modal -->
        	<!-- end ajax  -->
          </article>
          <!-- end article2 -->
          
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
	getPage("/groophy/replies/" + bno +"/"+gIndex+ "/1");
	
	$("#modifyBtn").on("click", function(){
		formObj.attr("action", "modify");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
	$("#removeBtn").on("click", function(){
		formObj.attr("action", "delete");
		formObj.submit();
	});
	
	$("#goListBtn").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "list");
		formObj.submit();
	});	
	
});
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script> 

<script id="template" type="text/x-handlebars-template">
{{#each .}}
<li class="media" data-rno={{rno}}>
	<a class="pull-left" href="#">
		<img class="media-object" src="/groophy/resources/assets/img/small-avatar.png" alt="" />
	</a>
	<div class="media-body">
		<h5 class="media-heading">{{replyer}}</h5>
  		<span>{{prettifyDate regdate}}</span>
		<p>
  		{{replytext}}    
		</p>
		{{#eqReplyer replyer}}
     	<a class="btn btn-color" data-toggle="modal" data-target="#modifyModal">Modify</a>
		{{/eqReplyer}}
	</div> 
</li>
{{/each}}
</script>

<script>
	Handlebars.registerHelper("eqReplyer", function(replyer, block) {
		var accum = '';
		if(replyer=='${loginUid}'){
			accum += block.fn();
		}
		return accum;
	});
	
	Handlebars.registerHelper("prettifyDate", function(timeValue) {
		var dateObj = new Date(timeValue);
		var year = dateObj.getFullYear();
		var month = dateObj.getMonth() + 1;
		var date = dateObj.getDate();
		return year + "/" + month + "/" + date;
	});

	var printData = function(replyArr, target, templateObject) {

		var template = Handlebars.compile(templateObject.html());

		var html = template(replyArr);
		$(".media").remove();
		target.after(html);

	}

	var bno = ${boardDTO.bIndex};
	var gIndex=${boardDTO.gIndex};
	var replyPage = 1;

	function getPage(pageInfo) {

		$.getJSON(pageInfo, function(data) {
			printData(data.list, $("#repliesDiv"), $('#template'));
			printPaging(data.pageMaker, $("#pagination"));

			$("#modifyModal").modal('hide');

		});
	}

	var printPaging = function(pageMaker, target) {

		var str = "";

		if (pageMaker.prev) {
			str += "<li><a href='" + (pageMaker.startPage - 1)
					+ "'> << </a></li>";
		}

		for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
			var strClass = pageMaker.keydto.page == i ? 'class=active' : '';
			str += "<li "+strClass+"><a href='"+i+"'>" + i + "</a></li>";
		}

		if (pageMaker.next) {
			str += "<li><a href='" + (pageMaker.endPage + 1)
					+ "'> >> </a></li>";
		}

		target.html(str);
	};

	$("#repliesDiv").on("click", function() {

		if ($(".media-list li").size() > 1) {
			return;
		}
		getPage("/groophy/replies/" + bno +"/"+gIndex+"/1");

	});
	

	$("#pagination").on("click", "li a", function(event){
		
		event.preventDefault();
		
		replyPage = $(this).attr("href");
		
		getPage("/groophy/replies/"+bno+"/"+gIndex+"/"+replyPage);
		
	});
	

	$("#replyAddBtn").on("click",function(){
		 
		 var replyerObj = $("#newReplyWriter");
		 var replytextObj = $("#newReplyText");
		 var replyer = replyerObj.val();
		 var replytext = replytextObj.val();
		 
		  $.ajax({
				type:'post',
				url:'/groophy/replies/',
				headers: { 
				      "Content-Type": "application/json",
				      "X-HTTP-Method-Override": "POST" },
				dataType:'text',
				data: JSON.stringify({gIndex:gIndex, bno:bno, replyer:replyer, replytext:replytext}),
				error:function(xhr,status,msg){
					alert("상태값:"+status+"Http에러메시지:"+msg);
				},
				success:function(result){
					console.log("result: " + result);
					if(result == 'SUCCESS'){
						/* alert("등록 되었습니다."); */
						replyPage = 1;
						getPage("/groophy/replies/"+bno+"/"+gIndex+"/"+replyPage );
						replytextObj.val("");
					}
				}
			});
	});


	$(".media-list").on("click", ".media", function(event){
		
		var reply = $(this);
		
		$("#replytext").val(reply.find('.media-body p').text());
		/* $(".modal-title").html(reply.attr("data-rno")); */
		
	});
	
	

	$("#replyModBtn").on("click",function(){
		  var rno = $(".media").attr("data-rno");
		  var replytext = $("#replytext").val();
		  
		  $.ajax({
				type:'put',
				url:'/groophy/replies/'+rno+'/'+gIndex,
				headers: { 
				      "Content-Type": "application/json",
				      "X-HTTP-Method-Override": "PUT" },
				data:JSON.stringify({replytext:replytext}), 
				dataType:'text', 
				success:function(result){
					console.log("result: " + result);
					if(result == 'SUCCESS'){
						/* alert("수정 되었습니다."); */
						getPage("/groophy/replies/"+bno+"/"+gIndex+"/"+replyPage );
					}
			}});
	});

	$("#replyDelBtn").on("click",function(){
		  var rno = $(".media").attr("data-rno");
		  var replytext = $("#replytext").val();
		  
		  $.ajax({
				type:'delete',
				url:'/groophy/replies/'+rno+'/'+gIndex,
				headers: { 
				      "Content-Type": "application/json",
				      "X-HTTP-Method-Override": "DELETE" },
				dataType:'text', 
				success:function(result){
					console.log("result: " + result);
					if(result == 'SUCCESS'){
						/* alert("삭제 되었습니다."); */
						getPage("/groophy/replies/"+bno+"/"+gIndex+"/"+replyPage );
					}
			}});
	});
	
</script>
