<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Insert title here</title>
		<script type="text/javascript" src="/js/myPage/bbsList/myPageLike.js"></script>
		<link rel="stylesheet" href="/css/myPage/bbsList/myPageLike.css">
	</head>
<body>
	<table class="table table-hover table-responsive">
		<col width="20%"><col width="40%"><col width="20%"><col width="20%">
		<tr>
			<th>작성 글 번호</th>
			<th>제목</th>
			<th>게시물 좋아요 수</th>
			<th>작성자</th>
		</tr>
		<c:if test="${empty likeList}">
			<tr>
				<td colspan="4">좋아요 누른 게시물이 없습니다.</td>
			</tr>
		</c:if>
		<c:if test="${not empty likeList}">
			<c:forEach items="${likeList}" var="like" varStatus="vs">
				<tr class="detail" seq="${like.seq}">
					<td>
						${vs.count}
					</td>
					<td>
						${like.title}
					</td>
					<td>
						${like.like_count}
					</td>
					<td>
						${like.id}
					</td>
				</tr>	
			</c:forEach>
		</c:if>
	</table>
	
	<br>
	
	<div>
		<jsp:include page="/WEB-INF/views/common/paging.jsp" flush="false">
			<jsp:param name="pageNumber" value="${pageNumber }" />
			<jsp:param name="totalRecordCount" value="${totalRecordCount }" />
			<jsp:param name="pageCountPerScreen" value="${pageCountPerScreen }" />
			<jsp:param name="recordCountPerPage" value="${recordCountPerPage }" />	
		</jsp:include>
	</div>

	<br><br>	
	
	<form id="_frmFormSearch" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="hidden" value="${s_category}" id="category">
		<table class="search-table" style="width: 33%; margin: auto;">
			<col width="30%"><col width="50%"><col width="25%">
			<tr>
				<td style="padding-left: 5px">
					<select id="_s_category" name="s_category" class="form-control">
						<option value="" selected="selected">선택</option>
						<option value="title">제목</option>
						<option value="contents">내용</option>
						<option value="writer">작성자</option>
					</select>
				<td style="padding-left: 5px">
					<input type="text" class="form-control" id="_s_keyword" name="s_keyword" value="${(empty s_keyword)?'':s_keyword}">
				</td>
				<td style="padding-left: 5px">
					<span class="button blue">
						<button type="button" id="_btnSearch"  class="btn btn-default">검색</button>
					</span>
				</td>			
			</tr>
		</table>
		
		<input type="hidden" name="pageNumber" id="_pageNumber" value="${(empty pageNumber)?0:pageNumber }">
		<input type="hidden" name="recordCountPerPage" id="_recordCountPerPage" value="${(empty recordCountPerPage)?0:recordCountPerPage }">
		<input type="hidden" name="id" value="${id}">
	</form>
	
	<div class="container-banner">
		<img src="/image/RHYMES_BANNER.gif" width="180px" height="250px" id="RHYMES_banner">
	</div>
	
</body>

</html>