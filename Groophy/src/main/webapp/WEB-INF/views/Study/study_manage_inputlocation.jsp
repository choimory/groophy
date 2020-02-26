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
         	<h3>현재 설정된 위치 - [${mapDTO.mLocation}]</h3>
        	<div id="map" style="width:100%;height:400px;"></div>
    
      <script>

      var mLocation = '${mapDTO.mLocation}';
      var map = new naver.maps.Map('map');
      var myaddress = mLocation;// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
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
              content: '<h4> [${mapDTO.mLocation}]</h4><h6>장소 설정은 그룹장만 가능합니다.</h6>'
          });
      });
      </script>
      <br>
      <form action="gotochecklocation" method="post">
      <input class="input-block-level" type="text" placeholder="변경할 도로명 주소나 지번 주소 (건물명은 불가능 합니다)" name="changeLocation">
      <button class="btn btn-large btn-block btn-color" type="submit">변경</button>
      
      </form>
      </article>
          <!-- end article -->
      </div>
     </div>
   </div>
 </section>
  
  <%@include file="../include/footer.jsp"%>