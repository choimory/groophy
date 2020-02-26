<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<div class="groophy_container" style="min-height:395px;">
	<div class="container">
		<ul class="nav nav-pills">
			<li><a
				href="/groophy/group/manage?gIndex=${memberStatDTO.gIndex}">그룹정보</a></li>
			<li><a
				href="/groophy/group/lineup?gIndex=${memberStatDTO.gIndex}&accept=0">신청명단</a></li>
			<li class="active"><a
				href="/groophy/group/lineup?gIndex=${memberStatDTO.gIndex}&accept=1">수락명단</a></li>
		</ul>
		<table class="table table-hover">
			<thead>
				<tr>
					<th class="text-success">수락 명단</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${lineupList}" var="lineupMap">
					<tr>
						<td>
							<div style="float: left; margin-right: 3%;"
								class="groophy_profile">
								<img src="${imgPath}/user_profile/${lineupMap.MEMBER_PHOTO}.jpg" style="height:144px; weight:144px;"
									class="img-polaroid">
							</div>
							<div style="float: left;" class="groophy_info">
								<h3>${lineupMap.NICKNAME}</h3>
								<p><code style="color:green;">성별</code>  ${lineupMap.GENDER}</p>
								<p><code style="color:green;">출석률</code> 
								<c:choose>
								<c:when test="${lineupMap.CHECKCOUNT==0 }">기록없음</c:when>
								<c:otherwise><fmt:formatNumber value="${lineupMap.CHECKSUCCESS/lineupMap.CHECKCOUNT*100}" pattern=".0"/>%</p></c:otherwise>
								</c:choose>
								<p><code style="color:green;">스터디 완수율</code> 
								<c:choose><c:when test="${lineupMap.STUDYCOUNT==0 }">기록없음</c:when><c:otherwise><fmt:formatNumber value="${lineupMap.STUDYSUCCESS/lineupMap.STUDYCOUNT*100}" pattern=".0"/>%</p></c:otherwise></c:choose>
								<p><code style="color:green;">추방률</code> 
								<c:choose><c:when test="${lineupMap.KICKCOUNT==0 }">0.0%</c:when><c:otherwise><fmt:formatNumber value="${lineupMap.KICKCOUNT/lineupMap.STUDYCOUNT*100}" pattern=".0"/>%</p></c:otherwise></c:choose>
							</div>
							<div style="float: right;" class="groophy_buttons">
								<c:if test="${lineupMap.MEMBER_ID ne memberInfoDTO.uId}">
									<button type="button" class="btn btn-danger" onclick="location.href='/groophy/group/kick?uId=${lineupMap.MEMBER_ID}&gIndex=${lineupMap.GROUP_ID}'">추방</button>
								</c:if>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<%@include file="../include/footer.jsp"%>