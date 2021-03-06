<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../home/head.jsp"></jsp:include>
<body>
	<!-- 전체구성 -->
	<div style="height:1100px; box-shadow: 0px 10px 8px 0px rgba(0, 0, 0, 0.25);"> <!-- body에 해당 -->
	
	<!-- 게시판 전체 상자 -->
	<div>
	<jsp:include page="../home/menu.jsp"></jsp:include>
	</div>
	
	<!-- 전체 상자 div-->
	<div class="main"><!-- style="margin-top:2%;"	--> 
	
	<!-- 사이드바 -->
	<div class="Left_bar"style="margin-left: 3%; margin-right: 8%; margin-top:5%; float:left; height:1000px;" >
	<p class="shcoolinfo" id="schoolinfo_bar" ><font face="Bookman Old Style" size="5" color="#00c4ef"> <b>학생마당</b></font></p>
		<ul class="side_bar" style="list-style:none; margin-left:-20px;" >
       		<li class="side_li"><a href="${pageContext.request.contextPath}/studentboard/studentProposalPro.do?s_pageNum=1"><font face="휴먼엽서체" size="3" color="black">건의사항</font></a></li>
       		<li class="side_li"><a href="${pageContext.request.contextPath}/studentboard/schoolViolencePro.do?s_pageNum=1"><font face="휴먼엽서체" size="3" color="black">학교폭력</font></a></li>
       		<li class="side_li"><a href="${pageContext.request.contextPath}/studentboard/familyViolencePro.do?s_pageNum=1"><font face="휴먼엽서체" size="3" color="black">가정폭력</font></a></li>
      	</ul>
	</div>

	<div style=" margin-left: 10%; margin-top: 8%; "><!-- -->
		<div class="board_header"style="margin-left: 10%; width: 80%; height:150px;	
				padding-left:3%;">  
			<!-- <div style="width:40%;"> -->
			<div style="float: left;"><font size="10px"><br><b>가정폭력 상담 게시판</b> </font></div>	
			
			<div style="float: left; ">
				<img name="img_body1" src="/resources//img/board/studentboard/b_7.jpg" class="board_img" 
				style="height: auto; width:130px; margin-top:15%; margin-left:30%; ">  <!-- border-radius:0.81rem; box-shadow: 0px 2px 8px 0px rgba(0,0,0,.25); -->
			</div>
			
		</div>

	</div>
	<div style="margin-left: 10%"><br/>
		<form action="detailFamilyViolence.do">
			<table style="width: 900px" class="table">
				<tr>
					<th><label>번호</label></th>
					<th><label>학년</label></th>
					<th><label>반</label></th>
					<th><label>게시글 제목</label></th>
					<th><label>글 내용</label></th>
					<th><label>작성 날짜</label></th>
					<th><label>작성자</label></th>
					<th><label>소분류</label></th>
					<th><label>조회수</label></th>
					<th><label>삭제</label></th>
					<th></th>
				</tr>

				<c:forEach var="fVo2" items="${ s_nowPage }" varStatus="status">
					<c:if test="${ status.index+1 eq param.s_pageNum }">
						<c:forEach var="fVo" items="${ fVo2.value }">
							<tr id="fv_form_hidden" name="fv_form_hidden">
								<th>${ fVo.fvNum }</th>
								<th><input type="hidden" name="fvGrade" id="fvGrade"
									value="${ fVo.fvGrade }">${ fVo.fvGrade }학년</th>
								<th><input type="hidden" name="fvSchoolClass"
									id="fvSchoolClass" value="${ fVo.fvSchoolClass }">${ fVo.fvSchoolClass }반
								</th>
								<th><input type="hidden" name="fvTitle" id="fvTitle"
									class="fv_form" value="${ fVo.fvTitle }">${ fVo.fvTitle }</th>
								<th><a href="detailFamilyViolence.do?fvNum=${ fVo.fvNum }">
										<input type="hidden" name="fvMessage" id="fvMessage"
										value="${ fVo.fvMessage }" placeholder="내용 입력">${ fVo.fvMessage }
								</a></th>
								<th><input type="hidden" name="fvDate" id="fvDate"
									value="${ fVo.fvDate }" />${ fVo.fvDate }</th>
								<th><input type="hidden" name="fvWriter" id="fvWriter"
									placeholder="이름 입력" value="${ fVo.fvWriter }" /></th>

								<th><input type="hidden" name="fvCategoly" id="fvCategoly"
									value="${ fVo.fvCategoly }"> ${ fVo.fvCategoly }</th>

								<th><input type="hidden" name="fvHit" id="fvHit"
									class="fv_form" value="${ fVo.fvHit }">${ fVo.fvHit }</th>

								<th><a href="deleteFamilyViolence.do?fvNum=${ fVo.fvNum }">
										<input type="button" value="삭제" />
								</a></th>
								<th></th>
							</tr>
						</c:forEach>
					</c:if>
				</c:forEach>
			</table>

			<br />
			<div align="center">

				<c:forEach var="s_page" items="${ s_pageList }" varStatus="status" begin="${ param.page_index_start }" end="${ param.page_index_end }">
					<c:if test="${ s_page % 5 == 1 && s_page != 1 }">
						<a href="familyViolencePro.do?page_index_start=${ param.page_index_start - 5 }&page_index_end=${ param.page_index_end - 5 }">
							◀ 이전</a>
					</c:if>
					<a href="familyViolencePro.do?s_pageNum=${ s_page }">${ s_page }</a>
					<%-- <c:set value="${ s_pageList[status.index] }" var="page" /> --%>
					<c:if test="${ s_page % 5 == 0 }">
						<a href="familyViolencePro.do?page_index_start=${ param.page_index_start + 5 }&page_index_end=${ param.page_index_end + 5 }">
							다음 ▶ </a>
					</c:if>
				</c:forEach>
				
			</div>
				<br />

			<a href="insertFamilyViolenceForm.do"> <input type="button"
				value="추가" /></a>

		</form>
	</div>
	</div>
	</div>
	<div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<jsp:include page="../home/footer.jsp"></jsp:include>
	</div>
</body>
</html>