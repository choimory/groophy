<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- <!DOCTYPE html>
<html>
<head> -->
<%@include file="../include/header.jsp"%>
<spring:url value="/resources" var="resources" />

<link href='${resources}/assets/css/fullcalendar.css' rel='stylesheet' />
<link href='${resources}/assets/css/fullcalendar.print.css' rel='stylesheet' media='print' />
  
  
<style>

	body {
		margin-top: auto;
		font-size: 14px;
		font-family: "Helvetica Nueue",Arial,Verdana,sans-serif;
		background-color: #ffffff;
		}
		
	#wrap {
		width: 700px;
		margin-left: 32px;
		}
		
	#external-events {
		float: left;
		width: 150px;
		padding: 0 10px;
		text-align: left;
		}
		
	#external-events h4 {
		font-size: 16px;
		margin-top: 0;
		padding-top: 1em;
		}
		
	.external-event { /* try to mimick the look of a real event */
		margin: 10px 0;
		padding: 2px 4px;
		background: #3366CC;
		color: #fff;
		font-size: .85em;
		cursor: pointer;
		}
		
	#external-events p {
		margin: 1.5em 0;
		font-size: 11px;
		color: #666;
		}
		
	#external-events p input {
		margin: 0;
		vertical-align: middle;
		}

	#calendar {
/* 		float: right; */
        margin: 0 auto;
		width: 900px;
		background-color: #FFFFFF;
		  border-radius: 6px;
        box-shadow: 0 1px 2px #C3C3C3;
		}

</style>
<script src='${resources}/assets/js/jquery-1.10.2.js'></script>
<script src='${resources}/assets/js/jquery-ui.custom.min.js'></script>

<script src='${resources}/assets/js/fullcalendar.js'></script>
<script>

	$(document).ready(function() {
	    var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		/*  className colors
		
		className: default(transparent), important(red), chill(pink), success(green), info(blue)
		
		*/		
		
		  
		/* initialize the external events
		-----------------------------------------------------------------*/
	
		$('#external-events div.external-event').each(function() {
		
			// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
			// it doesn't need to have a start or end
			var eventObject = {
				title: $.trim($(this).text()) // use the element's text as the event title
			};
			
			// store the Event Object in the DOM element so we can get to it later
			$(this).data('eventObject', eventObject);
			
			// make the event draggable using jQuery UI
			$(this).draggable({
				zIndex: 999,
				revert: true,      // will cause the event to go back to its
				revertDuration: 0  //  original position after the drag
			});
			
		});
	
	
		/* initialize the calendar
		-----------------------------------------------------------------*/
		function goDate(){
			var form = document.forms["save"];
			form.submit();
		}
		
		var calendar =  $('#calendar').fullCalendar({
			header: {
				left: 'title',
				center: 'agendaDay,agendaWeek,month',
				right: 'prev,next today'
			},
			editable: true,
			firstDay: 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
			selectable: true,
			defaultView: 'month',
			
			axisFormat: 'h:mm',
			columnFormat: {
                month: 'ddd',    // Mon
                week: 'ddd d', // Mon 7
                day: 'dddd M/d',  // Monday 9/7
                agendaDay: 'dddd d'
            },
            titleFormat: {
                month: 'MMMM yyyy', // September 2009
                week: "MMMM yyyy", // September 2009
                day: 'MMMM yyyy'                  // Tuesday, Sep 8, 2009
            },
			allDaySlot: false,
			selectHelper: true,
			select: function(start, end, allDay) {
				
				var title = prompt('일정 제목을 입력하세요 :');
				
				if (title) {
					document.getElementById('ctitle').value = title;
					document.getElementById('cstartyear').value = start.getFullYear();
					document.getElementById('cstartmonth').value = start.getMonth();
					document.getElementById('cstartdate').value = start.getDate();
					document.getElementById('cstarthour').value = start.getHours();
					document.getElementById('cstartminutes').value = start.getMinutes();
					document.getElementById('cendyear').value = end.getFullYear();
					document.getElementById('cendmonth').value = end.getMonth();
					document.getElementById('cenddate').value = end.getDate();
					document.getElementById('cendhour').value = end.getHours();
					document.getElementById('cendminutes').value = end.getMinutes();
					document.getElementById('callday').value = allDay;
					goDate();
					
					calendar.fullCalendar('renderEvent',
						{
							title: title,
							start: start,
							end: end,
							allDay: allDay
						},
						true // make the event "stick"
					);
				}
				calendar.fullCalendar('unselect');
			},
			droppable: true, // this allows things to be dropped onto the calendar !!!
			drop: function(date, allDay) { // this function is called when something is dropped
			
				// retrieve the dropped element's stored Event Object
				var originalEventObject = $(this).data('eventObject');
				
				// we need to copy it, so that multiple events don't have a reference to the same object
				var copiedEventObject = $.extend({}, originalEventObject);
				
				// assign it the date that was reported
				copiedEventObject.start = date;
				copiedEventObject.allDay = allDay;
				
				// render the event on the calendar
				// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
				$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
				
				// is the "remove after drop" checkbox checked?
				if ($('#drop-remove').is(':checked')) {
					// if so, remove the element from the "Draggable Events" list
					$(this).remove();
				}
				
			},
			
		
	
		
			events: [
				
			
				<c:forEach items="${clist}" var="clist">	
					{
						title: "${clist.ctitle}",
						//start: new Date(2018, 11, 1, 16, 0)
						start: new Date("${clist.cstartyear}", "${clist.cstartmonth}", "${clist.cstartdate}",
								"${clist.cstarthour}","${clist.cstartminutes}"),
						end: new Date("${clist.cendyear}", "${clist.cendmonth}", "${clist.cenddate}",
								"${clist.cendhour}","${clist.cendminutes}"),
						allDay: "${clist.callday}",
						className: 'success'
					},
				</c:forEach>
				
				{
					id: 999,
					title: '정기 모임',
					start: new Date(y, m, 26, 16, 0),
					allDay: false,
					className: 'important'
				}/*,
				{
					id: 999,
					title: 'Repeating Event',
					start: new Date(y, m, d+4, 16, 0),
					allDay: false,
					className: 'info'
				},
				{
					title: 'Meeting',
					start: new Date(y, m, d, 10, 30),
					allDay: false,
					className: 'important'
				},
				{
					title: 'Click for Google',
					start: new Date(y, m, 28),
					end: new Date(y, m, 29),
					url: 'http://google.com/',
					className: 'success'
				}*/
			],			
		});
	});
</script>
<!-- </head>
<body> -->

 <section id="maincontent">
    <div class="container">
      <div class="row">
        <div class="span3">
         <img src="${imgPath}/group_profile/${gPhoto}.jpg" class="img-polaroid" width="260px" style="margin-bottom:35px; margin-left:0px;"> <br>
          <aside>
            
            <div class="widget" align="left">
              <h4>Categories</h4>
              <ul class="cat">
                <li><a href="/groophy/board/list">그룹 게시판</a> 
                <li><a href="/groophy/study/gotocalendar">캘린더</a></li>
                <li><a href="/groophy/study/gotomap">지도</a></li>
                <li><a href="/groophy/study/gotoemail">메일</a></li>
                <li><a href="/groophy/study/gotomemberlist">참여명단</a></li>
              </ul>
            </div>
           
            
          </aside>
          <c:if test="${ leader==1 }">
	    <form action="/groophy/study/gotomanage">
          <button class="btn btn-large btn-block btn-primary" type="submit">그룹관리</button>
          </form>
          
   		 </c:if>
        </div>
        <div class="span9">
          <!-- start article 1 -->
          <article class="blog-post">
            <div class="row">
	            
				<div id='wrap'>
				
				<div id='calendar'></div>
					<form action="savecalendar" method="post" name="save" id="save"> 
						<input type="hidden" id="ctitle" name="ctitle">
						<input type="hidden" id="cstartyear" name="cstartyear">
						<input type="hidden" id="cstartmonth" name="cstartmonth">
						<input type="hidden" id="cstartdate" name="cstartdate">
						<input type="hidden" id="cstarthour" name="cstarthour">
						<input type="hidden" id="cstartminutes" name="cstartminutes">
						<input type="hidden" id="cendyear" name="cendyear">
						<input type="hidden" id="cendmonth" name="cendmonth">
						<input type="hidden" id="cenddate" name="cenddate">
						<input type="hidden" id="cendhour" name="cendhour">
						<input type="hidden" id="cendminutes" name="cendminutes">
						<input type="hidden" id="callday" name="callday">
						
					</form>
					
				<div style='clear:both'></div>
			
	        	</div>
	         </div>
            </div>
          </article>
          <!-- end article 1 -->
         
          
        </div>
      </div>
    </div>
  </section>



</div>

<!-- Footer
 ================================================== -->
  <footer class="footer">
    <div class="container">
      <div class="row">
        <div class="span4">
          <div class="widget">
            <h5>Browse pages</h5>
            <ul class="regular">
              <li><a href="/groophy/search">그룹겁색</a></li>
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
</body>
</html>
