<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
			margin-bottom:10%;
		}
	</style>
</head>
<body>


<div class="groophy_header" align="center">
	<div class="site_logo">
		<a href="/groophy/main"><img src="assets/img/logo.png"></a>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-lg-4 col-md-4 mx-auto">
		<div class="groophy_alert">
	    		<c:choose>
	    			<c:when test="${errorCode==1}">
	    				<div class="alert alert-danger" style="text-align:center;">아이디나 비밀번호가 일치하지 않습니다</div>
	    			</c:when>
	    			<c:otherwise>
	    			</c:otherwise>
	    		</c:choose>
    	</div>
		<div class="card">
		  <div class="card-body">
		  	<p align="center"><b>${memberInfoDTO.uId}</b>님의 회원정보 수정</p>
			<form action="modify_info" method="post" enctype="multipart/form-data">
			  <input type="hidden" name="uId" value="${memberInfoDTO.uId}">	
			  <div class="form-group">
				<label>비밀번호 <span class="text-danger">*</span></label>
				<input type="password" name="uPw" class="form-control" placeholder="비밀번호를 입력해주세요">
			  </div>
			  <div class="form-group">
				<label>닉네임<span class="text-danger">*</span></label>
				<input type="text" name="uNickName" class="form-control" value="${memberInfoDTO.uNickName}">
			  </div>
			  <div class="form-group">
				<label>Email<span class="text-danger">*</span></label>
				<input type="text" name="uEmail" class="form-control" value="${memberInfoDTO.uEmail}">
			  </div>
			  <div class="form-group">
			  	<label>휴대폰번호</label>
			  	<input type="text" name="uPhone" class="form-control" value="${memberInfoDTO.uPhone}">
			  </div>
			  <div class="form-group">
			  	<label>성별</label>
			  	<select name="uGender" class="form-control">
			  		<option <c:if test="${memberInfoDTO.uGender eq '남성'}">selected</c:if>>남성</option>
			  		<option <c:if test="${memberInfoDTO.uGender eq '여성'}">selected</c:if>>여성</option>
			  	</select>
			  </div>			  
			  <div class="form-group">
			  	<label>프로필사진</label>
			  	<input type="file" class="form-control" name="uFile">
			  </div>
			  <div class="form-group">
			  	<label>자기소개글</label>
			  	<textarea rows="3" cols="3" class="form-control" name="uIntroduce">${memberInfoDTO.uIntroduce}</textarea>
			  </div>			  
			  <div class="form-group">			
			  	<div class="custom-control custom-checkbox">
    		   		<input type="checkbox" class="custom-control-input" id="customControlAutosizing">
    		    	<label class="custom-control-label" for="customControlAutosizing">
    		    	본인은 모든
    		    	
    		    	 <a href="terms.html">이용약관</a>    		    	 
    		    	 
    		    	 에 동의합니다</label>
   		 	  	</div>
			  </div>
			  <button type="submit" class="btn btn-success btn-block">완료</button>
			  <button type="button" onclick="location.href='/groophy/member_info'" class="btn btn-danger btn-block">취소</button>
			</form>
			
		  </div>
		</div>
		</div>
	</div>
</div>





</body>
</html>