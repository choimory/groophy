<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>	
    .groophy_container{
    	margin-bottom: 20px;
    }
</style>
<%@ include file="../include/header.jsp"%>
<div class="groophy_container">
	<div class="container">
		<!-- main content -->
		<div class="hero-unit" style="text-align:center;">
			가입하실때 입력하신 Email로 임시 비밀번호가 발송되었습니다<p>
			임시비밀번호 :  ${uPw}
		</div>
		<div class="groophy_btn" style="text-align:center;">
			<button type="button" class="btn btn-success" onclick="location.href='/groophy/login'">로그인</button>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp"%>