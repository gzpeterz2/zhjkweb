$(function(){
	var pags=["common/personal_center1.jsp","","common/personal_center2.jsp","common/personal_center3.jsp"]
	$(".cnt_right").load(pags[0]);
	
	$(".tab_left p").click(function(){
		$(this).addClass("text_color").siblings().removeClass("text_color");
		$(".cnt_right").load(pags[$(this).index()]);
	})
})