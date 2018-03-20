$(function(){
//	分类
	$(".video-main > .select > ul:eq(0) > li").click(function(){
		$(this).addClass("current").siblings().removeClass("current");
	})
//全部课程
	$(".video-main >.select > .choose > li").mouseenter(function(){
		var lislength=$(this).children("ol").children("li").length;
		$(this).children("ol").css("height",(lislength*45)+"px");
		$(this).children("p").children("span:eq(1)").css("transform","rotate(-90deg)");
	})
	$(".video-main >.select > .choose > li").mouseleave(function(){
		$(this).children("ol").css({"height":"0"});
		$(this).children("p").children("span:eq(1)").css("transform","rotate(90deg)");
	})
	$("#choosetype > ol > li > span").click(function(){
		var choosen=$(this).html();
		var shown=$(this).parent("li").parent("ol").parent("li").children("p").children("span:eq(0)");
		$(this).html(shown.html());
		shown.html(choosen);
		$(this).parent("li").parent("ol").parent("li").children("ol").css({"height":"0"});
		$(this).parent("li").parent("ol").parent("li").children("p").children("span:eq(1)").css("transform","rotate(90deg)");
	})
	$("#coursetype > ol > li > span").click(function(){
		var shown=$(this).parent("li").parent("ol").parent("li").children("p").children("span:eq(0)");
		shown.html($(this).html());
		$(this).parent("li").parent("ol").parent("li").children("ol").css({"height":"0"});
		$(this).parent("li").parent("ol").parent("li").children("p").children("span:eq(1)").css("transform","rotate(90deg)");
	})
})
