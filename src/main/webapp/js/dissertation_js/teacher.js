$(function() {
		var liw = $(".tm_items li").outerWidth(true);
		var len = $(".tm_items li").length;
		$(".tm_items").css("width", liw * len + "px");
		var timer;
		timer = setInterval(function() {
			lb();
		}, 3000);

		$(".tm_left").click(function() {
				$(".tm_items").stop().animate({
				marginLeft: 0 + "px"
			}, 500, function() {
                $(".tm_items").prepend($(".tm_items li").eq(len-1))
				$(".tm_items").css("marginLeft", -liw+"px");
			});
			
		})

		$(".tm_right").click(function() {
			lb();
		})

		$(".tm_banner").hover(function() {
			clearInterval(timer)
		}, function() {
			timer = setInterval(function() {
				lb();
			}, 3000);
		})

		function lb() {
			$(".tm_items").stop().animate({
				marginLeft: -liw + "px"
			}, 500, function() {
				$(".tm_items li").eq(0).appendTo($(".tm_items"));
				$(".tm_items").css("marginLeft", "0px");
			});
		}
		
		$(window).scroll(function() {
//			console.log($(window).scrollTop());
			if($(window).scrollTop() >= 200) {
				$(".et_content>h1>img").animate({"opacity":"1","right":"70px"},1000);
				$(".et_content>p>img").animate({"opacity":"1","left":"100px"},1800);

			}
			if($(window).scrollTop() >= 1200) {
				$(".sy_title>img").animate({"opacity":"1","top":"0px"},2000);
				
			}
			if($(window).scrollTop() >= 1600){
				$(".sy_itme1").animate({"opacity":"1","left":"1"},600);
				$(".sy_itme3").animate({"opacity":"1","left":"1"},1300);
				$(".sy_itme5").animate({"opacity":"1","left":"1"},1900);
				$(".sy_itme2").animate({"opacity":"1","right":"1"},900);
				$(".sy_itme4").animate({"opacity":"1","right":"1"},1600,function(){
					
					$(".sy_itme>img").animate({"opacity":"1"},700);
				});
				$(".sy_itme6").animate({"opacity":"1","right":"1"},2200);
			}
		})
	})