<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	
	<style type="text/css">
		td, th {
			text-align: left
		}
		#block-img {
			margin-left: 10px;
			cursor: pointer;
		}
	</style>
</head>
<body>
	<input type="hidden" id="seq" value="${seq}">
	<input type="hidden" id="send_id" value="${msgDTO.send_id}">
	<table style="margin: 10px auto;">
		<tr>
			<th>
				�ۼ���
				<c:if test="${empty block}">
					<img src="/image/read.png" alt="���Űź�" id="block-img">
				</c:if>
				
				<c:if test="${not empty block}">
					<img src="/image/blocked.png" alt="���Űź�" id="block-img">
				</c:if>
				<label class="form-control" >${msgDTO.send_id}</label>
			</th>
		</tr>	
		<tr>
			<th>
				�����ð�<label class="form-control">${msgDTO.wdate}</lable>
			</th>
		</tr>
		<tr>
			<th>
				����
				<textarea class="form-control" cols="41" rows="13" readonly="readonly">${msgDTO.content}</textarea>
			</th>
		</tr>
	</table>
	
	<table style= "margin: 10px auto;">
		<tr>
			<td style="text-align: left;">
				<button type="button" id="answerBtn" class="btn btn-default">����</button>
			</td>
			<td style="text-align: left;">
				<button type="button" id="delBtn" class="btn btn-danger">����</button>
			</td>
		</tr>
	</table>
	<script type="text/javascript">
		$(function() {
			
			$("#block-img").click(function () {
				
			});
			
			var seq = $("#seq").val();
			
			$("#delBtn").click(function () {
				location.href="myPageReseiveMessageDelete.do?seq=" + seq
			});
	
			var sendId = $("#send_id").val();
			
			$("#answerBtn").click(function () {
				
				location.href="myPageAnswerMessage.do?send_id=" + sendId;
				
				/* window.open("/mypage/myPageAnswerMessage.do?send_id=" + sendId, "answerMessage", "width=380, height=500,left=35%, top=35%");
				self.close(); */
			});
			$("#block-img").click(function () {
				var send_id = $("#send_id").val();
				$.ajax({
					url : "mypageMessageReceiveStat.do",
					type : "get",
					data : {
						send_id : send_id
					},
					success : function(b) {
						if(b == "Y") {
							alert("���Űź� �߽��ϴ�.");
							$("#block-img").attr("src", "/image/blocked.png");
						} else {
							alert("���Űźθ� �����߽��ϴ�.");
							$("#block-img").attr("src", "/image/read.png");
						}
					},
					error : function() {
						console.log("mypageMessageReceiveStat() ajax ���� In");
					}
				});
			});
			
		});
	</script>
</body>
</html>