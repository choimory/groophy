<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

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

.groophy_textbox:hover {
	background-color: white;
}

code {
	color: green;
}
</style>

<c:if test="${memberInfoDTO eq null or memberInfoDTO eq ''}">
	<script>
		alert("로그인해주세요");
		location.href = "/groophy/login";
	</script>
</c:if>

<div class="groophy_container">
	<div class="container">
		<div class="container-fluid">
			<div class="row-fluid">

				<div class="span2">
					<div style="margin: 5%; text-align: center;" class="">
						<img src="${imgPath}/user_profile/${memberInfoDTO.uPhoto}.jpg"
							class="img-polaroid">
						<p>
						<h3>${memberInfoDTO.uNickName}</h3>
					</div>

				</div>
				<!-- end of sidebar -->

				<div class="span10">
					<div class="span4">
						<div class="groophy_textbox" style="">
							<h3>기본정보</h3>
							<p>
								<code>아이디</code>
								${memberInfoDTO.uId}
							</p>
							<p>
								<code>닉네임</code>
								${memberInfoDTO.uNickName}
							</p>
						</div>
					</div>
					<div class="span4">
						<div class="groophy_textbox">
							<h3>연락처</h3>
							<p>
								<code>이메일</code>
								${memberInfoDTO.uEmail}
							</p>
							<p>
								<code>휴대폰번호</code>
								${memberInfoDTO.uPhone}
							</p>
						</div>
					</div>
					<div class="span4">
						<div class="groophy_textbox">
							<h3>추가정보</h3>
							<p>
								<code>성별</code>
								${memberInfoDTO.uGender}
							</p>
							<p>
								<code>가입일</code>
								${memberInfoDTO.uRegDate}
							</p>
						</div>
					</div>
					<div class="span12" style="margin: 0;">
						<div class="groophy_textbox">
							<h3>자기소개글</h3>
							<p>${memberInfoDTO.uIntroduce}</p>
						</div>
						<div class="groophy_textbox">
							<h3>가입중인 그룹정보</h3>
							<div>
								<c:if test="${memberStatDTO.gIndex eq 0}">
									<p>가입중인 그룹이 없습니다</p>
								</c:if>
								<c:if test="${memberStatDTO.gIndex ne 0}">
									<p>
										<code>그룹명</code>${groupDTO.gName} 
										<code style="margin-left:1%;">지역</code> ${groupDTO.gProvince} ${groupDTO.gCity } 
										<code style="margin-left:1%;">분야</code> ${groupDTO.gCategory}
										<code style="margin-left:1%;">난이도</code> ${groupDTO.gDifficulty}
										<code style="margin-left:1%;">인원</code> ${groupDTO.gCurrentNumber}/${groupDTO.gMaximumNumber}
									</p>
								</c:if>
							</div>
						</div>
						<div class="groophy_textbox">
							<h3>기록</h3>
							<code >출석률</code>
							<c:choose>
								<c:when test="${memberStatDTO.studyCount==0}">
									기록없음
								</c:when>
								<c:otherwise>
									<fmt:formatNumber
										value="${memberStatDTO.checkSuccess/memberStatDTO.checkCount*100}"
										pattern=".0" />%
								</c:otherwise>
							</c:choose>
							<code style="margin-left:2%;">스터디완수율</code>
							<c:choose>
								<c:when test="${memberStatDTO.studyCount==0}">
					기록없음
								</c:when>
								<c:otherwise>
									<fmt:formatNumber
										value="${memberStatDTO.studySuccess/memberStatDTO.studyCount*100}"
										pattern=".0" />%
								</c:otherwise>
							</c:choose>
							<code style="margin-left:2%;">추방률</code>
							<c:choose>
								<c:when test="${memberStatDTO.kickCount==0 }">
					기록없음
								</c:when>
								<c:otherwise>
									<fmt:formatNumber
										value="${memberStatDTO.kickCount/memberStatDTO.studyCount*100}"
										pattern=".0" />%
								</c:otherwise>
							</c:choose>
						</div>
						<div class="" align="right">
							<button type="button" class="btn btn-success"
								data-toggle="button"
								onclick="location.href='/groophy/modify_info'">회원정보 수정</button>
							<button type="button" class="btn btn-danger" data-toggle="button"
								onclick="location.href='/groophy/withdraw'">회원탈퇴</button>
						</div>
					</div>

				</div>
				<!-- end of body -->

			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>
