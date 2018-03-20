$(function(){
	$(".center1_mian_tab>p").click(function(){
		$(this).addClass("bottom_line").siblings().removeClass("bottom_line");
		if($(".center1_mian_tabs>div").eq($(this).index()).find("ul>li").length==0){
			$(".center1_mian_tabs>div").last("div").addClass("blk").siblings().removeClass("blk");
		}else{
			$(".center1_mian_tabs>div").eq($(this).index()).addClass("blk").siblings().removeClass("blk");
		}
		});
	$(".center1_mian_hf>ul>li>a").click(function(){
		$(".center1_mian_popup").css("display","block");
	})
	$(".center1_mian_popup_div_btn>a").click(function(){
		$(".center1_mian_popup").css("display","none");
	})
	
})