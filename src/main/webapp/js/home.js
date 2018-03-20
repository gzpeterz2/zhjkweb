$(function(){
	var tr_num=0;
	var timer=setInterval(function(){
		$(".mian .growth .growth_cnt .list table tr:nth-child(2n):odd").css("background","#f2f2fa");
		$(".mian .growth .growth_cnt .list table tr:nth-child(2n):even").css("background","#e6ebf6");
		$(".job_list").animate({top:10+"px"},1000,function(){		
			tr_num++;
	
			$(".job_list").append($(".job_list tr").eq(0));
			$(".job_list").css("top","60px");
			
		})
		
		
		if(tr_num%2==0){
			for(var k=0;k<$(".job_list tr").length;k++){
				if(k%2==0){
					$(".job_list tr").eq(k).css("background","#f2f2fa");
				}else{
					$(".job_list tr").eq(k).css("background","#e6ebf6");
				}
			}
		}else{
			for(var k=0;k<$(".job_list tr").length;k++){
				if(k%2==0){
					$(".job_list tr").eq(k).css("background","#e6ebf6");
				}else{
					$(".job_list tr").eq(k).css("background","#f2f2fa");
				}
			}
		}
		
	},4000)
	
	$(window).scroll(function(){
		var scrolltop=$(window).scrollTop();
		if(scrolltop>=3000){
			$(".bat_cnt>.title").addClass("dh_animation");
			$(".bat_cnt>.titles").addClass("dh_animation")
		}
		if(scrolltop>=5000){
			$(".security_cnt>.title").css("opacity","1");
			$(".security_cnt>.titles").css("opacity","1");
			$(".security_cnt>.title").addClass("dh_animation2")
			$(".security_cnt>.titles").addClass("dh_animation3")
		}
		if (scrolltop>=5400) {
			$(".security_img>img").css("opacity","1");
			$(".security_img>.r1").addClass("dh_left1");
			$(".security_img>.r2").addClass("dh_left2");
			$(".security_img>.r3").addClass("dh_left3");
			$(".security_img>.r4").addClass("dh_left4");
			$(".security_img>.r5").addClass("dh_left5");
			$(".security_img>.y1").addClass("dh_right1");
			$(".security_img>.y2").addClass("dh_right2");
			$(".security_img>.y3").addClass("dh_right3");
			$(".security_img>.y4").addClass("dh_right4");
			$(".security_img>.y5").addClass("dh_right5");			
		}
	});
	
	var index=0;
	var timer=null;
	
	$(".next").click(function(){
		index++;
		index=index>$(".banner_items>li").length-1?0:index;
		$(".banner_items>li").eq(index).addClass("xianshi").siblings().removeClass("xianshi");
		$(".banner_lists>li").eq(index).addClass("bg_color").siblings().removeClass("bg_color");
	})
	$(".prev").click(function(){
		index--;
		index=index<0?$(".banner_items>li").length-1:index;
		$(".banner_items>li").eq(index).addClass("xianshi").siblings().removeClass("xianshi");
		$(".banner_lists>li").eq(index).addClass("bg_color").siblings().removeClass("bg_color");
	})
	
	for(var j=0;j<$(".banner_items>li").length;j++){
		$(".banner_items>li").index(j);
	}
	
	$(".banner_lists>li").click(function(){
		$(".banner_items>li").eq($(this).index()).addClass("xianshi").siblings().removeClass("xianshi");
		$(this).addClass("bg_color").siblings().removeClass("bg_color");
	})
	
//	timer=setInterval(function(){
//		$(".next").click();
//	},5000);
	
	$(".video-banner").hover(function(){
		clearInterval(timer);
	},function(){
		timer=setInterval(function(){
			$(".next").click();
		},5000);
	});
	
//	var index=0;
//	var itemslen=$(".banner_items>li").length;
//	var timer;
//	timer=setInterval(function(){
//		$(".next").click();
//	},3000);
//	$(".next").click(function(){
//		index++;
//		if (index >= itemslen) {
//			index=0;
//		}
//		$(".banner_items>li").eq(index).addClass("xianshi").siblings().removeClass("xianshi");
//		$(".banner_lists>li").eq(index).addClass("bg_color").siblings().removeClass("bg_color");
//		
//	});
//	$(".prev").click(function(){
//		index--;
//		if(index < 0){
//			index=itemslen-1;
//		}
//		$(".banner_items>li").eq(index).addClass("xianshi").siblings().removeClass("xianshi");
//		$(".banner_lists>li").eq(index).addClass("bg_color").siblings().removeClass("bg_color");
//	})
//	
//	
//		for (var i=0;i<=itemslen;i++) {
//			$(".banner_lists>li").eq(i).click(function(){
//				index=i;
//				$(".banner_items>li").eq(index).addClass("xianshi").siblings().removeClass("xianshi");
//				$(".banner_lists>li").eq(index).addClass("bg_color").siblings().removeClass("bg_color");
//			})
//		}
//	
//	$(".video-banner").hover(function(){
//		clearInterval(timer);
//	},function(){
//		timer=setInterval(function(){
//			$(".next").click();
//		},3000);
//	});
//		
	
})