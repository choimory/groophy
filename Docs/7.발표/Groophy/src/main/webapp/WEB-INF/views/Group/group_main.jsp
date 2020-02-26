<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<style>
.groophy_container {
	margin-bottom: 20px;
}

.groophy_login {
	margin-top: 50%;
	margin-bottom: 50%;
}
</style>
<script>
	var result = '${msg}';

	if (result != '') {
		alert(result);
	}
</script>
<div class="groophy_container">
	<div class="container">
		<div class="container-fluid">
			<div class="row-fluid">
				<!-- left bar -->
				<div class="span2" align="center">
					<%@include file="../include/left_infobar.jsp"%>
				</div>
				<!-- end of leftbar -->

				<!-- main content -->
				<div class="span10">
					<!-- center -->
					<div class="span10">
						<div class="hero-unit">
							<h3>${groupDTO.gTitle}</h3>
							<p>${groupDTO.gIntroduce}</p>							
							<p>
							<div class="groophy_buttons" style="margin-top:7%;">
								<c:choose>
									<c:when test="${memberInfoDTO.uId eq groupDTO.uId}">
										<button type="button" class="btn btn-warning"
											data-toggle="button"
											onclick="location.href='/groophy/group/manage?gIndex=${memberStatDTO.gIndex}'">
											<i class="icon-cog"></i>관리하기
										</button>
									</c:when>
									<c:when test="${memberStatDTO.gIndex eq groupDTO.gIndex}">
										<button type="button" class="btn btn-danger"
											data-toggle="button"
											onclick="location.href='/groophy/group/cancel?gIndex=${groupDTO.gIndex}&uId=${memberInfoDTO.uId}&accept=${memberStatDTO.accept}'">
											<i class="icon-remove"></i>취소하기
										</button>
									</c:when>
									<c:when test="${memberStatDTO.accept eq 0}">
										<button type="button" class="btn btn-success"
											data-toggle="button"
											onclick="location.href='/groophy/group/apply?gIndex=${groupDTO.gIndex}&uId=${memberInfoDTO.uId}'">
											<i class="icon-ok"></i>신청하기
										</button>
									</c:when>
								</c:choose>
							</div>
						</div>
						<div class="groophy_comment">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>댓글 <i class="icon-comment"></i></th>
									</tr>
								</thead>
								<c:choose>
									<c:when
										test="${groupCommentDTOList eq null or groupCommentDTOList eq ''}">
										<tbody>
											<tr>
												<td style="text-align: center">작성된 댓글이 없습니다</td>
											</tr>
										</tbody>
									</c:when>
									<c:otherwise>
										<tbody>
											<tr>
												<th>작성자</th>
												<th>내용</th>
												<th>작성일</th>
												<th></th>
											</tr>
											<c:forEach var="groupCommentDTO"
												items="${groupCommentDTOList}">
												<tr>
													<td width="50">
													<c:choose>
														<c:when test="${groupCommentDTO.uId eq memberInfoDTO.uNickName}">
															<b class="text-info">${groupCommentDTO.uId}</b>
														</c:when>
														<c:when test="${groupDTO.uId eq groupCommentDTO.uId}">
															<b class="text-success">${groupCommentDTO.uId}</b>
														</c:when>
														<c:otherwise>
															${groupCommentDTO.uId}
														</c:otherwise>
														</c:choose>
													</td>
													<td width="200">${groupCommentDTO.gcComment}</td>
													<td width="30">${groupCommentDTO.gcRegDate}</td>
													<td width="5">
														<c:if test="${groupCommentDTO.uId eq memberInfoDTO.uNickName or memberStatDTO.uId eq groupDTO.uId}">
															<a href="/groophy/group/delete_comment?gIndex=${groupCommentDTO.gIndex}&gcIndex=${groupCommentDTO.gcIndex}" class="text-error">삭제</a></td>
														</c:if>
												</tr>
											</c:forEach>
										</tbody>
									</c:otherwise>
								</c:choose>
							</table>
						</div>
						<!-- end of groophy_comment -->
						<div class="groophy_comment_form"
							style="text-align: center; margin-top: 20px;">
							<form class="form-inline" action="comment" method="post">
								<input type="hidden" class="form-control" name="gIndex"
									value="${groupDTO.gIndex}"> <input type="hidden"
									class="form-control" name="uId" value="${memberInfoDTO.uNickName}">
								<input type="text" class="input-xxlarge" name="gcComment"
									placeholder="댓글입력">
								<button type="submit" class="btn btn-success">
									<i class="icon-ok"></i>입력
								</button>
							</form>
						</div>
						<!-- end of groophy_comment_form -->
					</div>
					<!-- end of center -->

					<!-- right bar -->
					<div class="span2">

						<!-- accodian -->
						<div class="accordion" id="accordion2">

							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion2" href="#collapseOne"> 개설자 </a>
								</div>
								<div id="collapseOne" class="accordion-body collapse in">
									<div class="accordion-inner">${groupDTO.uId}</div>
								</div>
							</div>
							<!-- end of 1st floor  -->

							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion2" href="#collapseTwo"> 그룹명 </a>
								</div>
								<div id="collapseTwo" class="accordion-body collapse">
									<div class="accordion-inner">${groupDTO.gName}</div>
								</div>
							</div>
							<!-- end of 2nd floor -->


							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion2" href="#collapseFour"> 지역 </a>
								</div>
								<div id="collapseFour" class="accordion-body collapse">
									<div class="accordion-inner">${groupDTO.gProvince}<br>
										${groupDTO.gCity}</div>
								</div>
							</div>
							<!-- end of 4th floor -->

							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion2" href="#collapseFive"> 분야 </a>
								</div>
								<div id="collapseFive" class="accordion-body collapse">
									<div class="accordion-inner">${groupDTO.gCategory}</div>
								</div>
							</div>
							<!-- end of 5th floor -->

							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion2" href="#collapseSix"> 난이도 </a>
								</div>
								<div id="collapseSix" class="accordion-body collapse">
									<div class="accordion-inner">${groupDTO.gDifficulty}</div>
								</div>
							</div>
							<!-- end of 6th floor -->

							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion2" href="#collapseSeven"> 개설일 </a>
								</div>
								<div id="collapseSeven" class="accordion-body collapse">
									<div class="accordion-inner">${groupDTO.gRegDate}</div>
								</div>
							</div>
							<!-- end of 7th floor -->

							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion2" href="#collapseEight"> 진행일정 </a>
								</div>
								<div id="collapseEight" class="accordion-body collapse">
									<div class="accordion-inner">
										${groupDTO.gStartDate} 부터<br> ${groupDTO.gEndDate} 까지
									</div>
								</div>
							</div>
							<!-- end of 8th floor -->
							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion2" href="#NotNow_collapseThree"> 현재인원 :
										${groupDTO.gCurrentNumber}<br> 최대인원 :
										${groupDTO.gMaximumNumber}
									</a>
								</div>
								<div id="collapseThree" class="accordion-body collapse">
									<div class="accordion-inner">{참여자ID 반복}</div>
								</div>
							</div>
							<!-- end of 3rd floor -->
							<p>
							<!-- 
							<div class="groophy_buttons" style="text-align: center;">
								<c:choose>
									<c:when test="${memberInfoDTO.uId eq groupDTO.uId}">
										<button type="button" class="btn btn-warning"
											data-toggle="button"
											onclick="location.href='/groophy/group/manage?gIndex=${memberStatDTO.gIndex}'">
											<i class="icon-cog"></i>관리하기
										</button>
									</c:when>
									<c:when test="${memberStatDTO.gIndex eq groupDTO.gIndex}">
										<button type="button" class="btn btn-danger"
											data-toggle="button"
											onclick="location.href='/groophy/group/cancel?gIndex=${groupDTO.gIndex}&uId=${memberInfoDTO.uId}&accept=${memberStatDTO.accept}'">
											<i class="icon-remove"></i>취소하기
										</button>
									</c:when>
									<c:when test="${memberStatDTO.accept eq 0}">
										<button type="button" class="btn btn-success"
											data-toggle="button"
											onclick="location.href='/groophy/group/apply?gIndex=${groupDTO.gIndex}&uId=${memberInfoDTO.uId}'">
											<i class="icon-ok"></i>신청하기
										</button>
									</c:when>
								</c:choose>
							</div>
							 -->
						</div>
						<!-- end of accordion -->
					</div>
					<!-- end of right -->
				</div>
				<!-- end of main content -->
			</div>
		</div>
	</div>

</div>
<%@include file="../include/footer.jsp"%>