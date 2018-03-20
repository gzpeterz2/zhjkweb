$(function(){
	$(".common-header >.nav > ul > li").mouseenter(function(){
		var lislength=$(this).children("ol").children("li").length;
		$(this).children("ol").css("height",(lislength*36+22)+"px");
	})
	$(".common-header >.nav > ul > li").mouseleave(function(){
		$(this).children("ol").css({"height":"0"});
	})
	$("#co-hd-search").click(function(){
		$(".common-header > .blocker").animate({"height":"100%"},10,function(){
			$(this).children(".search").animate({"height":"60px","padding-top":"21px"},300)
		});
	})
	$(".common-header > .blocker > .search > .close").click(function(){
		$(".common-header > .blocker > .search").animate({"height":"0px","padding-top":"0px"},300,function(){
			$(this).parent().animate({"height":"0"},10)
		});
	})
	$("#common-login").mouseenter(function(){
		$(this).children().css({"background":"#ffffff","border":"1px solid #e6e6e6","margin-top":"-1px"}).children("li:gt(0)").css("height","40px").siblings("li:eq(0)").children("span").css({"color":"#245fce"}).siblings("#arrow-right").attr("src","img/common/图标_右箭头.png")
	})
	$("#common-login").mouseleave(function(){
		$(this).children().css({"background":"transparent","border":"0px solid #e6e6e6"}).children("li:gt(0)").css("height","0px").siblings("li:eq(0)").children("span").css({"color":"#f3f3f3"}).siblings("#arrow-right").attr("src","img/common/图标_右箭头 - w.png")
	})
	$("#common-login ul li").mouseenter(function(){
		$(this).css("background","#edeff0")
	})
	$("#common-login ul li").mouseleave(function(){
		$(this).css("background","transparent")
	})
})

