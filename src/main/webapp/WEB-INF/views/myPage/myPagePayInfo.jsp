<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<script type="text/javascript" src="/js/myPage/pay/myPagePayInfo.js"></script>
	<link rel="stylesheet" href="/css/myPage/pay/myPagePayInfo.css">
</head>

<body>
	<table class="table table-hover table-responsive">
		<tr>
			<th>������ȣ</th>
			<th>�ݾ�</th>
			<th>�ð�</th>
		</tr>
		<c:if test="${empty profitList}">
			<tr>
				<td colspan="3" align="center">���� ������ �����ϴ�.</td>
			</tr>
		</c:if>
		<c:if test="${not empty profitList}">
			<c:forEach items="${profitList}" var="payInfo">
				<tr>
					<td>
						${payInfo.seq}
					</td>
					<td>
						${payInfo.profit_money}��
					</td>
					<td>
						${payInfo.pdate}
					</td>
				</tr>	
			</c:forEach>
		</c:if>
	</table>
	
	<form id="_frmFormSearch" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="hidden" name="pageNumber" id="_pageNumber" value="${(empty pageNumber)?0:pageNumber }">
		<input type="hidden" name="recordCountPerPage" id="_recordCountPerPage" value="${(empty recordCountPerPage)?0:recordCountPerPage }">
		<input type="hidden" name="id" value="${id}">
	</form>
	
	<div>
		<jsp:include page="/WEB-INF/views/common/paging.jsp" flush="false">
			<jsp:param name="pageNumber" value="${pageNumber }" />
			<jsp:param name="totalRecordCount" value="${totalRecordCount }" />
			<jsp:param name="pageCountPerScreen" value="${pageCountPerScreen }" />
			<jsp:param name="recordCountPerPage" value="${recordCountPerPage }" />	
		</jsp:include>
	</div>
	
	<div class="container-banner">
		<img src="/image/RHYMES_BANNER.gif" width="180px" height="250px" id="RHYMES_banner">
	</div>
	
</body>
</html>