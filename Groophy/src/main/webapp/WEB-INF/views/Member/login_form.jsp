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
	margin-top: 2%;
}

.container {
	margin-top: 2%;
}

.groophy_footer {
	
}
.copyrightlogo {
	width: 50px;
	height: 18px;
}
</style>
</head>
<script>
	var result = '${msg}';

	if (result != '') {
		alert(result);
	}
</script>
<body>

	<div class="groophy_header" align="center">
		<div class="site_logo">
			<a href="/groophy/main"><img src="assets/img/logo.png"></a>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="groophy_alert">
					<c:choose>
						<c:when test="${errorCode==1}">
							<div class="alert alert-danger" style="text-align: center;">아이디나
								비밀번호가 일치하지 않습니다</div>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title" align="center">로그인</h3>
					</div>
					<div class="panel-body">

						<form action="login" method="post" accept-charset="UTF-8"
							role="form">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="ID를 입력해주세요" name="uId"
										type="text">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="비밀번호를 입력해주세요"
										name="uPw" type="password">
								</div>
								<div class="groophy_findInfo" style="margin-bottom: 2%;">
									<center>
										<a href="/groophy/find_id" class="text-muted">ID찾기</a> | <a
											href="/groophy/find_pw" class="text-muted">PW찾기</a><!--  | <a
											href="/groophy/join" class="text-muted">회원가입</a> -->
									</center>
								</div>
								<input type="hidden" name="beforeUrl" value="${beforeUrl}">
								<input class="btn btn-lg btn-success btn-block" type="submit"
									value="로그인">
							</fieldset>
						</form>
						<hr />
						<center>
							<h4>OR</h4>
						</center>
						<button class="btn btn-lg btn-facebook btn-block btn-primary" type="button"
							onclick="location.href='/groophy/join'">회원가입</button>
					</div>
					<!-- end of panel body -->
				</div>
				<!-- end of panel -->
			</div>
			<!-- end of grid -->
		</div>
		<!-- end of row -->
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
				<small><img src="assets/img/logo.png" class="copyrightlogo">
					Copyright © groophy All Rights Reserved.</small>
			</p>
		</div>
	</div>

</body>
</html>