$(function(){
	$("body").prepend("<div id='common-header'></div>");
	$("body").append("<div id='common-footer'></div>");
	$("#common-header").load("./common/co-common-hd.html");
	$("#common-footer").load("./common/common-footer.html");
})

