$(function(){
	$(".tab_one").click(function(){
		$(this).addClass("bot_line");
		$(".tab_two").removeClass("bot_line");
		$(".k_details").css("display","block");
		$(".k_catalogue").css("display","none");
	})
	
	$(".tab_two").click(function(){
		$(this).addClass("bot_line");
		$(".tab_one").removeClass("bot_line");
		$(".k_details").css("display","none");
		$(".k_catalogue").css("display","block");
	})
})