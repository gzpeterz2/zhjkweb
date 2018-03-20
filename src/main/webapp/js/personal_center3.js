$(function() {
	$(".center3_mian_bdsj_sfbd").one("click",function() {
		$(".center3_mian_bdsj_tc").css("display", "block");
		$(".center3_mian_bdsj_tc_cnt_fs").click(function(){
			var phone=$(".center3_mian_bdsj_tc_cnt_sjh>input").val();
			var yzm=$(".center3_mian_bdsj_tc_cnt_yzm>input").val();
			if((phone&& /^1[34578]\d{9}$/.test(phone)) && (yzm==123456)){
		    	$(".center3_mian_bdsj_tc").css("display", "none");
		    	$(".center3_mian_bdsj_xs").css("display", "none");
		    	$(".center3_mian_bdsj_sfbd").text("已绑定");
		    	$(".center3_mian_bdsj_sfbd").addClass("center3_mian_bdsj_sfbd_color").removeClass("center3_mian_bdsj_sfbd")
			} else{
			    alert("手机号码或验证码错误")
			}
			
		})
	})



	
})