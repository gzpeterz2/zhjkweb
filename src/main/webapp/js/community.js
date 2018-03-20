$(function(){
	var data=new Date();
	var year=data.getFullYear();
	var month=data.getMonth()+1;
	var day=data.getDate();
	var week=data.getDay();
	if (week==1) {
		week="星期一";
	} else if(week==2){
		week="星期二";
	}else if(week==3){
		week="星期三";
	}else if(week==4){
		week="星期四";
	}else if(week==5){
		week="星期五";
	}else if(week==6){
		week="星期六";
	}else if(week==7){
		week="星期日";
	}
	$(".years").html(year+"年"+month+"月");
	$(".day").html(day);
	$(".week").html(week);
	
	$(".c_title>span").click(function(){
		$(this).addClass("b_line").siblings().removeClass("b_line");
	})
})