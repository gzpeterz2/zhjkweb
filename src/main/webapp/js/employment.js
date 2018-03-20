$(function() {

	   var prev=$(".prev");
       var next=$(".next");
       var box_li=$(".box-con li");
       var box_ul=$(".box-con ul");

      box_li.eq(0).stop().animate({
      	width: 266,
		height:385 ,
      	left:0,},500);
      box_li.eq(1).stop().animate({
      	width: 298,
		height: 425,
		left: 154
      	
      },500);
      box_li.eq(2).stop().animate({
       width: 364,
		height: 525,
		left: 335,
        
      },500).css("z-index",50);
      box_li.eq(3).stop().animate({
     	width: 298,
		height: 425,		
		left: 560 	
     },500).css("z-index",31);
	  box_li.eq(4).stop().animate({
   		width: 266,
		height:385,
		left: 735},500);
    //初始化位置
    next.click(function(){
  	 box_li=$(".box-con li");
     box_li.eq(0).stop().animate({left:-316},500,function(){
     	box_li.eq(0).css("left",1000).appendTo(box_ul);
     });
     box_li.eq(1).stop().animate({
     	width: 266,
		height:385 ,
		left: 0
    
     },500);
     box_li.eq(2).stop().animate({
     	width: 298,
		height: 425,
		left: 154
      
     
     },500).css("z-index",30);

     box_li.eq(3).stop().animate({
     	width: 364,
		height: 525,
		left: 335
   
    },500).css("z-index",50);
     box_li.eq(4).stop().animate({
     	width: 298,
		height: 425,
		left: 560
     	
     },500).css("z-index",30);
     box_li.eq(5).stop().animate({
     		width: 266,
			height:385,
			left: 735}).css("z-index",20);
    

  });
//向右点击滑动
  prev.click(function(){
  	box_li=$(".box-con li");
  	$(".box-con li:last").prependTo(box_ul).css("left",-320).stop().animate({left:0},500);
     box_li.eq(4).stop().animate({
     	width: 266,
		height:385,
     	left:1000,
     },500);
     box_li.eq(3).stop().animate({
       width: 266,
	   height:385,
	   left: 735 
     },500).css("z-index",20);
     
     box_li.eq(2).stop().animate({
     	width: 298,
		height: 425,
		left: 560
     },500).css("z-index",30);
     box_li.eq(1).stop().animate({
     	width: 364,
		height: 525,
		left: 335
     },500).css("z-index",50);
     box_li.eq(0).stop().animate({
     	width: 298,
		height: 425,
		left: 154
     },500).css("z-index",30);

  });
 
  //向左滑动

	var timer=setInterval(function(){
		next.click();
	},4000)
	
	var tr_num=0;
	var timer2=setInterval(function(){
		tr_num++;
		$(".job_list").animate({top:10+"px"},1000,function(){
			
			$(".job_list").append($(".job_list tr").eq(0));
			
			$(".job_list").css("top","50px");
			
		})
		
		if(tr_num%2==0){
			for(var k=0;k<$(".job_list tr").length;k++){
				if(k%2==0){
					$(".job_list tr").eq(k).css("background","#fefefe");
				}else{
					$(".job_list tr").eq(k).css("background","#e6ebf6");
				}
			}
		}else{
			for(var k=0;k<$(".job_list tr").length;k++){
				if(k%2==0){
					$(".job_list tr").eq(k).css("background","#e6ebf6");
				}else{
					$(".job_list tr").eq(k).css("background","#fefefe");
				}
			}
		}
		
	},4000)		
})
