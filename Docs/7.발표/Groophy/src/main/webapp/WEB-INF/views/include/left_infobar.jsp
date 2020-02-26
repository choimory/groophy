<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<style>
		code{
			color:green;
		}
	</style>
<c:choose>
	<c:when test="${memberInfoDTO eq null}">
		<div class="groophy_login">
			<p>로그인 해주세요</p>
			<button type="button" class="btn btn-inverse"
				onclick="location.href='/groophy/login'"><i class="icon-user"></i>로그인</button>
			<p>	
		</div>
	</c:when>
	<c:otherwise>
		<div class="groophy_info">
				<img src="${imgPath}/user_profile/${memberInfoDTO.uPhoto}.jpg"
				class="img-polaroid"><p><p>	
			<code>아이디</code><br>
			${memberInfoDTO.uId}<p><p>
			<code>닉네임</code><br>
			${memberInfoDTO.uNickName}<p>
			<code>출석률</code><br>
			<c:choose>
				<c:when test="${memberStatDTO.studyCount==0}">
					기록없음<p>
				</c:when>
				<c:otherwise>
					<fmt:formatNumber value="${memberStatDTO.checkSuccess/memberStatDTO.checkCount*100}" pattern=".0"/>%<p>
				</c:otherwise>				
			</c:choose>
			<code>스터디완수율</code><br>
			<c:choose>
				<c:when test="${memberStatDTO.studyCount==0}">
					기록없음<p>
				</c:when>
				<c:otherwise>
					<fmt:formatNumber value="${memberStatDTO.studySuccess/memberStatDTO.studyCount*100}" pattern=".0"/>%<p>
				</c:otherwise>				
			</c:choose>				
			<code>추방률</code><br>
			<c:choose>
				<c:when test="${memberStatDTO.kickCount==0 }">
					0.0%<p>
				</c:when>
				<c:otherwise>
					<fmt:formatNumber value="${memberStatDTO.kickCount/memberStatDTO.studyCount*100}" pattern=".0"/>%<p>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="groophy_studybtn" style="margin-bottom:5%;">
			<c:choose>
				<c:when test="${memberStatDTO.gIndex ne 0 and memberStatDTO.accept eq 0}">
					<button type="button" class="btn btn-warning" data-toggle="button"
						onclick="location.href='/groophy/group/main?gIndex=${memberStatDTO.gIndex}'">스터디 바로가기</button>
				</c:when>
				<c:when test="${memberStatDTO.gIndex ne 0 and memberStatDTO.accept eq 1 }">
					<button type="button" class="btn btn-success" data-toggle="button"
						onclick="location.href='/groophy/group/main?gIndex=${memberStatDTO.gIndex}'">스터디 바로가기</button>
				</c:when>
				<c:when test="${memberStatDTO.gIndex eq 0 }">
					신청하거나 참여중인<br> 
					스터디가 없습니다.<p><p>			
					<button type="button" class="btn btn-success" data-toggle="button"
						onclick="location.href='/groophy/create_group'">그룹 개설</button>
				</c:when>
			</c:choose>
		</div>
	</c:otherwise>
</c:choose>

