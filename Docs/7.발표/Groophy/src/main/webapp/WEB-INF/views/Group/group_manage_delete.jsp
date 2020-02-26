<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>groophy - ${title}</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">
<style>
.groophy_header {
	margin-top: 5%;
}

.container {
	margin-top: 5%;
}
</style>
</head>
<body>

	<div class="groophy_header" align="center">
		<div class="site_logo">
			<a href="/groophy/main"><img
				src="/resources/assets/img/groophy.gif"></a>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="groophy_alert">
					<c:choose>
						<c:when test="${errorCode==1}">
							<div class="alert alert-danger" style="text-align: center;">
								비밀번호가 일치하지 않습니다
							</div>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title" align="center">그룹폐쇄 전 비밀번호로 본인 확인</h3>
					</div>
					<div class="panel-body">
						<form action="delete_group" method="post" accept-charset="UTF-8"
							role="form">
							<input type="hidden" name="gIndex"
								value="${memberStatDTO.gIndex}"> <input type="hidden"
								name="uId" value="${memberInfoDTO.uId}">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="비밀번호를 입력해주세요"
										name="uPw" type="password" value="">
								</div>
								<input class="btn btn-lg btn-danger btn-block" type="submit"
									value="그룹폐쇄"> <input
									class="btn btn-lg btn-success btn-block" type="button"
									onclick="location.href='/groophy/group/manage?gIndex=${memberStatDTO.gIndex}'"
									value="돌아가기">
							</fieldset>
						</form>
					</div>
					<!-- end of panel body -->
				</div>
				<!-- end of panel -->
			</div>
			<!-- end of grid -->
		</div>
		<!-- end of row -->
	</div>

</body>
</html>