<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../../home/head.jsp"></jsp:include>
</head>
<body>
<!-- 전체 구성 -->
	<div style="height:700px; box-shadow: 0px 10px 8px 0px rgba(0, 0, 0, 0.25);"> <!-- body에 해당 -->
	<!-- 게시판 전체 상자 -->
	<div>
	<jsp:include page="../../home/menu.jsp"></jsp:include>
	</div>
	
	<!-- 전체 상자 div-->
	<div class="main"><!-- style="margin-top:2%;"	--> 
	
	<!-- 사이드바 -->
	<div class="Left_bar"style="margin-left: 3%; margin-right: 8%; margin-top:5%; float:left; height:500px;" >
	<p class="shcoolinfo" id="schoolinfo_bar" ><font face="Bookman Old Style" size="5" color="#00c4ef"><b>출석부ClassMenu</b></font></p>
		<ul class="side_bar" style="list-style:none; margin-left:-20px;" >
       		<li class="side_li"><a href="${pageContext.request.contextPath}/attendance/attendanceBasic.do"><font face="휴먼엽서체" size="3" color="black">등/하교</font></a></li>
       		<se:authorize ifAnyGranted="Role_Teacher, Role_Admin">
			<li class="side_li"><a href="${pageContext.request.contextPath}/attendance/classGrade.do"><font face="휴먼엽서체" size="3" color="black">출석부 관리</font></a></li>
			</se:authorize>
      	</ul>
	</div>
	<div style="margin-top: 8%; margin-left: 10%">
	<div class="board_header"style="margin-left: 10%; width: 80%; height:150px;	
				padding-left:3%;"> 
			<div style="float: left;"><font size="28px"><br><strong>출석부 관리</strong> </font></div>	
			
			<div style="float: left; ">
				<img name="img_body1" src="/resources//img/board/studentboard/b_1.gif" class="board_img" 
				style="height: auto; width:130px; margin-top:15%; margin-left:30%; ">  <!-- border-radius:0.81rem; box-shadow: 0px 2px 8px 0px rgba(0,0,0,.25); -->
			</div>
			
	s</div>
		<hr>
	<table id="schoolInfo">
		<div style="margin-top: 15%; margin-left: 10%">
			<ul>
				<li><a href="attendance.do?atGrade=1">1학년</a></li>
				<li><a href="attendance.do?atGrade=2">2학년</a></li>
				<li><a href="attendance.do?atGrade=3">3학년</a></li>
				<li><a href="attendance.do?atGrade=4">4학년</a></li>
				<li><a href="attendance.do?atGrade=5">5학년</a></li>
				<li><a href="attendance.do?atGrade=6">6학년</a></li>
			</ul>
		</div>
	</table>
	</div>
	</div>
	</div>
	<div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<jsp:include page="../../home/footer.jsp"></jsp:include>
	</div>
</body>
</html>