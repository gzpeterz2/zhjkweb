$(function(){
	var pags=["personal_center1.html","","personal_center2.html","personal_center3.html"]
	$(".cnt_right").load(pags[0]);
	
	$(".tab_left p").click(function(){
		$(this).addClass("text_color").siblings().removeClass("text_color");
		$(".cnt_right").load(pags[$(this).index()]);
	})
})