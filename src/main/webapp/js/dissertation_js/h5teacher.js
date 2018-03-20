$(function(){
	$(".banner_left").stop().animate({"opacity":1,"left":"120px"},1000);
	$(".banner_right").stop().animate({"opacity":1,"width":"512px","height":"237px","top":"110px","right":"150px"},1000);
	$(window).scroll(function(){
		var scrolltop=$(window).scrollTop();
		if(scrolltop>=600){
			$(".pt_content>.pt_box1>img").stop().animate({"opacity":1,"width":"290px","height":"290px","top":"290px","left":"453px"},1500);
			$(".pt_content>.pt_box1>img").css({"transform":"rotate(1440deg)"});
			$(".ptb_one").stop().animate({"opacity":1,"left":"43px"},1000,function(){
				$(".ptb_two").stop().animate({"opacity":1,"left":"43px"},800,function(){
					$(".ptb_three").stop().animate({"opacity":1,"left":"43px"},600);
				});
			});
			
			
			$(".ptb_six").stop().animate({"opacity":1,"right":"43px"},1000,function(){
				$(".ptb_five").stop().animate({"opacity":1,"right":"43px"},800,function(){
					$(".ptb_four").stop().animate({"opacity":1,"right":"43px"},600);
				});
				
			});
		}
		
	});
	$(".sc_one").click(function(){
		$(this).addClass("sc_choosen").siblings("div").removeClass("sc_choosen");
		$(".sc_content").css("background","url(img/dissertation_img/h5_topic/22.png) no-repeat 0 0/100% 100%")
	});
	
	$(".sc_two").click(function(){
		$(this).addClass("sc_choosen").siblings("div").removeClass("sc_choosen");
		$(".sc_content").css("background","url(img/dissertation_img/h5_topic/21.png)no-repeat 0 0/100% 100%")
	});
	
	$(".sc_three").click(function(){
		$(this).addClass("sc_choosen").siblings("div").removeClass("sc_choosen");
		$(".sc_content").css("background","url(img/dissertation_img/h5_topic/20.png) no-repeat 0 0/100% 100%")
	});
	
	$(".sc_four").click(function(){
		$(this).addClass("sc_choosen").siblings("div").removeClass("sc_choosen");
		$(".sc_content").css("background","url(img/dissertation_img/h5_topic/组19.png) no-repeat 0 0/100% 100%")
	});

})