<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 추후 내용 채워질시 height 삭제 -->
<style>    
	.groophy_container{
		width:100%;
		height : auto;
	}
	.groophy_menu{
		float : left;	
		box-sizing:border-box;
		width:20%;	
		background : grey;
		height:200px;
	}
	.groophy_section{
		float : left;		
		box-sizing:border-box;
		width:80%;
		background : yellow;
		height:200px;
	}
	.groophy_menu:before{
		content:""; display:block; clear:both;
	}
	.groophy_section:after{
		content:""; display:block; clear:both;
	}
</style>

<%@ include file="include/header.jsp"%>
<%@ include file="include/subhead.jsp"%>

<div class="container">
	<div class="groophy_menu">		
		menu				
	</div>
	<div class="groophy_section">			
		section				
	</div>
</div>

<%@ include file="include/footer.jsp"%>