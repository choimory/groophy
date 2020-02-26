<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- 
<spring:url value="/resources/assets/img/logo-dark.png" var="darklogo" />
 -->
 
 
<!-- Footer
 ================================================== -->
  <footer class="footer">
    <div class="container">
      <div class="row">
        <div class="span4">
          <div class="widget">
            <h5>Browse pages</h5>
            <ul class="regular">
              <li><a href="/groophy/search_main">그룹검색</a></li>
              <li><a href="/groophy/board/list">MY그룹</a></li>
              <li><a href="/groophy/customer/notice/list">고객센터</a></li>
              <li><a href="/groophy/join">회원가입</a></li>
            </ul>
          </div>
        </div>
        <div class="span4">
          <div class="widget">
            <h5>Privacy Notice</h5>
            <ul class="regular">
              <li><a href="/groophy/join">이용약관</a></li>
              <li><a href="#">개인정보처리방침</a></li>
              <li><a href="#">이메일 무단수집 거부</a></li>
            </ul>
          </div>
        </div>
        <div class="span4">
          <div class="widget">
            <!-- logo -->
            <a class="brand logo" href="/groophy/">
							<img src="${imgPath}/logo-dark.png" alt="" />
						</a>
            <!-- end logo -->
            <address>
							<strong>Registered Companyname, Inc.</strong><br>
							 강원도 춘천시 경춘로 2362 6층<br>
							(온의동 513-7)<br>
							<abbr title="Phone">p:</abbr> (033) 255-1278
						</address>
          </div>
        </div>
      </div>
    </div>
    <div class="verybottom">
      <div class="container">
        <div class="row">
          <div class="span6">
            <p>
              &copy; Groophy - All right reserved
            </p>
          </div>
          <div class="span6">
            <div class="credits">
              <!--
                All the links in the footer should remain intact.
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Serenity
              -->
              Designed by <a href="/Groophy/">Groophy</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>

<!-- 
<spring:url value="/resources/assets/js/jquery.min.js" var="minjs" />
<spring:url value="/resources/assets/js/jquery.easing.js" var="easingjs" />
<spring:url value="/resources/assets/js/google-code-prettify/prettify.js" var="prettifyjs" />
<spring:url value="/resources/assets/js/modernizr.js" var="modernizrjs" />
<spring:url value="/resources/assets/js/bootstrap.js" var="bootstrapjs" />
<spring:url value="/resources/assets/js/jquery.elastislide.js" var="elastislidejs" />
<spring:url value="/resources/assets/js/sequence/sequence.jquery-min.js" var="jqueryminjs" />
<spring:url value="/resources/assets/js/sequence/setting.js" var="settingjsjs" />
<spring:url value="/resources/assets/js/jquery.prettyPhoto.js" var="prettyPhotojs" />
<spring:url value="/resources/assets/js/application.js" var="applicationjs" />
<spring:url value="/resources/assets/js/jquery.flexslider.js" var="flexsliderjs" />
<spring:url value="/resources/assets/js/hover/jquery-hover-effect.js" var="hover-effectjs" />
<spring:url value="/resources/assets/js/hover/setting.js" var="hover-settingjs" />
<spring:url value="/resources/assets/js/custom.js" var="customjs" />
 -->
 
  <!-- JavaScript Library Files -->
  <script src="${jsPath}/jquery.min.js"></script>
  <script src="${jsPath}/jquery.easing.js"></script>
  <script src="${jsPath}/google-code-prettify/prettify.js"></script>
  <script src="${jsPath}/modernizr.js"></script>
  <script src="${jsPath}/bootstrap.js"></script>
  <script src="${jsPath}/jquery.elastislide.js"></script>
  <script src="${jsPath}/sequence/sequence.jquery-min.js"></script>
  <script src="${jsPath}/sequence/setting.js"></script>
  <script src="${jsPath}/jquery.prettyPhoto.js"></script>
  <script src="${jsPath}/application.js"></script>
  <script src="${jsPath}/jquery.flexslider.js"></script>
  <script src="${jsPath}/hover/jquery-hover-effect.js"></script>
  <script src="${jsPath}/hover/setting.js"></script>
  
  
  <!-- Template Custom JavaScript File -->
  <script src="${jsPath}/custom.js"></script>


</body>

</html>