<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@include file="../include/header.jsp"%>

<style>
.span2 {
	text-align: center;
}
.groophy_container {
	margin-bottom: 20px;
}

.groophy_login {
	margin-top: 30%;
	margin-bottom: 30%;
}

.search-heading{
	margin : 15px 0 30px 30px;
}

select {
	width: 140px;
}

#grouplist {
	text-align: center;
}

#search_form {
	text-align: center;
	margin : 15px 0 50px 30px;
}
</style>
<script>
/* function provinceChange(){
	var seoul=["중구",,];
	
} */
</script>
<div class="groophy_container">
	<div class="container">
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span2">
					<!--Sidebar content-->
					<%@include file="../include/left_infobar.jsp"%>
				</div>

				<div class="span10">
				<!-- 
					<div class="search-heading">
		              <h3>Total Process Solution Study Group</h3>
		            </div>
		             -->
					<!--Body content-->
					<form id="search_form" action="search" method="post" role="form"
						class="form-inline">
						<select name="gProvince" id="gProvince">
							<option>지역 선택</option>
							<option value="서울특별시"
								<c:out value="${groupKeyDTO.gProvince eq '서울특별시'?'selected':''}"/>>
								서울특별시</option>
							<option value="인천광역시"
								<c:out value="${groupKeyDTO.gProvince eq '인천광역시'?'selected':''}"/>>
								인천광역시</option>
							<option value="강원도"
								<c:out value="${groupKeyDTO.gProvince eq '강원도'?'selected':''}"/>>
								강원도</option>
							<option value="경기도"
								<c:out value="${groupKeyDTO.gProvince eq '경기도'?'selected':''}"/>>
								경기도</option>
							<option value="대전광역시"
								<c:out value="${groupKeyDTO.gProvince eq '대전광역시'?'selected':''}"/>>
								대전광역시</option>
							<option value="충청북도"
								<c:out value="${groupKeyDTO.gProvince eq '충청북도'?'selected':''}"/>>
								충청북도</option>
							<option value="충청남도"
								<c:out value="${groupKeyDTO.gProvince eq '충청남도'?'selected':''}"/>>
								충청남도</option>
							<option value="세종특별자치시"
								<c:out value="${groupKeyDTO.gProvince eq '세종특별자치시'?'selected':''}"/>>
								세종특별자치시</option>
							<option value="전라북도"
								<c:out value="${groupKeyDTO.gProvince eq '전라북도'?'selected':''}"/>>
								전라북도</option>
							<option value="광주광역시"
								<c:out value="${groupKeyDTO.gProvince eq '광주광역시'?'selected':''}"/>>
								광주광역시</option>
							<option value="전라남도"
								<c:out value="${groupKeyDTO.gProvince eq '전라남도'?'selected':''}"/>>
								전라남도</option>
							<option value="경상북도"
								<c:out value="${groupKeyDTO.gProvince eq '경상북도'?'selected':''}"/>>
								경상북도</option>
							<option value="경상남도"
								<c:out value="${groupKeyDTO.gProvince eq '경상남도'?'selected':''}"/>>
								경상남도</option>
							<option value="대구광역시"
								<c:out value="${groupKeyDTO.gProvince eq '대구광역시'?'selected':''}"/>>
								대구광역시</option>
							<option value="부산광역시"
								<c:out value="${groupKeyDTO.gProvince eq '부산광역시'?'selected':''}"/>>
								부산광역시</option>
							<option value="울산광역시"
								<c:out value="${groupKeyDTO.gProvince eq '울산광역시'?'selected':''}"/>>
								울산광역시</option>
							<option value="제주특별자치도"
								<c:out value="${groupKeyDTO.gProvince eq '제주특별자치도'?'selected':''}"/>>
								제주특별자치도</option>
						</select> 
						<select name="gCity" id="gCity">
							<option>시/구 선택</option>
						</select> 
						<select name="gCategory">							
							<option>분야 선택</option>
							<option value="학업"
								<c:out value="${groupKeyDTO.gCategory eq '학업'?'selected':''}"/>>
								학업</option>
							<option value="토익"
								<c:out value="${groupKeyDTO.gCategory eq '토익'?'selected':''}"/>>
								토익</option>
							<option value="공무원시험"
								<c:out value="${groupKeyDTO.gCategory eq '공무원시험'?'selected':''}"/>>
								공무원시험</option>
							<option value="자격증"
								<c:out value="${groupKeyDTO.gCategory eq '자격증'?'selected':''}"/>>
								자격증</option>
							<option value="프로그래밍"
								<c:out value="${groupKeyDTO.gCategory eq '프로그래밍'?'selected':''}"/>>
								프로그래밍</option>
							<option value="기타"
								<c:out value="${groupKeyDTO.gCategory eq '기타'?'selected':''}"/>>
								기타</option>
						</select> 
						<!--<select name="gDifficulty">
							<option value="all">전체</option>
							<option>상</option>
							<option>중</option>
							<option>하</option>
						</select> -->
						<button type="submit" class="btn btn-success">
							<i class="icon-search"></i>검색
						</button>
					</form>
					<div class="groophy_search_content">
						<table id="grouplist" class="table table-hover">
							<thead></thead>
							<tbody>
								<c:choose>
									<c:when test="${groupDTOList eq null or groupDTOList eq '' }">
										<h4 align="center">검색결과가 없습니다</h4>
									</c:when>
									<c:otherwise>
										<c:forEach var="groupDTO" items="${groupDTOList}">
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
						<c:choose>
						<c:when test="${search_main eq 1}">						
				          <div class="pagination" align="center">
				            <ul>
				              <c:if test="${pageMaker.prev }">
				              	<li><a href="search_main${pageMaker.groupSearchMain(pageMaker.startPage-1) }">Prev</a></li>
				              </c:if>
				              <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				              	<li <c:out value="${pageMaker.keydto.page == idx?'class =active':''}"/>>
				              		<a href="search_main${pageMaker.groupSearchMain(idx)}">${idx}</a>
				              	</li>
				              </c:forEach>
				              <c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
				              	<li><a href="search_main${pageMaker.groupSearchMain(pageMaker.endPage+1) }">Next</a></li>
				              </c:if>
				            </ul>				       
				          </div>
						</c:when>
						<c:otherwise>
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
				          </c:otherwise>
				          </c:choose>
				          <!-- end pagination -->						
						<!-- end of page div -->
					</div>
					<!-- end of search content -->
				</div>
				<!-- end of body -->
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>

<script>
	var result = '${msg}';

	if (result != '') {
		alert(result);
	}
</script>

<script>

$(document).ready(function(){
	var province=$('#gProvince option:selected').val();	 
	 		 
	 $.ajax({
			type:'GET',
			url:'/groophy/replies/select/'+province,
			contentType:'application/json;charset=utf-8',
			dataType:'json',
			error:function(xhr,status,msg){
				alert("상태값 :"+status+" Http에러메시지 :" + msg);
			},
			success:function(xhr){ 
				console.log("result: "+ xhr);
				var city = '${groupKeyDTO.gCity}';
				
				var collaboration='';
				$('#gCity option').remove();
				$('#gCity').append($('<option value="">시/구 선택</option>'));
				
				$.each(xhr.list,function(idx,item){
					
					if(city!=item.gCity){							
						collaboration += ('<option value='+item.gCity+'>'+item.gCity+'</option>');
					}else{
						collaboration += ('<option value='+item.gCity+' selected>'+item.gCity+'</option>');
					}																
				});
				
				$('#gCity').append(collaboration);
	 		}
		});	 
});	
	 

</script>
<script>	 
 $('#gProvince').change(function(){
	 var province=$('#gProvince option:selected').val();
	 $.ajax({
		type:'GET',
		url:'/groophy/replies/select/'+province,
		contentType:'application/json;charset=utf-8',
		dataType:'json',
		error:function(xhr,status,msg){
			alert("상태값 :"+status+" Http에러메시지 :" + msg);
		},
		success:function(xhr){ 
			console.log("result: "+ xhr);
			
			var collaboration='';
			$('#gCity option').remove();
			$('#gCity').append($('<option value="">시/구 선택</option>')).attr('selected','selected');
			$.each(xhr.list,function(idx,item){
				collaboration += ('<option value='+item.gCity+'>'+item.gCity+'</option>');										
			});
			
			$('#gCity').append(collaboration);
 		}
	}); 
 });
</script>
