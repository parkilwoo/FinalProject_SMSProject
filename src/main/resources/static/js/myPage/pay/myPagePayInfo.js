// 페이징
function goPage( pageNumber ) {
		
	$("#_pageNumber").val(pageNumber);
	$("#_frmFormSearch").attr("action", "myPagePayInfo.do").submit();
		
}

$(function () {
	$("#RHYMES_banner").click(function () {
		location.href="http://112.169.197.59:18080/event/eventdetail/sms";
	});
});