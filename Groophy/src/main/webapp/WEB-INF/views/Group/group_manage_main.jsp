<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<style>
.groophy_container {
	margin-bottom: 20px;
}

.groophy_textbox {
	display: block;
	padding: 9.5px;
	margin: 3%;
	background-color: #f5f5f5;
	border: 1px solid #ccc;
	border: 1px solid rgba(0, 0, 0, 0.15);
	border-radius: 4px;
	background-color: #f5f5f5;
}

code {
	color: green;
}

.groophy_textbox:hover {
	background-color: white;
}
</style>

<c:if test="${memberInfoDTO.uId ne groupDTO.uId}">
	<script>
		alert("조장만 접근할 수 있습니다");
		location.href="/groophy/main";
	</script>
</c:if>


<div class="groophy_container">
	<div class="container">
		<!-- main content -->
		<ul class="nav nav-pills">
			<li class="active"><a
				href="/groophy/group/manage?gIndex=${memberStatDTO.gIndex}">그룹정보</a></li>
			<li><a
				href="/groophy/group/lineup?gIndex=${memberStatDTO.gIndex}&accept=0">신청명단</a></li>
			<li><a
				href="/groophy/group/lineup?gIndex=${memberStatDTO.gIndex}&accept=1">수락명단</a></li>
		</ul>

		<div class="container-fluid">
			<div class="row-fluid">

				<div class="span2">
					<div style="margin: 5%; text-align: center;" class="">
						<img src="${imgPath}/group_profile/${groupDTO.gPhoto}.jpg"
							class="img-polaroid">
						<p>
						<h3>${groupDTO.gName}</h3>
					</div>

				</div>
				<!-- end of sidebar -->

				<div class="span10">
					<div class="span3">
						<div class="groophy_textbox">
							<h3>기본정보</h3>
							<p>
								<code>그룹명</code>
								${groupDTO.gName}
							</p>
							<p>
								<code>그룹제목</code>
								${groupDTO.gTitle}
							</p>
							<p>
								<code>조장</code>
								${groupDTO.uId}
							</p>
						</div>
					</div>
					<div class="span3">
						<div class="groophy_textbox">
							<h3>추가정보</h3>
							<p>
								<code>지역</code>
								${groupDTO.gProvince} ${groupDTO.gCity}
							</p>
							<p>
								<code>분야</code>
								${groupDTO.gCategory}
							</p>
							<p>
								<code>난이도</code>
								${groupDTO.gDifficulty}
							</p>
						</div>
					</div>
					<div class="span3">
						<div class="groophy_textbox">
							<h3>진행일</h3>
							<p>
								<code>예상시작일</code>
								${groupDTO.gStartDate}
							</p>
							<p>
								<code>예상종료일</code>
								${groupDTO.gEndDate}
							</p>
							<p>
								<code>주 스터디요일</code>
								${groupDTO.gStudyOfWeek }
							</p>
						</div>
					</div>
					<div class="span3">
						<div class="groophy_textbox">
							<h3>그외</h3>
							<p>
								<code>그룹인원</code>
								${groupDTO.gCurrentNumber} / ${groupDTO.gMaximumNumber}
							</p>
							<p>
								<code>그룹생성일</code>
								${groupDTO.gRegDate}
							</p>
							<p>
								<code>진행상태</code>
								<c:choose>
									<c:when test="${groupDTO.gProgress eq 0 }">
										모집중
									</c:when>
									<c:when test="${groupDTO.gProgress eq 1 }">
										진행중
									</c:when>
								</c:choose>
							</p>
						</div>
					</div>
					<div class="span12" style="margin: 0;">
						<div class="groophy_textbox">
							<h3>그룹 소개글</h3>
							<p>${groupDTO.gIntroduce}</p>
						</div>
						<div class="groophy_buttons" align="right">
							<button type="button" class="btn btn-inverse"
								data-toggle="button"
								onclick="location.href='/groophy/group/modify?gIndex=${memberStatDTO.gIndex}'">그룹정보수정</button>
							<button type="button" class="btn btn-success"
								data-toggle="button" onclick="location.href='/groophy/group/start?gIndex=${groupDTO.gIndex}'">진행시작</button>
							<button type="button" class="btn btn-danger" data-toggle="button"
								onclick="location.href='/groophy/group/delete'">그룹폐쇄</button>
						</div>
					</div>

				</div>
				<!-- end of body -->

			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp"%>