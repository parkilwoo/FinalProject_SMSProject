// 페이징
function goPage( pageNumber ) {
		
	$("#_pageNumber").val(pageNumber);
	$("#_frmFormSearch").attr("action", "myPageTeamAppInfo.do").submit();
}
function teamAppDelete(n, s) {
	var seq = s;
	
	if(confirm(n + "팀의 신청서를 삭제 하시겠습니까?")) {
		console.log("if in");
		location.href="myPageTeamAppDelete.do?seq=" + seq;
	}
}

$(function () {
	$("#RHYMES_banner").click(function () {
		location.href="http://112.169.197.59:18080/event/eventdetail/sms";
	});
});