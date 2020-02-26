<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="../include/header.jsp"%>

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=IlYipr7zgquafEXuCh0p&submodules=geocoder"></script>
<style>
	.groophy_container{
		margin-bottom: 20px;
	}
	#foo td { background-color:#FFFFFF; padding:10px; border:1px solid #AAD34A; }
	#emailget { font-size: 12px;}
	#subtitle { font-size: 18px;}
</style>


<!-- Main content -->
  <section id="maincontent">
    <div class="container">
      <div class="row">
   
    <!-- left nav -->	  
	<%@include file="../include/mygroup_left.jsp" %>
	<!-- end left nav -->
	
         <div class="span9">
          <!-- start article 1 -->
          <article>
          	<ul class="nav nav-pills">
			<li><a href="/groophy/study/gotomanage">그룹원관리</a></li>
			<li><a href="/groophy/study/gotogroupinfo">길드정보관리</a></li>
			<li class="active"><a href="/groophy/study/gotoinputlocation">모임장소설정</a></li>
		</ul>
		
         <!-- start article -->
         	<h3>입력한 위치 - [${mLocation}]</h3>
         	<h5>매핑이 되지 않았을경우, 입력하신 도로명주소나 지번주소를 확인하고 재설정 하세요.<br>건물명은 입력이 불가합니다.</h2>
        	<div id="map" style="width:100%;height:400px;"></div>
    
      

      
      
      
      <script>
      
      
      var mLocation = '${mLocation}';
      var map = new naver.maps.Map('map');
      var myaddress = mLocation;// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
      naver.maps.Service.geocode({address: myaddress}, function(status, response) {
          if (status !== naver.maps.Service.Status.OK) {
        	  
               alert(myaddress + '의 검색 결과가 없으니 재설정 하세요.');
              location.href="/groophy/study/gotoinputlocation";
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
              content: '<h4> [${mapDTO.mLocation}]</h4><h6>장소 설정은 그룹장만 가능합니다.</h6>'
          });
      });
      </script>
      <br>
      
     
      
      
      <form action="savelocation" method="post">
      <button class="btn btn-large btn-block btn-color" type="submit">지도에 표시된 위치로 모임장소 변경하기</button>
      <input type="hidden" value="${mLocation}" name=changeLocation>
      </form>
       <form action="gotoinputlocation">
      <button class="btn btn-large btn-block btn-color" type="submit">위치 재설정하기</button>
      </form> 
      
      
      </article>
          <!-- end article -->
      </div>
     </div>
   </div>
 </section>
  
  <%@include file="../include/footer.jsp"%>