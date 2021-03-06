<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script type="text/javascript">

</script>
<jsp:include page="../home/head.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="../home/menu.jsp"></jsp:include>
	<div style="margin-top: 15%; margin-left: 10%">
		<form action="curriPro.do">
			<table style="width: 80%">
				<tr>
					<th><label>번호</label></th>
					<th><label>학년</label></th>
					<th><label>반</label></th>
					<th><label>제목</label></th>
					<th><label>내용</label></th>
					<th><label>날짜</label></th>
					<th><label>날짜2</label></th>
					<th><label>이름</label></th>
					<th><label>카테고리</label></th>
					<th><label>학기</label></th>
					<th><label>과목</label></th>
					<th><label>결재여부</label></th>
					<th><label>삭제</label></th>
					<th><label>수정</label></th>
				</tr>

				<c:forEach var="vo2" items="${ cu_nowPage }" varStatus="status">
					<c:if test="${ status.index+1 eq param.cu_pageNum }">
						<c:forEach var="vo" items="${ vo2.value }">
							<tr id="cu_form_hidden" name="cu_form_hidden">
								<th>${ vo.cuRnum }</th>
								<th>
								<input type="hidden" name="cuGrade" value="${ vo.cuGrade }"/>
								${ vo.cuGrade }
								</th>
								<th>
								<input type="hidden" name="cuClass" value="${ vo.cuClass }"/>
								${ vo.cuClass }
								</th>
								<th>
								<input type="hidden" name="cuTitle" value="${ vo.cuTitle }"/>
								${ vo.cuTitle }
								</th>
								<th>
								<input type="hidden" name="cuMessage" value="${ vo.cuMessage }"/>
								${ vo.cuMessage }
								</th>
								<th>
								<input type="hidden" name="cuDate" value="${ vo.cuDate }"/>
								${ vo.cuDate }
								</th>
								<th>
								<input type="hidden" name="cuDate2" value="${ vo.cuDate2 }"/>
								${ vo.cuDate2 }
								</th>
								<th>
								<input type="hidden" name="cuName" value="${ vo.cuName }"/>
								${ vo.cuName }
								</th>
								<th>
								<input type="hidden" name="cuCategory" value="${ vo.cuCategory }"/>
								${ vo.cuCategory }
								</th>
								<th>
								<input type="hidden" name="cuBungi" value="${ vo.cuBungi }"/>
								${ vo.cuBungi }
								</th>
								<th>
								<input type="hidden" name="cuSubject" value="${ vo.cuSubject }"/>
								${ vo.cuSubject }
								</th>
								<th>
								<input type="hidden" name="cuSign" value="${ vo.cuSign }"/>
								${ vo.cuSign }
								</th>
								
								<th><input type="button" value="삭제"
									onclick="remove_item('${ vo.cuRnum }')" /></th>
								<th><input type="button" value="수정" onclick="modify()" /></th>
							</tr>
						</c:forEach>
					</c:if>
				</c:forEach>
			</table>

			<div align="center">

				<c:forEach var="cu_page" items="${ cu_pageList }" varStatus="status"
					begin="${ param.page_index_start }" end="${ param.page_index_end }">
					<c:if test="${ cu_page % 5 == 1 && cu_page != 1 }">
						<a href="curriPro.do?page_index_start=${ param.page_index_start - 5 }&page_index_end=${ param.page_index_end - 5 }">
							◀ 이전</a>
					</c:if>
					<a href="curriPro.do?cu_pageNum=${ cu_page }">${ cu_page }</a>
					<%-- <c:set value="${ cu_pageList[status.index] }" var="page" /> --%>
					<c:if test="${ cu_page % 5 == 0 }">
						<a href="curriPro.do?page_index_start=${ param.page_index_start + 5 }&page_index_end=${ param.page_index_end + 5 }&cu_pageNum=${ param.cu_page }">
							다음 ▶ </a>
					</c:if>
				</c:forEach>

			</div>

			<br />

		</form>
		
		<div align="left">
			<input type="button" value="추가"" />
		</div>
		
	</div>

	<div style="margin-top: 15%; margin-left: 10%">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<jsp:include page="../home/footer.jsp"></jsp:include>
	</div>
</body>
</html>