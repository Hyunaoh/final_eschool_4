<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">




<!-- DatePicker(jQuery UI) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<!-- FullCalendar(jQuery API) -->
<link href='/resources/fullcalendar/fullcalendar.css' rel='stylesheet' />
<link href='/resources/fullcalendar/fullcalendar.print.css' rel='stylesheet' media="print"/>
<script src='/resources/fullcalendar/fullcalendar.js'></script>
<script src='/resources/Example.Modal.js'></script>
<script type="text/javascript">
$(document).ready(function() {

	var dataset = [
		<c:forEach items='${Info}' var='vo'>
		{
			  title: '${vo.title}',
			  content : '${vo.comment}',
			  start: new Date('${vo.start}'),
			  end: new Date('${vo.end}'),
			  allDay: true,

		 },
		</c:forEach>
	]
	  $('#calendar').fullCalendar({
	    
	    header: {
	      left: 'today',
	      center: 'title',
	      right: 'prev,next '
	    },
	    editable: true,

	    // add event name to title attribute on mouseover
	    eventMouseover: function(event, jsEvent, view) {
	      if (view.name !== 'agendaDay') {
	        $(jsEvent.target).attr('title', event.title);
	      }
	    },
	    eventClick:function(calEvent, jsEvent, view){
	   		 
	    	 var start = $.fullCalendar.formatDate(calEvent._start, 'yyyy-MM-dd');
		     var title = calEvent.title;
		     var end = $.fullCalendar.formatDate(calEvent._end, 'yyyy-MM-dd');
		        
		        alert('start: ' + start + '; end: ' + end + '; title: ' + title);
		        
		        location.href="/schedule/detailSchedule.do?title="+title+"&start="+start;
	    },
	  	events: dataset
	  });
	  

		//DatePicker
		$( ".datepicker" ).datepicker({
			dateFormat: 'yy-mm-dd' 
		});	

	});
	
	
</script>
	<jsp:include page="../home/head.jsp"></jsp:include>
</head>
<body>
<!-- 전체구성 -->
<div style="height:1100px; box-shadow: 0px 10px 8px 0px rgba(0, 0, 0, 0.25);"> <!-- body에 해당 -->
	
	<!-- 게시판 전체 상자 -->
	<div>
		<jsp:include page="../home/menu.jsp"></jsp:include>
	</div>
	
	<!-- 전체 상자 div-->
	<div class="main"> <!-- style="margin-top:2%;"-->
	
	<!-- 사이드바 -->
	<div class="Left_bar"style="margin-left: 3%; margin-right: 8%; margin-top:5%; float:left; height:1000px;" >
	<p class="shcoolinfo" id="schoolinfo_bar" ><font face="Bookman Old Style" size="5" color="#00c4ef"><b>Curriculum</b></font></p>
      	<ul class="side_bar" style="list-style:none; margin-left:-20px;" >
 					<li class="side_li"><a href="${pageContext.request.contextPath}/curriculum/signChartPro.do"><font face="휴먼엽서체" size="3" color="black">커리큘럼</font></a></li>                
 						<cl:if test="${ sessionScope.id ne 'principal' and  sessionScope.id ne 'submaster'}">
                	<li class="side_li"><a href="${pageContext.request.contextPath}/curriculum/curriListPro.do?grade=${ sessionScope.grade }&mClass=${ sessionScope.mClass }&level=Role_Teacher"><font face="휴먼엽서체" size="3" color="black">전자결재</font></a></li>
                	</cl:if>
                <cl:if test="${ sessionScope.id eq 'principal' }">
                	<li class="side_li"><a href="${pageContext.request.contextPath}/curriculum/principalListPro.do"><font face="휴먼엽서체" size="3" color="black">전자결재(교장)</font></a></li>
                </cl:if>
                <cl:if test="${ sessionScope.id eq 'submaster' }">
                	<li class="side_li"><a href="${pageContext.request.contextPath}/curriculum/principalListPro.do"><font face="휴먼엽서체" size="3" color="black">전자결재(교감)</font></a></li>
                </cl:if>
                	<li class="side_li"><a href="${pageContext.request.contextPath}/homeworkboard/boardList.do"><font face="휴먼엽서체" size="3" color="black">숙제/준비물</font></a></li>
                	<li class="side_li"><a href="${pageContext.request.contextPath}/schedule/selectAll.do"><font face="휴먼엽서체" size="3" color="black">학사일정</font></a></li>
                	<se:authorize ifAnyGranted="Role_Teacher">
					<li class="side_li"><a href="${pageContext.request.contextPath}/schedule/controllerSchedule.do"><font face="휴먼엽서체" size="3" color="black">학사일정수정</font></a></li>
					</se:authorize> 
              </ul>
	</div>
	<div id="content" style="margin-top: 8%; margin-left: 10%">
		<div class="board_header"style="width: 80%; height:150px; float:left; margin-bottom:3%;	
			padding-left:3%;"> <!-- margin-left: 10%;  -->
			<!-- 본문 시작 -->
			<div style="float: left;"><font size="10px"><br><b>학사일정</b></font></div>
			<div style="float: left; ">
					<img name="img_body1" src="${pageContext.request.contextPath}/resources//img/curriculum/map.jpg" class="board_img" style="height: auto; width:100px; margin-top:15%; margin-left:30%; margin-top:60%; ">
			</div>
		</div>
		<hr>
		<br/>	
  	<div id="calendar" class="col-sm-5" style="float:left;"></div><!-- style="margin: auto;" -->
  	<div class="col-sm-2" style="margin-left: 3%; float:right;"></div>
	
	</div>
	</div>
	</div>
	<div>
		<jsp:include page="../home/footer.jsp"></jsp:include>
	</div>
</body>
</html>