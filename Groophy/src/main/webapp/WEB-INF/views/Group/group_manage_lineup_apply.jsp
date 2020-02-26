<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<style>
code {
	color: green;
}
</style>

<div class="groophy_container" style="min-height: 395px;">
	<div class="container">
		<ul class="nav nav-pills">
			<li><a
				href="/groophy/group/manage?gIndex=${memberStatDTO.gIndex}">그룹정보</a></li>
			<li class="active"><a
				href="/groophy/group/lineup?gIndex=${memberStatDTO.gIndex}&accept=0">신청명단</a></li>
			<li><a
				href="/groophy/group/lineup?gIndex=${memberStatDTO.gIndex}&accept=1">수락명단</a></li>
		</ul>
		<table class="table table-hover">
			<thead>
				<tr>
					<th class="text-success">신청 명단</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${lineupList eq null or lineupList eq ''}">
						<tr>
							<td><h4 align="center">신청자가 없습니다</h4></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${lineupList}" var="lineupMap">
							<tr>
								<td>
									<div style="float: left; margin-right: 3%;"
										class="groophy_profile">
										<img
											src="${imgPath}/user_profile/${lineupMap.MEMBER_PHOTO}.jpg"
											class="img-polaroid" style="width: 64px; height: 64px;">
									</div>
									<div style="float: left;" class="groophy_info">
										<h4>${lineupMap.NICKNAME}</h4>
										<p>
											<code>성별</code>
											${lineupMap.GENDER} &nbsp;&nbsp;&nbsp;
											<code>출석률</code>
											<c:choose>
											<c:when test="${lineupMap.CHECKCOUNT==0 }">기록없음</c:when>
											<c:otherwise><fmt:formatNumber value="${lineupMap.CHECKSUCCESS/lineupMap.CHECKCOUNT*100}" pattern=".0"/>%</c:otherwise>
											</c:choose>
											<code>스터디 완수율</code>
											<c:choose>
											<c:when test="${lineupMap.STUDYCOUNT==0 }">기록없음</c:when>
											<c:otherwise><fmt:formatNumber value="${lineupMap.STUDYSUCCESS/lineupMap.STUDYCOUNT*100}" pattern=".0"/>%</c:otherwise>
											</c:choose>
											<code>추방률</code>
											<c:choose>
											<c:when test="${lineupMap.KICKCOUNT==0 }">0.0%</c:when>
											<c:otherwise><fmt:formatNumber value="${lineupMap.KICKCOUNT/lineupMap.STUDYCOUNT*100}" pattern=".0"/>%</c:otherwise>
											</c:choose>
										</p>
										&nbsp;&nbsp;&nbsp;
									</div>
									<div style="float: right;" class="groophy_buttons">
										<button type="button" class="btn btn-success"
											onclick="location.href='/groophy/group/accept?gIndex=${lineupMap.GROUP_ID}&uId=${lineupMap.MEMBER_ID}'">수락</button>
										<button type="button" class="btn btn-danger"
											onclick="location.href='/groophy/group/refuse?gIndex=${lineupMap.GROUP_ID}&uId=${lineupMap.MEMBER_ID}'">거절</button>
									</div>
								</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</div>
<%@include file="../include/footer.jsp"%>