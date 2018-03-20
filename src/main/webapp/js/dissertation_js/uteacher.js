$(function() {
	var lw = $(".tc_item li").outerWidth(true);
	var len = $(".tc_item li").length;
	var timer;
	$(".tc_item").css("width", lw * len + "px")
	timer = setInterval(function() {
		$(".tc_item").animate({
			marginLeft: -lw + "px"
		}, 2000, function() {
			$(".tc_item li").eq(0).appendTo($(".tc_item"));
			$(".tc_item").css("marginLeft", "0px");
		});
	}, 3000);

	$(".tc_item").hover(function() {
		clearInterval(timer)
	}, function() {
		timer = setInterval(function() {
			$(".tc_item").animate({
				marginLeft: -lw + "px"
			}, 2000, function() {
				$(".tc_item li").eq(0).appendTo($(".tc_item"));
				$(".tc_item").css("marginLeft", "0px");
			});
		}, 3000);
	})

	if($(window).scrollTop() >= 0 && $(window).scrollTop() < 900) {
		$(".banner").fadeIn(1500);
		$(".definition").fadeIn(1500);
	}
	$(window).scroll(function() {
//		console.log($(window).scrollTop());
		if($(window).scrollTop() >= 0 && $(window).scrollTop() < 900) {
			$(".banner").fadeIn(1500);
			$(".definition").fadeIn(1500);
		}
		if($(window).scrollTop()>=1900){
			$(".sy_content>.middle").animate({"opacity":"1","top":"40px"},1000,function(){
				$(".sy_content>.left").animate({"opacity":"1","left":"0px"},200);
				$(".sy_content>.right").animate({"opacity":"1","right":"0px"},200);
			});
			$(".sy_content_text>img").animate({"opacity":"1","top":"105px","left":"455px","width":"294px","height":"381px"},700,function(){
				$(".sy_one").animate({"opacity":"1","left":"0"},700);
				$(".sy_two").animate({"opacity":"1","right":"0"},700);
				$(".sy_three").animate({"opacity":"1","left":"0"},1400);
				$(".sy_four").animate({"opacity":"1","right":"0"},1400);
			});
		}
		if($(window).scrollTop()>=2700){
			$(".say_content>img").animate({"opacity":"1","left":"0px"},1000);
		}
		if($(window).scrollTop()>=4100){
			$(".cm_content>img").animate({"opacity":"1","left":"0px","top":"-60px","width":"1200px","height":"255px"},1000);
		}
		if($(window).scrollTop()>=4300){
			$(".cm_bg1").animate({"opacity":"1","left":"0px"},1100);
			$(".cm_bg2").animate({"opacity":"1","left":"245px"},900);
			$(".cm_bg3").animate({"opacity":"1","left":"490px"},700);
			$(".cm_bg4").animate({"opacity":"1","left":"735px"},500);
			$(".cm_bg5").animate({"opacity":"1","right":"0"},300);
		}
		if ($(window).scrollTop()>=500 && $(window).scrollTop()<2510) {
			$(".fd_content").fadeIn(1500);
		}
	});

})