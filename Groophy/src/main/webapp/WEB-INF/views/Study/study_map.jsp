<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@include file="../include/subhead2.jsp"%>

<style>
	.groophy_container{
		margin-bottom: 20px;
	}

</style>
<div class="groophy_container">
	<div class="container">	
		<div class="container-fluid">		
			<div class="row-fluid">
			
				<div class="span2">
					<!--Sidebar content-->
					sidebar content
					
					<!-- accordian -->
					 <div class="accordion" id="accordion2"> 
					 
						 <div class="accordion-group"> 
							 <div class="accordion-heading"> 
							 	<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne"> 게시판 </a> 
							 </div> 
							 <div id="collapseOne" class="accordion-body collapse in"> 
							 	<div class="accordion-inner"> 그룹게시판 </div> 
							 </div> 
						 </div> <!-- end of 1st floor  -->
						 
						 <div class="accordion-group"> 
							 <div class="accordion-heading"> 
								 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> 화상채팅 </a> 
							 </div> 
							 <div id="collapseTwo" class="accordion-body collapse"> 
								 <div class="accordion-inner"> 화상채팅 </div> 
							 </div> 
						 </div> <!-- end of 2nd floor -->
						  
						 <div class="accordion-group"> 
							 <div class="accordion-heading"> 
								 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree"> 달력 </a> 
							 </div> 
							 <div id="collapseThree" class="accordion-body collapse"> 
								 <div class="accordion-inner"> 달력 </div> 
							 </div> 
						 </div> <!-- end of 3rd floor -->
						  
						 <div class="accordion-group"> 
							 <div class="accordion-heading"> 
								 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFour"> 지도 </a> 
							 </div> 
							 <div id="collapseFour" class="accordion-body collapse"> 
								 <div class="accordion-inner"> 지도 보기 </div> 
								 <div class="accordion-inner"> 맵마커 수정 </div> 
							 </div> 
							  
						 </div> <!-- end of 4th floor -->
						  
						 <div class="accordion-group"> 
							 <div class="accordion-heading"> 
								 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFive"> 퀴즈 </a> 
							 </div> 
							 <div id="collapseFive" class="accordion-body collapse"> 
								 <div class="accordion-inner"> 퀴즈 풀기 </div> 
								  <div class="accordion-inner"> 퀴즈 작성 </div> 
							 </div> 

						 </div> <!-- end of 5th floor -->
						  
						 <div class="accordion-group"> 
							 <div class="accordion-heading"> 
								 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseSix"> 참여명단 </a> 
							 </div> 
							 <div id="collapseSix" class="accordion-body collapse"> 
								<c:forEach var="member" begin="1" end="5">
								 	<div class="accordion-inner"> ${member}<br></div> 
								 </c:forEach>							 
							 </div> 
						 </div> <!-- end of 6th floor -->
						 
					 </div><!-- end of accordion -->
								
					
				</div><!-- end of sidebar -->
				
				<div class="span10">
					<!--Body content-->
					<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=IlYipr7zgquafEXuCh0p&submodules=geocoder"></script>
  
    <div id="map" style="width:100%;height:400px;"></div>
    
    <script>
      var map = new naver.maps.Map('map');
      var myaddress = '영서로 2169';// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
      naver.maps.Service.geocode({address: myaddress}, function(status, response) {
          if (status !== naver.maps.Service.Status.OK) {
              return alert(myaddress + '의 검색 결과가 없거나 기타 네트워크 에러');
          }
          var result = response.result;
          // 검색 결과 갯수: result.total
          // 첫번째 결과 결과 주소: result.items[0].address
          // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
          var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
          map.setCenter(myaddr); // 검색된 좌표로 지도 이동
          // 마커 표시
          var marker = new naver.maps.Marker({
            position: myaddr,
            map: map
          });
          // 마커 클릭 이벤트 처리
          naver.maps.Event.addListener(marker, "click", function(e) {
            if (infowindow.getMap()) {
                infowindow.close();
            } else {
                infowindow.open(map, marker);
            }
          });
          // 마크 클릭시 인포윈도우 오픈
          var infowindow = new naver.maps.InfoWindow({
              content: '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="./Desert.jpg"></a>'
          });
      });
      </script>
				</div><!-- end of body -->
								
			</div>			
		</div>		
	</div>	
</div>
<%@include file="../include/footer.jsp"%>
