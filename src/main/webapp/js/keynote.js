$(function(){
	$("#customized-buttonpane").keyup(function(){
		var num=9993-$("#customized-buttonpane").text().length;
		$(".textnum").html("当前已输入"+$("#customized-buttonpane").text().length+"个字符,您还可以输入"+num+"个字符")
	});
})