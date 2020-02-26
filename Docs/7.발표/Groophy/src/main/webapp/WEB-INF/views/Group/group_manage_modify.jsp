<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <!-- spring url -->
  <spring:url value="/resources" var="resourcesPath" />
  <spring:url value="/resources/assets/css" var="cssPath" />
  <spring:url value="/resources/assets/js" var="jsPath" />
  <spring:url value="/resources/assets/ico" var="icoPath" />
  <spring:url value="/resources/assets/img" var="imgPath" />
  <spring:url value="/resources/assets/color" var="colorPath" />
  
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title> groophy - ${title} </title>		
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="shortcut icon" href="assets/ico/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
	<!------ Include the above in your HEAD tag ---------->
	<link href="http://cdn.materialdesignicons.com/2.1.99/css/materialdesignicons.min.css" rel="stylesheet" />
	
	<style>
		.groophy_header{
			margin-top:2%;	
		}
		.container{
			margin-top: 2%;
		}
.groophy_header {
	margin-top: 2%;
}

.container {
	margin-top: 2%;
}

.groophy_footer {
			margin-bottom:10%;	
}
.copyrightlogo {
	width: 50px;
	height: 18px;
}
	</style>
</head>
<body>


	<div class="groophy_header" align="center">
		<div class="site_logo">
			<a href="/groophy/main"><img src="${imgPath}/logo.png"></a>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 mx-auto">
			<c:choose>
				<c:when test="${errorCode==1}">
					<div class="alert alert-danger" style="text-align:center;">아이디 중복</div>
				</c:when>		
			</c:choose>
				<div class="card">
					<div class="card-body">
						<h5 align="center">그룹정보 수정</h5>
						<form action="/groophy/group/modify" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label>그룹 제목<span class="text-danger">*</span></label> <input
									type="text" class="form-control" name="gTitle"
									value="${groupDTO.gTitle}">
							</div>
							<div class="form-group">
								<label>그룹 이름<span class="text-danger">*</span></label> <input
									type="text" class="form-control" name="gName"
									value="${groupDTO.gName}">
							</div>
							<div class="form-group">
								<label>그룹 분야<span class="text-danger">*</span></label> <select
									class="form-control" name="gCategory">
									<option <c:if test="${groupDTO.gCategory eq '학업' }">selected</c:if>>학업</option>
									<option <c:if test="${groupDTO.gCategory eq '토익' }">selected</c:if>>토익</option>
									<option <c:if test="${groupDTO.gCategory eq '공무원시험' }">selected</c:if>>공무원시험</option>
									<option <c:if test="${groupDTO.gCategory eq '자격증' }">selected</c:if>>자격증</option>
									<option <c:if test="${groupDTO.gCategory eq '프로그래밍' }">selected</c:if>>프로그래밍</option>
									<option <c:if test="${groupDTO.gCategory eq '기타' }">selected</c:if>>기타</option>
								</select>
							</div>
							<div class="form-group">
								<label>그룹 지역<span class="text-danger">*</span></label> <select
									class="form-control" name="gProvince">
									<option>서울특별시</option>
									<option>인천광역시</option>
									<option>강원도</option>
									<option>경기도</option>
									<option>대전광역시</option>
									<option>충청북도</option>
									<option>충청남도</option>
									<option>전라북도</option>
									<option>전라남도</option>
									<option>경상북도</option>
									<option>경상남도</option>
									<option>대구광역시</option>
									<option>부산광역시</option>
									<option>제주도</option>
								</select> <select class="form-control" name="gCity">
									<option>춘천시</option>
								</select>
							</div>
							<div class="form-group">
								<label>진행 난이도 <span class="text-danger">*</span></label> <select class="form-control"
									name="gDifficulty">
									<option <c:if test="${groupDTO.gCategory eq '상' }">selected</c:if>>상</option>
									<option <c:if test="${groupDTO.gCategory eq '중' }">selected</c:if>>중</option>
									<option <c:if test="${groupDTO.gCategory eq '하' }">selected</c:if>>하</option>
								</select>
							</div>
							<div class="form-group">
								<label>최대 인원 <span class="text-danger">*</span></label>
								<select class="form-control" name="gMaximumNumber">
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
												<option>6</option>
												<option>7</option>
												<option>8</option>
												<option>9</option>
								</select>
							</div>
							<div class="form-group">
								<label>스터디 요일 <span class="text-danger">*</span></label><br>
								<div class="custom-control custom-checkbox" style="float:left; margin-right:5px; padding-left: 20px;">
									<input type="checkbox" class="custom-control-input"
										id="1" name="checkboxes" value="월"> <label
										class="custom-control-label" for="1">월
									</label>
								</div>
								<div class="custom-control custom-checkbox" style="float:left; margin-right:5px; padding-left: 20px;">
									<input type="checkbox" class="custom-control-input"
										id="2" name="checkboxes" value="화"> <label
										class="custom-control-label" for="2">화
									</label>
								</div>
								<div class="custom-control custom-checkbox" style="float:left; margin-right:5px; padding-left: 20px;">
									<input type="checkbox" class="custom-control-input"
										id="3" name="checkboxes" value="수"> <label
										class="custom-control-label" for="3">수
									</label>
								</div>
								<div class="custom-control custom-checkbox" style="float:left; margin-right:5px; padding-left: 20px;">
									<input type="checkbox" class="custom-control-input"
										id="4" name="checkboxes" value="목"> <label
										class="custom-control-label" for="4">목
									</label>
								</div>
								<div class="custom-control custom-checkbox" style="float:left; margin-right:5px; padding-left: 20px;">
									<input type="checkbox" class="custom-control-input"
										id="5" name="checkboxes" value="금"> <label
										class="custom-control-label" for="5">금
									</label>
								</div>
								<div class="custom-control custom-checkbox" style="float:left; margin-right:5px; padding-left: 20px;">
									<input type="checkbox" class="custom-control-input"
										id="6" name="checkboxes" value="토"> <label
										class="custom-control-label" for="6">토
									</label>
								</div>
								<div class="custom-control custom-checkbox" style="float:left; margin-right:5px; padding-left: 20px;">
									<input type="checkbox" class="custom-control-input"
										id="7" name="checkboxes" value="일"> <label
										class="custom-control-label" for="7">일
									</label>
								</div>
							</div>
							<br>
							<div class="form-group">
								<label>예상 진행일 <span class="text-danger">*</span></label> <input type="date" class="form-control"
									name="gStartDate">
								<center>~</center>
								<input type="date" name="gEndDate" class="form-control">
							</div>
							<div class="form-group">
								<label>그룹 프로필사진</label> <input type="file" name="gFile"
									class="form-control">
							</div>
							<div class="form-group">
								<label>그룹 소개글</label>
								<textarea rows="3" cols="3" class="form-control"
									name="gIntroduce">${groupDTO.gIntroduce}</textarea>
							</div>
							<div class="form-group">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="customControlAutosizing"> <label
										class="custom-control-label" for="customControlAutosizing">본인은 모든  <a href="terms.html">이용약관</a>에 동의합니다
									</label>
								</div>
							</div>							
							<button type="submit" class="btn btn-success btn-block">생성하기</button>
							<button type="button" class="btn btn-danger btn-block" onclick="location.href='/groophy/group/manage?gIndex=${memberStatDTO.gIndex}'">취소하기</button>
							<input type="hidden" value="${memberInfoDTO.uId}" name="uId">					
							<input type="hidden" value="${groupDTO.gIndex}" name="gIndex">		
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="solid_bar">
		<hr></hr>
	</div>
	<div class="groophy_footer" align="center">
		<div class="groophy_clause">
			<p>
				<small>이용약관 | 개인정보처리방침 | 책임의 한계와 법적고지 | 회원정보 고객센터</small>
			</p>
		</div>
		<div class="groophy_copyright">
			<p>
				<small><img src="${imgPath}/logo.png" class="copyrightlogo">
					Copyright © groophy All Rights Reserved.</small>
			</p>
		</div>
	</div>
</body>
</html>