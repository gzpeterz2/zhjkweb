$(function(){
	$("body").prepend("<div id='common-header'></div>");
	$("body").append("<div id='common-footer'></div>");
	$("#common-header").load("./common/co-common-hd.jsp");
	$("#common-footer").load("./common/common-footer.html");
})

