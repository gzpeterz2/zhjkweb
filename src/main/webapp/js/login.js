$(function(){
	$(".tab>span").click(function(){
		$(this).removeClass("bj_color").siblings().addClass("bj_color");
			$(".user_name").removeClass("border-color1");
			$(".user_name>span").removeClass("border-color1");
			$(".user_password").removeClass("border-color1");
			$(".user_password>span").removeClass("border-color1");
			$(".user_name").removeClass("border-color2");
			$(".user_name>span").removeClass("border-color2");
			$(".user_password").removeClass("border-color2");
			$(".user_password>span").removeClass("border-color2");
			$(".user_name>input").val("");
			$(".user_password>input").val("");
		if($(this).index()==1){
			$(".zhdl").css("display","none");			
			$(".sjkjdl").css("display","block");
			$(".mian_content_cnt").css("height","438px");
		}else{
			$(".zhdl").css("display","block");
			$(".sjkjdl").css("display","none");
			$(".mian_content_cnt").css("height","410px");
		}
	})
	var username="admin";//正确的用户名
	var userpassword=123456;//正确的密码
	$(".user_bnt_login").click(function(){
		
		if($(".user_name>input").val()==username && $(".user_password>input").val()==userpassword){
			$(".user_name").addClass("border-color1");
			$(".user_name>span").addClass("border-color1");
			$(".user_password").addClass("border-color1");
			$(".user_password>span").addClass("border-color1");
		}else if($(".user_name>input").val() != username && $(".user_password>input").val()==userpassword){
			$(".user_name").addClass("border-color2");
			$(".user_name>span").addClass("border-color2");
			$(".user_password").addClass("border-color1");
			$(".user_password>span").addClass("border-color1");
			$(".tishi").css("display","block")
			var timer=setInterval(function(){
				$(".tishi").css("display","none")
			},3000);
		}else if($(".user_name>input").val() == username && $(".user_password>input").val() != userpassword){
			$(".user_name").addClass("border-color1");
			$(".user_name>span").addClass("border-color1");
			$(".user_password").addClass("border-color2");
			$(".user_password>span").addClass("border-color2");
			$(".tishi").css("display","block")
			var timer=setInterval(function(){
				$(".tishi").css("display","none")
			},3000);
		}else{
			$(".user_name").addClass("border-color2");
			$(".user_name>span").addClass("border-color2");
			$(".user_password").addClass("border-color2");
			$(".user_password>span").addClass("border-color2");
			$(".tishi").css("display","block")
			var timer=setInterval(function(){
				$(".tishi").css("display","none")
			},3000);
		}
		
		
		
	});
})