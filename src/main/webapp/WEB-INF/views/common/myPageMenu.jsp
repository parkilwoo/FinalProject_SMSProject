<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Insert title here</title>
</head>
<body>

	<ul class="nav nav-pills" style="width: 60%; margin: auto;">
		<li><button type="button" id="payBtn"  class="btn btn-default">충전</button></li>
		<li><a href="myPageSendMessage.do">쪽지 함</a></li>
		<li><a href="myPageInfo.do">개인정보 수정</a></li>
		<li><a href="myPageExchangePage.do">환전신청/여부</a>
		<li><a href="myPageLike.do">내 좋아요</a></li>
		<li><a href="myPageBBS.do">내 작성 게시물</a></li>
		<li><a href="myPageBet.do">내 배팅 목록</a></li>
		<li><a href="myPagePayInfo.do">내 충전 내역</a>
	</ul>

	<div style="display: none;" id=payDiv>
			<button type="button" onclick="pay5000();" class="btn btn-default">5000원충전</button>
			<button type="button" onclick="pay10000();" class="btn btn-default">10000원충전</button>
			<button type="button" onclick="pay50000();" class="btn btn-default">50000원충전</button>
	</div>

<script type="text/javascript">
	$(function () {
		
		$("#payBtn").click(function () {
			$("#payDiv").toggle();
		});
	})
	
	
	function pay5000() {
		{
			window.open("/mypage/payMoney.do?money=5000", "payMoney", "width=950, height=700,left=20%, top=20%");
		}
	}
	
	function pay10000() {
		{
			window.open("/mypage/payMoney.do?money=10000", "payMoney", "width=950, height=700,left=20%, top=20%");
		}
	}
	
	function pay50000() {
		{
			window.open("/mypage/payMoney.do?money=50000", "payMoney", "width=950, height=700,left=20%, top=20%");
		}
	}

</script>
</body>
</html>
